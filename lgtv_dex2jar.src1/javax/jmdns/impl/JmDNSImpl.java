package javax.jmdns.impl;

import java.io.IOException;
import java.io.PrintStream;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceInfo.Fields;
import javax.jmdns.ServiceListener;
import javax.jmdns.ServiceTypeListener;
import javax.jmdns.impl.constants.DNSConstants;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;
import javax.jmdns.impl.constants.DNSState;
import javax.jmdns.impl.tasks.DNSTask;
import javax.jmdns.impl.tasks.RecordReaper;
import javax.jmdns.impl.tasks.Responder;
import javax.jmdns.impl.tasks.resolver.ServiceInfoResolver;
import javax.jmdns.impl.tasks.resolver.ServiceResolver;
import javax.jmdns.impl.tasks.resolver.TypeResolver;
import javax.jmdns.impl.tasks.state.Announcer;
import javax.jmdns.impl.tasks.state.Canceler;
import javax.jmdns.impl.tasks.state.Prober;
import javax.jmdns.impl.tasks.state.Renewer;

public class JmDNSImpl extends JmDNS
  implements DNSStatefulObject
{
  private static final Random _random;
  private static Logger logger = Logger.getLogger(JmDNSImpl.class.getName());
  private DNSCache _cache;
  private volatile boolean _closed = false;
  private volatile InetAddress _group;
  private Thread _incomingListener;
  private final ReentrantLock _ioLock = new ReentrantLock();
  private long _lastThrottleIncrement;
  private final List<DNSListener> _listeners;
  private HostInfo _localHost;
  private final String _name;
  private DNSIncoming _plannedAnswer;
  private final ConcurrentMap<String, ServiceCollector> _serviceCollectors;
  private final ConcurrentMap<String, List<ServiceListener>> _serviceListeners;
  private final ConcurrentMap<String, Set<String>> _serviceTypes;
  private final ConcurrentMap<String, ServiceInfo> _services;
  protected Thread _shutdown;
  private volatile MulticastSocket _socket;
  private final Timer _stateTimer;
  private int _throttle;
  private final Timer _timer;
  private final Set<ServiceTypeListener> _typeListeners;

  static
  {
    _random = new Random();
  }

  public JmDNSImpl(InetAddress paramInetAddress, String paramString)
    throws IOException
  {
    logger.finer("JmDNS instance created");
    this._cache = new DNSCache(100);
    this._listeners = Collections.synchronizedList(new ArrayList());
    this._serviceListeners = new ConcurrentHashMap();
    this._typeListeners = Collections.synchronizedSet(new HashSet());
    this._serviceCollectors = new ConcurrentHashMap();
    this._services = new ConcurrentHashMap(20);
    this._serviceTypes = new ConcurrentHashMap(20);
    this._localHost = HostInfo.newHostInfo(paramInetAddress, this);
    if (paramString != null);
    for (String str = paramString; ; str = this._localHost.getName())
    {
      this._name = str;
      this._timer = new Timer("JmDNS(" + this._name + ").Timer", true);
      this._stateTimer = new Timer("JmDNS(" + this._name + ").State.Timer", false);
      openMulticastSocket(getLocalHost());
      start(getServices().values());
      new RecordReaper(this).start(this._timer);
      return;
    }
  }

  // ERROR //
  private void closeMulticastSocket()
  {
    // Byte code:
    //   0: getstatic 294	javax/jmdns/impl/JmDNSImpl:logger	Ljava/util/logging/Logger;
    //   3: ldc_w 432
    //   6: invokevirtual 318	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield 434	javax/jmdns/impl/JmDNSImpl:_socket	Ljava/net/MulticastSocket;
    //   13: ifnull +48 -> 61
    //   16: aload_0
    //   17: getfield 434	javax/jmdns/impl/JmDNSImpl:_socket	Ljava/net/MulticastSocket;
    //   20: aload_0
    //   21: getfield 436	javax/jmdns/impl/JmDNSImpl:_group	Ljava/net/InetAddress;
    //   24: invokevirtual 442	java/net/MulticastSocket:leaveGroup	(Ljava/net/InetAddress;)V
    //   27: aload_0
    //   28: getfield 434	javax/jmdns/impl/JmDNSImpl:_socket	Ljava/net/MulticastSocket;
    //   31: invokevirtual 445	java/net/MulticastSocket:close	()V
    //   34: aload_0
    //   35: getfield 447	javax/jmdns/impl/JmDNSImpl:_incomingListener	Ljava/lang/Thread;
    //   38: ifnull +13 -> 51
    //   41: aload_0
    //   42: getfield 447	javax/jmdns/impl/JmDNSImpl:_incomingListener	Ljava/lang/Thread;
    //   45: invokevirtual 453	java/lang/Thread:isAlive	()Z
    //   48: ifne +14 -> 62
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 447	javax/jmdns/impl/JmDNSImpl:_incomingListener	Ljava/lang/Thread;
    //   56: aload_0
    //   57: aconst_null
    //   58: putfield 434	javax/jmdns/impl/JmDNSImpl:_socket	Ljava/net/MulticastSocket;
    //   61: return
    //   62: aload_0
    //   63: monitorenter
    //   64: getstatic 294	javax/jmdns/impl/JmDNSImpl:logger	Ljava/util/logging/Logger;
    //   67: ldc_w 455
    //   70: invokevirtual 318	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   73: aload_0
    //   74: ldc2_w 456
    //   77: invokevirtual 463	java/lang/Object:wait	(J)V
    //   80: aload_0
    //   81: monitorexit
    //   82: goto -48 -> 34
    //   85: astore 4
    //   87: aload_0
    //   88: monitorexit
    //   89: aload 4
    //   91: athrow
    //   92: astore_2
    //   93: getstatic 294	javax/jmdns/impl/JmDNSImpl:logger	Ljava/util/logging/Logger;
    //   96: getstatic 469	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   99: ldc_w 471
    //   102: aload_2
    //   103: invokevirtual 475	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   106: goto -50 -> 56
    //   109: astore_3
    //   110: goto -30 -> 80
    //   113: astore_1
    //   114: goto -87 -> 27
    //
    // Exception table:
    //   from	to	target	type
    //   64	80	85	finally
    //   80	89	85	finally
    //   16	27	92	java/lang/Exception
    //   27	56	92	java/lang/Exception
    //   62	64	92	java/lang/Exception
    //   89	92	92	java/lang/Exception
    //   64	80	109	java/lang/InterruptedException
    //   16	27	113	java/net/SocketException
  }

  private void disposeServiceCollectors()
  {
    logger.finer("disposeServiceCollectors()");
    Iterator localIterator = this._serviceCollectors.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      ServiceCollector localServiceCollector = (ServiceCollector)this._serviceCollectors.get(str);
      if (localServiceCollector != null)
        removeServiceListener(str, localServiceCollector);
      this._serviceCollectors.remove(str, localServiceCollector);
    }
  }

  public static Random getRandom()
  {
    return _random;
  }

  private boolean makeServiceNameUnique(ServiceInfoImpl paramServiceInfoImpl)
  {
    String str = paramServiceInfoImpl.getQualifiedName();
    long l = System.currentTimeMillis();
    int i;
    Iterator localIterator;
    while (true)
    {
      i = 0;
      Collection localCollection = getCache().getDNSEntryList(paramServiceInfoImpl.getQualifiedName().toLowerCase());
      if (localCollection != null)
      {
        localIterator = localCollection.iterator();
        if (localIterator.hasNext())
          break;
      }
      else
      {
        label52: ServiceInfo localServiceInfo = (ServiceInfo)this._services.get(paramServiceInfoImpl.getQualifiedName().toLowerCase());
        if ((localServiceInfo != null) && (localServiceInfo != paramServiceInfoImpl))
        {
          paramServiceInfoImpl.setName(incrementName(paramServiceInfoImpl.getName()));
          i = 1;
        }
        if (i != 0)
          continue;
        if (!str.equals(paramServiceInfoImpl.getQualifiedName()))
          break label289;
      }
    }
    label289: for (int j = 0; ; j = 1)
    {
      return j;
      DNSEntry localDNSEntry = (DNSEntry)localIterator.next();
      if ((!DNSRecordType.TYPE_SRV.equals(localDNSEntry.getRecordType())) || (localDNSEntry.isExpired(l)))
        break;
      DNSRecord.Service localService = (DNSRecord.Service)localDNSEntry;
      if ((localService.getPort() == paramServiceInfoImpl.getPort()) && (localService.getServer().equals(this._localHost.getName())))
        break;
      logger.finer("makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:" + localDNSEntry + " s.server=" + localService.getServer() + " " + this._localHost.getName() + " equals:" + localService.getServer().equals(this._localHost.getName()));
      paramServiceInfoImpl.setName(incrementName(paramServiceInfoImpl.getName()));
      i = 1;
      break label52;
    }
  }

  private void openMulticastSocket(HostInfo paramHostInfo)
    throws IOException
  {
    if (this._group == null)
      this._group = InetAddress.getByName("224.0.0.251");
    if (this._socket != null)
      closeMulticastSocket();
    this._socket = new MulticastSocket(DNSConstants.MDNS_PORT);
    if ((paramHostInfo != null) && (paramHostInfo.getInterface() != null));
    try
    {
      this._socket.setNetworkInterface(paramHostInfo.getInterface());
      this._socket.setTimeToLive(1);
      this._socket.joinGroup(this._group);
      return;
    }
    catch (SocketException localSocketException)
    {
      while (true)
        logger.fine("openMulticastSocket() Set network interface exception: " + localSocketException.getMessage());
    }
  }

  private void start(Collection<? extends ServiceInfo> paramCollection)
  {
    if (this._incomingListener == null)
    {
      this._incomingListener = new Thread(new SocketListener(this), "JmDNS(" + this._name + ").SocketListener");
      this._incomingListener.setDaemon(true);
      this._incomingListener.start();
    }
    startProber();
    Iterator localIterator = paramCollection.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ServiceInfo localServiceInfo = (ServiceInfo)localIterator.next();
      try
      {
        registerService(new ServiceInfoImpl(localServiceInfo));
      }
      catch (Exception localException)
      {
        logger.log(Level.WARNING, "start() Registration exception ", localException);
      }
    }
  }

  static String toUnqualifiedName(String paramString1, String paramString2)
  {
    if ((paramString2.endsWith(paramString1)) && (!paramString2.equals(paramString1)));
    for (String str = paramString2.substring(0, paramString2.length() - paramString1.length() - 1); ; str = paramString2)
      return str;
  }

  // ERROR //
  private void waitForInfoData(ServiceInfo paramServiceInfo, long paramLong)
  {
    // Byte code:
    //   0: aload_1
    //   1: monitorenter
    //   2: lload_2
    //   3: ldc2_w 669
    //   6: ldiv
    //   7: lstore 5
    //   9: lload 5
    //   11: lconst_1
    //   12: lcmp
    //   13: ifge +44 -> 57
    //   16: lconst_1
    //   17: lstore 5
    //   19: goto +38 -> 57
    //   22: aload_1
    //   23: monitorexit
    //   24: return
    //   25: aload_1
    //   26: ldc2_w 669
    //   29: invokevirtual 463	java/lang/Object:wait	(J)V
    //   32: aload_1
    //   33: invokevirtual 673	javax/jmdns/ServiceInfo:hasData	()Z
    //   36: ifne -14 -> 22
    //   39: iinc 7 1
    //   42: goto +18 -> 60
    //   45: astore 4
    //   47: aload_1
    //   48: monitorexit
    //   49: aload 4
    //   51: athrow
    //   52: astore 8
    //   54: goto -22 -> 32
    //   57: iconst_0
    //   58: istore 7
    //   60: iload 7
    //   62: i2l
    //   63: lload 5
    //   65: lcmp
    //   66: iflt -41 -> 25
    //   69: goto -47 -> 22
    //
    // Exception table:
    //   from	to	target	type
    //   2	24	45	finally
    //   25	32	45	finally
    //   32	49	45	finally
    //   25	32	52	java/lang/InterruptedException
  }

  public DNSOutgoing addAnswer(DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing, DNSRecord paramDNSRecord)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    if (localDNSOutgoing == null)
      localDNSOutgoing = new DNSOutgoing(33792, false, paramDNSIncoming.getSenderUDPPayload());
    try
    {
      localDNSOutgoing.addAnswer(paramDNSIncoming, paramDNSRecord);
      return localDNSOutgoing;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localDNSOutgoing.setFlags(0x200 | localDNSOutgoing.getFlags());
        localDNSOutgoing.setId(paramDNSIncoming.getId());
        send(localDNSOutgoing);
        localDNSOutgoing = new DNSOutgoing(33792, false, paramDNSIncoming.getSenderUDPPayload());
        localDNSOutgoing.addAnswer(paramDNSIncoming, paramDNSRecord);
      }
    }
  }

  public void addListener(DNSListener paramDNSListener, DNSQuestion paramDNSQuestion)
  {
    long l = System.currentTimeMillis();
    this._listeners.add(paramDNSListener);
    if (paramDNSQuestion != null)
    {
      Collection localCollection = getCache().getDNSEntryList(paramDNSQuestion.getName().toLowerCase());
      if (localCollection != null)
      {
        monitorenter;
        try
        {
          Iterator localIterator = localCollection.iterator();
          while (true)
            if (!localIterator.hasNext())
            {
              monitorexit;
            }
            else
            {
              DNSEntry localDNSEntry = (DNSEntry)localIterator.next();
              if ((!paramDNSQuestion.answeredBy(localDNSEntry)) || (localDNSEntry.isExpired(l)))
                continue;
              paramDNSListener.updateRecord(getCache(), l, localDNSEntry);
            }
        }
        finally
        {
          monitorexit;
        }
      }
    }
  }

  public void addServiceListener(String paramString, ServiceListener paramServiceListener)
  {
    String str = paramString.toLowerCase();
    ??? = (List)this._serviceListeners.get(str);
    if (??? == null)
      if ((this._serviceListeners.putIfAbsent(str, new LinkedList()) == null) && (this._serviceCollectors.putIfAbsent(str, new ServiceCollector(str)) == null))
        addServiceListener(str, (ServiceListener)this._serviceCollectors.get(str));
    while (true)
    {
      ArrayList localArrayList;
      Iterator localIterator1;
      Iterator localIterator2;
      synchronized ((List)this._serviceListeners.get(str))
      {
        if (???.contains(paramServiceListener))
          continue;
        ???.add(paramServiceListener);
        localArrayList = new ArrayList();
        localIterator1 = getCache().allValues().iterator();
        if (!localIterator1.hasNext())
        {
          localIterator2 = localArrayList.iterator();
          if (localIterator2.hasNext())
            break label274;
          new ServiceResolver(this, paramString).start(this._timer);
          return;
        }
      }
      DNSRecord localDNSRecord = (DNSRecord)(DNSEntry)localIterator1.next();
      if ((localDNSRecord.getRecordType() != DNSRecordType.TYPE_SRV) || (!localDNSRecord.getName().endsWith(paramString)))
        continue;
      localArrayList.add(new ServiceEventImpl(this, paramString, toUnqualifiedName(paramString, localDNSRecord.getName()), localDNSRecord.getServiceInfo()));
      continue;
      label274: paramServiceListener.serviceAdded((ServiceEvent)localIterator2.next());
    }
  }

  public void addServiceTypeListener(ServiceTypeListener paramServiceTypeListener)
    throws IOException
  {
    this._typeListeners.add(paramServiceTypeListener);
    Iterator localIterator = this._serviceTypes.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        new TypeResolver(this).start(this._timer);
        return;
      }
      paramServiceTypeListener.serviceTypeAdded(new ServiceEventImpl(this, (String)localIterator.next(), "", null));
    }
  }

  public boolean advanceState(DNSTask paramDNSTask)
  {
    return this._localHost.advanceState(paramDNSTask);
  }

  public void associateWithTask(DNSTask paramDNSTask, DNSState paramDNSState)
  {
    this._localHost.associateWithTask(paramDNSTask, paramDNSState);
  }

  public boolean cancelState()
  {
    return this._localHost.cancelState();
  }

  public void close()
  {
    if ((isCanceling()) || (isCanceled()));
    while (true)
    {
      return;
      logger.finer("Cancelling JmDNS: " + this);
      if (!cancelState())
        continue;
      this._timer.cancel();
      unregisterAllServices();
      disposeServiceCollectors();
      logger.finer("Wait for JmDNS cancel: " + this);
      waitForCanceled(5000L);
      this._stateTimer.cancel();
      closeMulticastSocket();
      if (this._shutdown == null)
        continue;
      Runtime.getRuntime().removeShutdownHook(this._shutdown);
    }
  }

  public DNSCache getCache()
  {
    return this._cache;
  }

  public JmDNSImpl getDns()
  {
    return this;
  }

  public InetAddress getGroup()
  {
    return this._group;
  }

  public String getHostName()
  {
    return this._localHost.getName();
  }

  public InetAddress getInterface()
    throws IOException
  {
    return this._socket.getInterface();
  }

  public long getLastThrottleIncrement()
  {
    return this._lastThrottleIncrement;
  }

  public HostInfo getLocalHost()
  {
    return this._localHost;
  }

  public String getName()
  {
    return this._name;
  }

  public DNSIncoming getPlannedAnswer()
  {
    return this._plannedAnswer;
  }

  public ServiceInfo getServiceInfo(String paramString1, String paramString2)
  {
    return getServiceInfo(paramString1, paramString2, false, 6000L);
  }

  public ServiceInfo getServiceInfo(String paramString1, String paramString2, long paramLong)
  {
    return getServiceInfo(paramString1, paramString2, false, paramLong);
  }

  public ServiceInfo getServiceInfo(String paramString1, String paramString2, boolean paramBoolean)
  {
    return getServiceInfo(paramString1, paramString2, paramBoolean, 6000L);
  }

  public ServiceInfo getServiceInfo(String paramString1, String paramString2, boolean paramBoolean, long paramLong)
  {
    ServiceInfoImpl localServiceInfoImpl1 = resolveServiceInfo(paramString1, paramString2, "", paramBoolean);
    waitForInfoData(localServiceInfoImpl1, paramLong);
    if (localServiceInfoImpl1.hasData());
    for (ServiceInfoImpl localServiceInfoImpl2 = localServiceInfoImpl1; ; localServiceInfoImpl2 = null)
      return localServiceInfoImpl2;
  }

  ServiceInfoImpl getServiceInfoFromCache(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    Object localObject = new ServiceInfoImpl(paramString1, paramString2, paramString3, 0, 0, 0, paramBoolean, null);
    DNSEntry localDNSEntry1 = getCache().getDNSEntry(new DNSRecord.Pointer(paramString1, DNSRecordClass.CLASS_ANY, false, 0, ((ServiceInfoImpl)localObject).getQualifiedName()));
    if ((localDNSEntry1 instanceof DNSRecord))
    {
      ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)((DNSRecord)localDNSEntry1).getServiceInfo(paramBoolean);
      if (localServiceInfoImpl != null)
      {
        Map localMap = localServiceInfoImpl.getQualifiedNameMap();
        byte[] arrayOfByte = (byte[])null;
        String str = "";
        DNSEntry localDNSEntry2 = getCache().getDNSEntry(((ServiceInfoImpl)localObject).getQualifiedName(), DNSRecordType.TYPE_SRV, DNSRecordClass.CLASS_ANY);
        if ((localDNSEntry2 instanceof DNSRecord))
        {
          ServiceInfo localServiceInfo4 = ((DNSRecord)localDNSEntry2).getServiceInfo(paramBoolean);
          if (localServiceInfo4 != null)
          {
            localServiceInfoImpl = new ServiceInfoImpl(localMap, localServiceInfo4.getPort(), localServiceInfo4.getWeight(), localServiceInfo4.getPriority(), paramBoolean, null);
            arrayOfByte = localServiceInfo4.getTextBytes();
            str = localServiceInfo4.getServer();
          }
        }
        DNSCache localDNSCache1 = getCache();
        DNSRecordType localDNSRecordType1 = DNSRecordType.TYPE_A;
        DNSRecordClass localDNSRecordClass1 = DNSRecordClass.CLASS_ANY;
        DNSEntry localDNSEntry3 = localDNSCache1.getDNSEntry(str, localDNSRecordType1, localDNSRecordClass1);
        if ((localDNSEntry3 instanceof DNSRecord))
        {
          ServiceInfo localServiceInfo3 = ((DNSRecord)localDNSEntry3).getServiceInfo(paramBoolean);
          if (localServiceInfo3 != null)
          {
            localServiceInfoImpl.setAddress(localServiceInfo3.getInet4Address());
            localServiceInfoImpl._setText(localServiceInfo3.getTextBytes());
          }
        }
        DNSCache localDNSCache2 = getCache();
        DNSRecordType localDNSRecordType2 = DNSRecordType.TYPE_AAAA;
        DNSRecordClass localDNSRecordClass2 = DNSRecordClass.CLASS_ANY;
        DNSEntry localDNSEntry4 = localDNSCache2.getDNSEntry(str, localDNSRecordType2, localDNSRecordClass2);
        if ((localDNSEntry4 instanceof DNSRecord))
        {
          ServiceInfo localServiceInfo2 = ((DNSRecord)localDNSEntry4).getServiceInfo(paramBoolean);
          if (localServiceInfo2 != null)
          {
            localServiceInfoImpl.setAddress(localServiceInfo2.getInet6Address());
            localServiceInfoImpl._setText(localServiceInfo2.getTextBytes());
          }
        }
        DNSEntry localDNSEntry5 = getCache().getDNSEntry(localServiceInfoImpl.getQualifiedName(), DNSRecordType.TYPE_TXT, DNSRecordClass.CLASS_ANY);
        if ((localDNSEntry5 instanceof DNSRecord))
        {
          ServiceInfo localServiceInfo1 = ((DNSRecord)localDNSEntry5).getServiceInfo(paramBoolean);
          if (localServiceInfo1 != null)
            localServiceInfoImpl._setText(localServiceInfo1.getTextBytes());
        }
        if (localServiceInfoImpl.getTextBytes().length == 0)
          localServiceInfoImpl._setText(arrayOfByte);
        if (localServiceInfoImpl.hasData())
          localObject = localServiceInfoImpl;
      }
    }
    return (ServiceInfoImpl)localObject;
  }

  public Map<String, Set<String>> getServiceTypes()
  {
    return this._serviceTypes;
  }

  public Map<String, ServiceInfo> getServices()
  {
    return this._services;
  }

  public MulticastSocket getSocket()
  {
    return this._socket;
  }

  public int getThrottle()
  {
    return this._throttle;
  }

  void handleQuery(DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt)
    throws IOException
  {
    logger.fine(getName() + ".handle query: " + paramDNSIncoming);
    boolean bool = false;
    long l = 120L + System.currentTimeMillis();
    Iterator localIterator = paramDNSIncoming.getAllAnswers().iterator();
    if (!localIterator.hasNext())
    {
      if (this._plannedAnswer == null)
        break label115;
      this._plannedAnswer.append(paramDNSIncoming);
    }
    while (true)
    {
      if (bool)
        startProber();
      return;
      bool |= ((DNSRecord)localIterator.next()).handleQuery(this, l);
      break;
      label115: if (paramDNSIncoming.isTruncated())
        this._plannedAnswer = paramDNSIncoming;
      new Responder(this, paramDNSIncoming, paramInt).start(this._timer);
    }
  }

  void handleResponse(DNSIncoming paramDNSIncoming)
    throws IOException
  {
    long l = System.currentTimeMillis();
    boolean bool1 = false;
    boolean bool2 = false;
    Iterator localIterator = paramDNSIncoming.getAllAnswers().iterator();
    if (!localIterator.hasNext())
    {
      if ((bool1) || (bool2))
        startProber();
      return;
    }
    Object localObject = (DNSRecord)localIterator.next();
    Operation localOperation = Operation.Noop;
    boolean bool3 = ((DNSRecord)localObject).isExpired(l);
    DNSRecord localDNSRecord = (DNSRecord)getCache().getDNSEntry((DNSEntry)localObject);
    logger.fine(getName() + ".handle response: " + localObject + "\ncached recod: " + localDNSRecord);
    if (localDNSRecord != null)
      if (bool3)
      {
        localOperation = Operation.Remove;
        getCache().removeDNSEntry(localDNSRecord);
        label155: switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[localObject.getRecordType().ordinal()])
        {
        default:
          label184: if ((!DNSRecordType.TYPE_A.equals(((DNSRecord)localObject).getRecordType())) && (!DNSRecordType.TYPE_AAAA.equals(((DNSRecord)localObject).getRecordType())))
            break;
          bool1 |= ((DNSRecord)localObject).handleResponse(this);
        case 13:
        }
      }
    while (localOperation != Operation.Noop)
    {
      updateRecord(l, (DNSRecord)localObject, localOperation);
      break;
      if ((!((DNSRecord)localObject).sameValue(localDNSRecord)) || ((!((DNSRecord)localObject).sameSubtype(localDNSRecord)) && (((DNSRecord)localObject).getSubtype().length() > 0)))
      {
        localOperation = Operation.Update;
        getCache().replaceDNSEntry((DNSEntry)localObject, localDNSRecord);
        break label155;
      }
      localDNSRecord.resetTTL((DNSRecord)localObject);
      localObject = localDNSRecord;
      break label155;
      if (bool3)
        break label155;
      localOperation = Operation.Add;
      getCache().addDNSEntry((DNSEntry)localObject);
      break label155;
      if (((DNSRecord)localObject).isServicesDiscoveryMetaQuery())
      {
        if (bool3)
          break;
        registerServiceType(((DNSRecord.Pointer)localObject).getAlias());
        break;
      }
      if ((!(false | registerServiceType(((DNSRecord)localObject).getName()))) || (localOperation != Operation.Noop))
        break label184;
      localOperation = Operation.RegisterServiceType;
      break label184;
      bool2 |= ((DNSRecord)localObject).handleResponse(this);
    }
  }

  // ERROR //
  void handleServiceResolved(ServiceEvent paramServiceEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 341	javax/jmdns/impl/JmDNSImpl:_serviceListeners	Ljava/util/concurrent/ConcurrentMap;
    //   4: aload_1
    //   5: invokevirtual 1013	javax/jmdns/ServiceEvent:getType	()Ljava/lang/String;
    //   8: invokevirtual 535	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   11: invokeinterface 505 2 0
    //   16: checkcast 709	java/util/List
    //   19: astore_2
    //   20: invokestatic 1017	java/util/Collections:emptyList	()Ljava/util/List;
    //   23: pop
    //   24: aload_2
    //   25: ifnull +62 -> 87
    //   28: aload_2
    //   29: invokeinterface 1020 1 0
    //   34: ifne +53 -> 87
    //   37: aload_1
    //   38: invokevirtual 1023	javax/jmdns/ServiceEvent:getInfo	()Ljavax/jmdns/ServiceInfo;
    //   41: ifnull +46 -> 87
    //   44: aload_1
    //   45: invokevirtual 1023	javax/jmdns/ServiceEvent:getInfo	()Ljavax/jmdns/ServiceInfo;
    //   48: invokevirtual 673	javax/jmdns/ServiceInfo:hasData	()Z
    //   51: ifeq +36 -> 87
    //   54: aload_2
    //   55: monitorenter
    //   56: new 327	java/util/ArrayList
    //   59: dup
    //   60: aload_2
    //   61: invokespecial 1025	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   64: astore 4
    //   66: aload_2
    //   67: monitorexit
    //   68: aload 4
    //   70: invokeinterface 745 1 0
    //   75: astore 6
    //   77: aload 6
    //   79: invokeinterface 495 1 0
    //   84: ifne +11 -> 95
    //   87: return
    //   88: astore 5
    //   90: aload_2
    //   91: monitorexit
    //   92: aload 5
    //   94: athrow
    //   95: aload 6
    //   97: invokeinterface 499 1 0
    //   102: checkcast 736	javax/jmdns/ServiceListener
    //   105: aload_1
    //   106: invokeinterface 1028 2 0
    //   111: goto -34 -> 77
    //   114: astore 5
    //   116: goto -26 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   56	66	88	finally
    //   90	92	88	finally
    //   66	68	114	finally
  }

  String incrementName(String paramString)
  {
    Object localObject;
    try
    {
      int i = paramString.lastIndexOf('(');
      int j = paramString.lastIndexOf(')');
      if ((i >= 0) && (i < j))
      {
        localObject = paramString.substring(0, i) + "(" + (1 + Integer.parseInt(paramString.substring(i + 1, j))) + ")";
      }
      else
      {
        String str = paramString + " (2)";
        localObject = str;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localObject = paramString + " (2)";
    }
    return (String)localObject;
  }

  public void ioLock()
  {
    this._ioLock.lock();
  }

  public void ioUnlock()
  {
    this._ioLock.unlock();
  }

  public boolean isAnnounced()
  {
    return this._localHost.isAnnounced();
  }

  public boolean isAnnouncing()
  {
    return this._localHost.isAnnouncing();
  }

  public boolean isAssociatedWithTask(DNSTask paramDNSTask, DNSState paramDNSState)
  {
    return this._localHost.isAssociatedWithTask(paramDNSTask, paramDNSState);
  }

  public boolean isCanceled()
  {
    return this._localHost.isCanceled();
  }

  public boolean isCanceling()
  {
    return this._localHost.isCanceling();
  }

  public boolean isClosed()
  {
    return this._closed;
  }

  public boolean isProbing()
  {
    return this._localHost.isProbing();
  }

  public ServiceInfo[] list(String paramString)
  {
    return list(paramString, 6000L);
  }

  public ServiceInfo[] list(String paramString, long paramLong)
  {
    String str = paramString.toLowerCase();
    ServiceInfo[] arrayOfServiceInfo;
    if ((isCanceling()) || (isCanceled()))
    {
      arrayOfServiceInfo = new ServiceInfo[0];
      return arrayOfServiceInfo;
    }
    ServiceCollector localServiceCollector = (ServiceCollector)this._serviceCollectors.get(str);
    if (localServiceCollector == null)
      if (this._serviceCollectors.putIfAbsent(str, new ServiceCollector(str)) != null)
        break label150;
    label150: for (int i = 1; ; i = 0)
    {
      localServiceCollector = (ServiceCollector)this._serviceCollectors.get(str);
      if (i != 0)
        addServiceListener(str, localServiceCollector);
      logger.finer(getName() + ".collector: " + localServiceCollector);
      arrayOfServiceInfo = localServiceCollector.list(paramLong);
      break;
    }
  }

  public Map<String, ServiceInfo[]> listBySubtype(String paramString)
  {
    return listBySubtype(paramString, 6000L);
  }

  public Map<String, ServiceInfo[]> listBySubtype(String paramString, long paramLong)
  {
    HashMap localHashMap1 = new HashMap(5);
    ServiceInfo[] arrayOfServiceInfo = list(paramString, paramLong);
    int i = arrayOfServiceInfo.length;
    int j = 0;
    HashMap localHashMap2;
    Iterator localIterator;
    if (j >= i)
    {
      localHashMap2 = new HashMap(localHashMap1.size());
      localIterator = localHashMap1.keySet().iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        return localHashMap2;
        ServiceInfo localServiceInfo = arrayOfServiceInfo[j];
        String str2 = localServiceInfo.getSubtype();
        if (!localHashMap1.containsKey(str2))
          localHashMap1.put(str2, new ArrayList(10));
        ((List)localHashMap1.get(str2)).add(localServiceInfo);
        j++;
        break;
      }
      String str1 = (String)localIterator.next();
      List localList = (List)localHashMap1.get(str1);
      localHashMap2.put(str1, (ServiceInfo[])localList.toArray(new ServiceInfo[localList.size()]));
    }
  }

  void print()
  {
    System.out.println(this._cache.toString());
    System.out.println();
  }

  public void printServices()
  {
    System.err.println(toString());
  }

  public void recover()
  {
    logger.finer("recover()");
    if ((isCanceling()) || (isCanceled()));
    while (true)
    {
      return;
      if (!cancelState())
        continue;
      logger.finer("recover() Cleanning up");
      this._timer.purge();
      ArrayList localArrayList = new ArrayList(getServices().values());
      unregisterAllServices();
      disposeServiceCollectors();
      waitForCanceled(0L);
      this._stateTimer.purge();
      closeMulticastSocket();
      getCache().clear();
      logger.finer("recover() All is clean");
      Iterator localIterator = localArrayList.iterator();
      if (!localIterator.hasNext())
        recoverState();
      try
      {
        openMulticastSocket(getLocalHost());
        start(localArrayList);
        logger.log(Level.WARNING, "recover() We are back!");
        continue;
        ((ServiceInfoImpl)(ServiceInfo)localIterator.next()).recoverState();
      }
      catch (Exception localException)
      {
        while (true)
          logger.log(Level.WARNING, "recover() Start services exception ", localException);
      }
    }
  }

  public boolean recoverState()
  {
    return this._localHost.recoverState();
  }

  public void registerService(ServiceInfo paramServiceInfo)
    throws IOException
  {
    ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)paramServiceInfo;
    if ((localServiceInfoImpl.getDns() != null) && (localServiceInfoImpl.getDns() != this))
      throw new IllegalStateException("This service information is already registered with another DNS.");
    localServiceInfoImpl.setDns(this);
    registerServiceType(localServiceInfoImpl.getTypeWithSubtype());
    localServiceInfoImpl.setServer(this._localHost.getName());
    localServiceInfoImpl.setAddress(this._localHost.getInet4Address());
    localServiceInfoImpl.setAddress(this._localHost.getInet6Address());
    waitForAnnounced(0L);
    makeServiceNameUnique(localServiceInfoImpl);
    while (true)
    {
      if (this._services.putIfAbsent(localServiceInfoImpl.getQualifiedName().toLowerCase(), localServiceInfoImpl) == null)
      {
        new Prober(this).start(this._stateTimer);
        localServiceInfoImpl.waitForAnnounced(0L);
        logger.fine("registerService() JmDNS registered service as " + localServiceInfoImpl);
        return;
      }
      makeServiceNameUnique(localServiceInfoImpl);
    }
  }

  public boolean registerServiceType(String paramString)
  {
    int i = 0;
    Map localMap = ServiceInfoImpl.decodeQualifiedNameMapForType(paramString);
    String str1 = (String)localMap.get(ServiceInfo.Fields.Domain);
    String str2 = (String)localMap.get(ServiceInfo.Fields.Protocol);
    String str3 = (String)localMap.get(ServiceInfo.Fields.Application);
    String str4 = (String)localMap.get(ServiceInfo.Fields.Subtype);
    String str5;
    String str6;
    label145: String str7;
    String str8;
    label238: ServiceTypeListener[] arrayOfServiceTypeListener2;
    label323: ServiceEventImpl localServiceEventImpl2;
    int n;
    label377: Set localSet;
    if (str3.length() > 0)
    {
      str5 = "_" + str3 + ".";
      StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str5));
      if (str2.length() <= 0)
        break label540;
      str6 = "_" + str2 + ".";
      str7 = str6 + str1 + ".";
      Logger localLogger = logger;
      StringBuilder localStringBuilder2 = new StringBuilder(String.valueOf(getName())).append(".registering service type: ").append(paramString).append(" as: ").append(str7);
      if (str4.length() <= 0)
        break label548;
      str8 = " subtype: " + str4;
      localLogger.fine(str8);
      if ((!this._serviceTypes.containsKey(str7)) && (!str3.equals("dns-sd")) && (!str1.endsWith("in-addr.arpa")) && (!str1.endsWith("ip6.arpa")))
      {
        if (this._serviceTypes.putIfAbsent(str7, new HashSet()) != null)
          break label556;
        i = 1;
        if (i != 0)
        {
          arrayOfServiceTypeListener2 = (ServiceTypeListener[])this._typeListeners.toArray(new ServiceTypeListener[this._typeListeners.size()]);
          localServiceEventImpl2 = new ServiceEventImpl(this, str7, "", null);
          int m = arrayOfServiceTypeListener2.length;
          n = 0;
          if (n < m)
            break label561;
        }
      }
      if (str4.length() > 0)
      {
        localSet = (Set)this._serviceTypes.get(str7);
        if (!localSet.contains(str4))
          monitorenter;
      }
    }
    while (true)
    {
      int j;
      int k;
      try
      {
        if (localSet.contains(str4))
          continue;
        i = 1;
        localSet.add(str4);
        ServiceTypeListener[] arrayOfServiceTypeListener1 = (ServiceTypeListener[])this._typeListeners.toArray(new ServiceTypeListener[this._typeListeners.size()]);
        ServiceEventImpl localServiceEventImpl1 = new ServiceEventImpl(this, "_" + str4 + "._sub." + str7, "", null);
        j = arrayOfServiceTypeListener1.length;
        k = 0;
        break label605;
        return i;
        str5 = "";
        break;
        label540: str6 = "";
        break label145;
        label548: str8 = "";
        break label238;
        label556: i = 0;
        break label323;
        label561: arrayOfServiceTypeListener2[n].serviceTypeAdded(localServiceEventImpl2);
        n++;
        break label377;
        arrayOfServiceTypeListener1[k].subTypeForServiceTypeAdded(localServiceEventImpl1);
        k++;
      }
      finally
      {
        monitorexit;
      }
      label605: if (k < j)
        continue;
    }
  }

  public void removeAssociationWithTask(DNSTask paramDNSTask)
  {
    this._localHost.removeAssociationWithTask(paramDNSTask);
  }

  public void removeListener(DNSListener paramDNSListener)
  {
    this._listeners.remove(paramDNSListener);
  }

  public void removeServiceListener(String paramString, ServiceListener paramServiceListener)
  {
    String str = paramString.toLowerCase();
    List localList = (List)this._serviceListeners.get(str);
    if (localList != null)
    {
      monitorenter;
      try
      {
        localList.remove(paramServiceListener);
        if (localList.isEmpty())
          this._serviceListeners.remove(str, localList);
        monitorexit;
      }
      finally
      {
        localObject = finally;
        monitorexit;
        throw localObject;
      }
    }
  }

  public void removeServiceTypeListener(ServiceTypeListener paramServiceTypeListener)
  {
    this._typeListeners.remove(paramServiceTypeListener);
  }

  public void renewServiceCollector(DNSRecord paramDNSRecord)
  {
    ServiceInfo localServiceInfo = paramDNSRecord.getServiceInfo();
    if (this._serviceCollectors.containsKey(localServiceInfo.getType().toLowerCase()))
      new ServiceResolver(this, localServiceInfo.getType()).start(this._timer);
  }

  public void requestServiceInfo(String paramString1, String paramString2)
  {
    requestServiceInfo(paramString1, paramString2, false, 6000L);
  }

  public void requestServiceInfo(String paramString1, String paramString2, long paramLong)
  {
    requestServiceInfo(paramString1, paramString2, false, 6000L);
  }

  public void requestServiceInfo(String paramString1, String paramString2, boolean paramBoolean)
  {
    requestServiceInfo(paramString1, paramString2, paramBoolean, 6000L);
  }

  public void requestServiceInfo(String paramString1, String paramString2, boolean paramBoolean, long paramLong)
  {
    waitForInfoData(resolveServiceInfo(paramString1, paramString2, "", paramBoolean), paramLong);
  }

  ServiceInfoImpl resolveServiceInfo(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    String str = paramString1.toLowerCase();
    registerServiceType(str);
    if (this._serviceCollectors.putIfAbsent(str, new ServiceCollector(str)) == null)
      addServiceListener(str, (ServiceListener)this._serviceCollectors.get(str));
    ServiceInfoImpl localServiceInfoImpl = getServiceInfoFromCache(paramString1, paramString2, paramString3, paramBoolean);
    new ServiceInfoResolver(this, localServiceInfoImpl).start(this._timer);
    return localServiceInfoImpl;
  }

  public boolean revertState()
  {
    return this._localHost.revertState();
  }

  public void send(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    DatagramPacket localDatagramPacket;
    if (!paramDNSOutgoing.isEmpty())
    {
      byte[] arrayOfByte = paramDNSOutgoing.data();
      localDatagramPacket = new DatagramPacket(arrayOfByte, arrayOfByte.length, this._group, DNSConstants.MDNS_PORT);
      if (!logger.isLoggable(Level.FINEST));
    }
    try
    {
      DNSIncoming localDNSIncoming = new DNSIncoming(localDatagramPacket);
      logger.finest("send(" + getName() + ") JmDNS out:" + localDNSIncoming.print(true));
      MulticastSocket localMulticastSocket = this._socket;
      if ((localMulticastSocket != null) && (!localMulticastSocket.isClosed()))
        localMulticastSocket.send(localDatagramPacket);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        logger.throwing(getClass().toString(), "send(" + getName() + ") - JmDNS can not parse what it sends!!!", localIOException);
    }
  }

  public void setClosed(boolean paramBoolean)
  {
    this._closed = paramBoolean;
  }

  public void setLastThrottleIncrement(long paramLong)
  {
    this._lastThrottleIncrement = paramLong;
  }

  void setLocalHost(HostInfo paramHostInfo)
  {
    this._localHost = paramHostInfo;
  }

  public void setPlannedAnswer(DNSIncoming paramDNSIncoming)
  {
    this._plannedAnswer = paramDNSIncoming;
  }

  public void setThrottle(int paramInt)
  {
    this._throttle = paramInt;
  }

  public void startAnnouncer()
  {
    new Announcer(this).start(this._stateTimer);
  }

  public void startCanceler()
  {
    new Canceler(this).start(this._stateTimer);
  }

  public void startProber()
  {
    new Prober(this).start(this._stateTimer);
  }

  public void startRenewer()
  {
    new Renewer(this).start(this._stateTimer);
  }

  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder(2048);
    localStringBuilder1.append("\t---- Local Host -----");
    localStringBuilder1.append("\n\t" + this._localHost);
    localStringBuilder1.append("\n\t---- Services -----");
    Iterator localIterator1 = this._services.keySet().iterator();
    Iterator localIterator2;
    Iterator localIterator3;
    label172: Iterator localIterator4;
    if (!localIterator1.hasNext())
    {
      localStringBuilder1.append("\n");
      localStringBuilder1.append("\t---- Types ----");
      localIterator2 = this._serviceTypes.keySet().iterator();
      if (localIterator2.hasNext())
        break label287;
      localStringBuilder1.append("\n");
      localStringBuilder1.append(this._cache.toString());
      localStringBuilder1.append("\n");
      localStringBuilder1.append("\t---- Service Collectors ----");
      localIterator3 = this._serviceCollectors.keySet().iterator();
      if (localIterator3.hasNext())
        break label378;
      localStringBuilder1.append("\n");
      localStringBuilder1.append("\t---- Service Listeners ----");
      localIterator4 = this._serviceListeners.keySet().iterator();
    }
    while (true)
    {
      if (!localIterator4.hasNext())
      {
        return localStringBuilder1.toString();
        String str1 = (String)localIterator1.next();
        localStringBuilder1.append("\n\t\tService: " + str1 + ": " + this._services.get(str1));
        break;
        label287: String str2 = (String)localIterator2.next();
        Set localSet = (Set)this._serviceTypes.get(str2);
        StringBuilder localStringBuilder2 = new StringBuilder("\n\t\tType: ").append(str2).append(": ");
        if (localSet.isEmpty());
        for (Object localObject = "no subtypes"; ; localObject = localSet)
        {
          localStringBuilder1.append(localObject);
          break;
        }
        label378: String str3 = (String)localIterator3.next();
        localStringBuilder1.append("\n\t\tService Collector: " + str3 + ": " + this._serviceCollectors.get(str3));
        break label172;
      }
      String str4 = (String)localIterator4.next();
      localStringBuilder1.append("\n\t\tService Listener: " + str4 + ": " + this._serviceListeners.get(str4));
    }
  }

  public void unregisterAllServices()
  {
    logger.finer("unregisterAllServices()");
    Iterator localIterator1 = this._services.keySet().iterator();
    Iterator localIterator2;
    if (!localIterator1.hasNext())
    {
      startCanceler();
      localIterator2 = this._services.keySet().iterator();
    }
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        return;
        String str1 = (String)localIterator1.next();
        ServiceInfoImpl localServiceInfoImpl1 = (ServiceInfoImpl)this._services.get(str1);
        if (localServiceInfoImpl1 == null)
          break;
        logger.finer("Cancelling service info: " + localServiceInfoImpl1);
        localServiceInfoImpl1.cancelState();
        break;
      }
      String str2 = (String)localIterator2.next();
      ServiceInfoImpl localServiceInfoImpl2 = (ServiceInfoImpl)this._services.get(str2);
      if (localServiceInfoImpl2 == null)
        continue;
      logger.finer("Wait for service info cancel: " + localServiceInfoImpl2);
      localServiceInfoImpl2.waitForCanceled(5000L);
      this._services.remove(str2, localServiceInfoImpl2);
    }
  }

  public void unregisterService(ServiceInfo paramServiceInfo)
  {
    ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)paramServiceInfo;
    this._services.remove(localServiceInfoImpl.getQualifiedName().toLowerCase());
    localServiceInfoImpl.cancelState();
    startCanceler();
    localServiceInfoImpl.waitForCanceled(0L);
  }

  // ERROR //
  public void updateRecord(long paramLong, DNSRecord paramDNSRecord, Operation paramOperation)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 336	javax/jmdns/impl/JmDNSImpl:_listeners	Ljava/util/List;
    //   4: astore 5
    //   6: aload 5
    //   8: monitorenter
    //   9: new 327	java/util/ArrayList
    //   12: dup
    //   13: aload_0
    //   14: getfield 336	javax/jmdns/impl/JmDNSImpl:_listeners	Ljava/util/List;
    //   17: invokespecial 1025	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   20: astore 6
    //   22: aload 5
    //   24: monitorexit
    //   25: aload 6
    //   27: invokeinterface 745 1 0
    //   32: astore 8
    //   34: aload 8
    //   36: invokeinterface 495 1 0
    //   41: ifne +256 -> 297
    //   44: getstatic 227	javax/jmdns/impl/constants/DNSRecordType:TYPE_PTR	Ljavax/jmdns/impl/constants/DNSRecordType;
    //   47: aload_3
    //   48: invokevirtual 754	javax/jmdns/impl/DNSRecord:getRecordType	()Ljavax/jmdns/impl/constants/DNSRecordType;
    //   51: invokevirtual 563	javax/jmdns/impl/constants/DNSRecordType:equals	(Ljava/lang/Object;)Z
    //   54: ifeq +234 -> 288
    //   57: aload_3
    //   58: aload_0
    //   59: invokevirtual 1368	javax/jmdns/impl/DNSRecord:getServiceEvent	(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    //   62: astore 9
    //   64: aload 9
    //   66: invokevirtual 1023	javax/jmdns/ServiceEvent:getInfo	()Ljavax/jmdns/ServiceInfo;
    //   69: ifnull +14 -> 83
    //   72: aload 9
    //   74: invokevirtual 1023	javax/jmdns/ServiceEvent:getInfo	()Ljavax/jmdns/ServiceInfo;
    //   77: invokevirtual 673	javax/jmdns/ServiceInfo:hasData	()Z
    //   80: ifne +57 -> 137
    //   83: aload_0
    //   84: aload 9
    //   86: invokevirtual 1013	javax/jmdns/ServiceEvent:getType	()Ljava/lang/String;
    //   89: aload 9
    //   91: invokevirtual 1369	javax/jmdns/ServiceEvent:getName	()Ljava/lang/String;
    //   94: ldc_w 781
    //   97: iconst_0
    //   98: invokevirtual 1250	javax/jmdns/impl/JmDNSImpl:getServiceInfoFromCache	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    //   101: astore 10
    //   103: aload 10
    //   105: invokevirtual 673	javax/jmdns/ServiceInfo:hasData	()Z
    //   108: ifeq +29 -> 137
    //   111: new 757	javax/jmdns/impl/ServiceEventImpl
    //   114: dup
    //   115: aload_0
    //   116: aload 9
    //   118: invokevirtual 1013	javax/jmdns/ServiceEvent:getType	()Ljava/lang/String;
    //   121: aload 9
    //   123: invokevirtual 1369	javax/jmdns/ServiceEvent:getName	()Ljava/lang/String;
    //   126: aload 10
    //   128: invokespecial 766	javax/jmdns/impl/ServiceEventImpl:<init>	(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    //   131: astore 11
    //   133: aload 11
    //   135: astore 9
    //   137: aload_0
    //   138: getfield 341	javax/jmdns/impl/JmDNSImpl:_serviceListeners	Ljava/util/concurrent/ConcurrentMap;
    //   141: aload 9
    //   143: invokevirtual 1013	javax/jmdns/ServiceEvent:getType	()Ljava/lang/String;
    //   146: invokeinterface 505 2 0
    //   151: checkcast 709	java/util/List
    //   154: astore 12
    //   156: invokestatic 1017	java/util/Collections:emptyList	()Ljava/util/List;
    //   159: astore 13
    //   161: aload 12
    //   163: ifnull +24 -> 187
    //   166: aload 12
    //   168: monitorenter
    //   169: new 327	java/util/ArrayList
    //   172: dup
    //   173: aload 12
    //   175: invokespecial 1025	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   178: astore 16
    //   180: aload 12
    //   182: monitorexit
    //   183: aload 16
    //   185: astore 13
    //   187: getstatic 294	javax/jmdns/impl/JmDNSImpl:logger	Ljava/util/logging/Logger;
    //   190: new 371	java/lang/StringBuilder
    //   193: dup
    //   194: aload_0
    //   195: invokevirtual 936	javax/jmdns/impl/JmDNSImpl:getName	()Ljava/lang/String;
    //   198: invokestatic 940	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   201: invokespecial 375	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   204: ldc_w 1371
    //   207: invokevirtual 379	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: aload 9
    //   212: invokevirtual 581	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   215: ldc_w 1373
    //   218: invokevirtual 379	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: aload 13
    //   223: invokevirtual 581	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   226: ldc_w 1375
    //   229: invokevirtual 379	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: aload 4
    //   234: invokevirtual 581	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   237: invokevirtual 384	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   240: invokevirtual 1288	java/util/logging/Logger:finest	(Ljava/lang/String;)V
    //   243: aload 13
    //   245: invokeinterface 1020 1 0
    //   250: ifne +38 -> 288
    //   253: invokestatic 1377	javax/jmdns/impl/JmDNSImpl:$SWITCH_TABLE$javax$jmdns$impl$JmDNSImpl$Operation	()[I
    //   256: aload 4
    //   258: invokevirtual 80	javax/jmdns/impl/JmDNSImpl$Operation:ordinal	()I
    //   261: iaload
    //   262: tableswitch	default:+26 -> 288, 1:+106->368, 2:+26->288, 3:+67->329
    //   289: astore 7
    //   291: aload 5
    //   293: monitorexit
    //   294: aload 7
    //   296: athrow
    //   297: aload 8
    //   299: invokeinterface 499 1 0
    //   304: checkcast 721	javax/jmdns/impl/DNSListener
    //   307: aload_0
    //   308: invokevirtual 532	javax/jmdns/impl/JmDNSImpl:getCache	()Ljavax/jmdns/impl/DNSCache;
    //   311: lload_1
    //   312: aload_3
    //   313: invokeinterface 725 5 0
    //   318: goto -284 -> 34
    //   321: astore 17
    //   323: aload 12
    //   325: monitorexit
    //   326: aload 17
    //   328: athrow
    //   329: aload 13
    //   331: invokeinterface 745 1 0
    //   336: astore 15
    //   338: aload 15
    //   340: invokeinterface 495 1 0
    //   345: ifeq -57 -> 288
    //   348: aload 15
    //   350: invokeinterface 499 1 0
    //   355: checkcast 736	javax/jmdns/ServiceListener
    //   358: aload 9
    //   360: invokeinterface 772 2 0
    //   365: goto -27 -> 338
    //   368: aload 13
    //   370: invokeinterface 745 1 0
    //   375: astore 14
    //   377: aload 14
    //   379: invokeinterface 495 1 0
    //   384: ifeq -96 -> 288
    //   387: aload 14
    //   389: invokeinterface 499 1 0
    //   394: checkcast 736	javax/jmdns/ServiceListener
    //   397: aload 9
    //   399: invokeinterface 1380 2 0
    //   404: goto -27 -> 377
    //   407: astore 17
    //   409: goto -86 -> 323
    //   412: astore 7
    //   414: goto -123 -> 291
    //
    // Exception table:
    //   from	to	target	type
    //   9	22	289	finally
    //   291	294	289	finally
    //   169	180	321	finally
    //   323	326	321	finally
    //   180	183	407	finally
    //   22	25	412	finally
  }

  public boolean waitForAnnounced(long paramLong)
  {
    return this._localHost.waitForAnnounced(paramLong);
  }

  public boolean waitForCanceled(long paramLong)
  {
    return this._localHost.waitForCanceled(paramLong);
  }

  public static enum Operation
  {
    static
    {
      Add = new Operation("Add", 2);
      RegisterServiceType = new Operation("RegisterServiceType", 3);
      Noop = new Operation("Noop", 4);
      Operation[] arrayOfOperation = new Operation[5];
      arrayOfOperation[0] = Remove;
      arrayOfOperation[1] = Update;
      arrayOfOperation[2] = Add;
      arrayOfOperation[3] = RegisterServiceType;
      arrayOfOperation[4] = Noop;
      ENUM$VALUES = arrayOfOperation;
    }
  }

  private static class ServiceCollector
    implements ServiceListener
  {
    private final ConcurrentMap<String, ServiceEvent> _events = new ConcurrentHashMap();
    private final ConcurrentMap<String, ServiceInfo> _infos = new ConcurrentHashMap();
    private volatile boolean _needToWaitForInfos;
    private final String _type;

    public ServiceCollector(String paramString)
    {
      this._type = paramString;
      this._needToWaitForInfos = true;
    }

    public ServiceInfo[] list(long paramLong)
    {
      long l;
      int i;
      if ((this._infos.isEmpty()) || (!this._events.isEmpty()) || (this._needToWaitForInfos))
      {
        l = paramLong / 200L;
        if (l < 1L)
          l = 1L;
        i = 0;
      }
      while (true)
      {
        if (i >= l)
        {
          label56: this._needToWaitForInfos = false;
          return (ServiceInfo[])this._infos.values().toArray(new ServiceInfo[this._infos.size()]);
        }
        try
        {
          Thread.sleep(200L);
          label97: if ((this._events.isEmpty()) && (!this._infos.isEmpty()) && (!this._needToWaitForInfos))
            break label56;
          i++;
        }
        catch (InterruptedException localInterruptedException)
        {
          break label97;
        }
      }
    }

    // ERROR //
    public void serviceAdded(ServiceEvent paramServiceEvent)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_1
      //   3: invokevirtual 78	javax/jmdns/ServiceEvent:getInfo	()Ljavax/jmdns/ServiceInfo;
      //   6: astore_3
      //   7: aload_3
      //   8: ifnull +28 -> 36
      //   11: aload_3
      //   12: invokevirtual 81	javax/jmdns/ServiceInfo:hasData	()Z
      //   15: ifeq +21 -> 36
      //   18: aload_0
      //   19: getfield 28	javax/jmdns/impl/JmDNSImpl$ServiceCollector:_infos	Ljava/util/concurrent/ConcurrentMap;
      //   22: aload_1
      //   23: invokevirtual 85	javax/jmdns/ServiceEvent:getName	()Ljava/lang/String;
      //   26: aload_3
      //   27: invokeinterface 89 3 0
      //   32: pop
      //   33: aload_0
      //   34: monitorexit
      //   35: return
      //   36: aload_3
      //   37: ifnull +61 -> 98
      //   40: aload_3
      //   41: invokevirtual 92	javax/jmdns/ServiceInfo:getSubtype	()Ljava/lang/String;
      //   44: astore 4
      //   46: aload_1
      //   47: invokevirtual 96	javax/jmdns/ServiceEvent:getDNS	()Ljavax/jmdns/JmDNS;
      //   50: checkcast 8	javax/jmdns/impl/JmDNSImpl
      //   53: aload_1
      //   54: invokevirtual 99	javax/jmdns/ServiceEvent:getType	()Ljava/lang/String;
      //   57: aload_1
      //   58: invokevirtual 85	javax/jmdns/ServiceEvent:getName	()Ljava/lang/String;
      //   61: aload 4
      //   63: iconst_1
      //   64: invokevirtual 103	javax/jmdns/impl/JmDNSImpl:resolveServiceInfo	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
      //   67: astore 5
      //   69: aload 5
      //   71: ifnull +34 -> 105
      //   74: aload_0
      //   75: getfield 28	javax/jmdns/impl/JmDNSImpl$ServiceCollector:_infos	Ljava/util/concurrent/ConcurrentMap;
      //   78: aload_1
      //   79: invokevirtual 85	javax/jmdns/ServiceEvent:getName	()Ljava/lang/String;
      //   82: aload 5
      //   84: invokeinterface 89 3 0
      //   89: pop
      //   90: goto -57 -> 33
      //   93: astore_2
      //   94: aload_0
      //   95: monitorexit
      //   96: aload_2
      //   97: athrow
      //   98: ldc 105
      //   100: astore 4
      //   102: goto -56 -> 46
      //   105: aload_0
      //   106: getfield 30	javax/jmdns/impl/JmDNSImpl$ServiceCollector:_events	Ljava/util/concurrent/ConcurrentMap;
      //   109: aload_1
      //   110: invokevirtual 85	javax/jmdns/ServiceEvent:getName	()Ljava/lang/String;
      //   113: aload_1
      //   114: invokeinterface 89 3 0
      //   119: pop
      //   120: goto -87 -> 33
      //
      // Exception table:
      //   from	to	target	type
      //   2	96	93	finally
      //   98	120	93	finally
    }

    public void serviceRemoved(ServiceEvent paramServiceEvent)
    {
      monitorenter;
      try
      {
        this._infos.remove(paramServiceEvent.getName());
        this._events.remove(paramServiceEvent.getName());
        monitorexit;
        return;
      }
      finally
      {
        localObject = finally;
        monitorexit;
      }
      throw localObject;
    }

    public void serviceResolved(ServiceEvent paramServiceEvent)
    {
      monitorenter;
      try
      {
        this._infos.put(paramServiceEvent.getName(), paramServiceEvent.getInfo());
        this._events.remove(paramServiceEvent.getName());
        monitorexit;
        return;
      }
      finally
      {
        localObject = finally;
        monitorexit;
      }
      throw localObject;
    }

    public String toString()
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("\n\tType: " + this._type);
      if (this._infos.isEmpty())
      {
        localStringBuffer.append("\n\tNo services collected.");
        if (!this._events.isEmpty())
          break label164;
        localStringBuffer.append("\n\tNo event queued.");
      }
      while (true)
      {
        return localStringBuffer.toString();
        localStringBuffer.append("\n\tServices");
        Iterator localIterator1 = this._infos.keySet().iterator();
        while (localIterator1.hasNext())
        {
          String str1 = (String)localIterator1.next();
          localStringBuffer.append("\n\t\tService: " + str1 + ": " + this._infos.get(str1));
        }
        break;
        label164: localStringBuffer.append("\n\tEvents");
        Iterator localIterator2 = this._events.keySet().iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          localStringBuffer.append("\n\t\tEvent: " + str2 + ": " + this._events.get(str2));
        }
      }
    }
  }

  protected class Shutdown
    implements Runnable
  {
    protected Shutdown()
    {
    }

    public void run()
    {
      try
      {
        JmDNSImpl.this._shutdown = null;
        JmDNSImpl.this.close();
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          System.err.println("Error while shuting down. " + localThrowable);
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.JmDNSImpl
 * JD-Core Version:    0.6.0
 */