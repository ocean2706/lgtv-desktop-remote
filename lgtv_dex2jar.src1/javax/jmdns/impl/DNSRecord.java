package javax.jmdns.impl;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceInfo.Fields;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public abstract class DNSRecord extends DNSEntry
{
  private static Logger logger = Logger.getLogger(DNSRecord.class.getName());
  private long _created;
  private InetAddress _source;
  private int _ttl;

  DNSRecord(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    this._ttl = paramInt;
    this._created = System.currentTimeMillis();
  }

  abstract DNSOutgoing addAnswer(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing)
    throws IOException;

  public boolean equals(Object paramObject)
  {
    if (((paramObject instanceof DNSRecord)) && (super.equals(paramObject)) && (sameValue((DNSRecord)paramObject)));
    for (int i = 1; ; i = 0)
      return i;
  }

  long getExpirationTime(int paramInt)
  {
    return this._created + 10L * (paramInt * this._ttl);
  }

  public InetAddress getRecordSource()
  {
    return this._source;
  }

  int getRemainingTTL(long paramLong)
  {
    return (int)Math.max(0L, (getExpirationTime(100) - paramLong) / 1000L);
  }

  public abstract ServiceEvent getServiceEvent(JmDNSImpl paramJmDNSImpl);

  public ServiceInfo getServiceInfo()
  {
    return getServiceInfo(false);
  }

  public abstract ServiceInfo getServiceInfo(boolean paramBoolean);

  public int getTTL()
  {
    return this._ttl;
  }

  abstract boolean handleQuery(JmDNSImpl paramJmDNSImpl, long paramLong);

  abstract boolean handleResponse(JmDNSImpl paramJmDNSImpl);

  public boolean isExpired(long paramLong)
  {
    if (getExpirationTime(100) <= paramLong);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isStale(long paramLong)
  {
    if (getExpirationTime(50) <= paramLong);
    for (int i = 1; ; i = 0)
      return i;
  }

  void resetTTL(DNSRecord paramDNSRecord)
  {
    this._created = paramDNSRecord._created;
    this._ttl = paramDNSRecord._ttl;
  }

  boolean sameType(DNSRecord paramDNSRecord)
  {
    if (getRecordType() == paramDNSRecord.getRecordType());
    for (int i = 1; ; i = 0)
      return i;
  }

  abstract boolean sameValue(DNSRecord paramDNSRecord);

  public void setRecordSource(InetAddress paramInetAddress)
  {
    this._source = paramInetAddress;
  }

  public void setTTL(int paramInt)
  {
    this._ttl = paramInt;
  }

  boolean suppressedBy(DNSIncoming paramDNSIncoming)
  {
    int i;
    try
    {
      Iterator localIterator = paramDNSIncoming.getAllAnswers().iterator();
      while (true)
        if (!localIterator.hasNext())
        {
          i = 0;
        }
        else
        {
          boolean bool = suppressedBy((DNSRecord)localIterator.next());
          if (!bool)
            continue;
          i = 1;
        }
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      logger.log(Level.WARNING, "suppressedBy() message " + paramDNSIncoming + " exception ", localArrayIndexOutOfBoundsException);
      i = 0;
    }
    return i;
  }

  boolean suppressedBy(DNSRecord paramDNSRecord)
  {
    if ((equals(paramDNSRecord)) && (paramDNSRecord._ttl > this._ttl / 2));
    for (int i = 1; ; i = 0)
      return i;
  }

  protected void toString(StringBuilder paramStringBuilder)
  {
    super.toString(paramStringBuilder);
    paramStringBuilder.append(" ttl: '" + getRemainingTTL(System.currentTimeMillis()) + "/" + this._ttl + "'");
  }

  abstract void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream);

  public static abstract class Address extends DNSRecord
  {
    private static Logger logger1 = Logger.getLogger(Address.class.getName());
    InetAddress _addr;

    protected Address(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, InetAddress paramInetAddress)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean, paramInt);
      this._addr = paramInetAddress;
    }

    protected Address(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean, paramInt);
      try
      {
        this._addr = InetAddress.getByAddress(paramArrayOfByte);
        return;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        while (true)
          logger1.log(Level.WARNING, "Address() exception ", localUnknownHostException);
      }
    }

    DNSOutgoing addAnswer(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing)
      throws IOException
    {
      return paramDNSOutgoing;
    }

    InetAddress getAddress()
    {
      return this._addr;
    }

    public ServiceEvent getServiceEvent(JmDNSImpl paramJmDNSImpl)
    {
      ServiceInfo localServiceInfo = getServiceInfo(false);
      ((ServiceInfoImpl)localServiceInfo).setDns(paramJmDNSImpl);
      return new ServiceEventImpl(paramJmDNSImpl, localServiceInfo.getType(), localServiceInfo.getName(), localServiceInfo);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      return new ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, paramBoolean, null);
    }

    boolean handleQuery(JmDNSImpl paramJmDNSImpl, long paramLong)
    {
      Address localAddress = paramJmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), 3600);
      Iterator localIterator;
      if ((localAddress != null) && (localAddress.sameType(this)) && (localAddress.sameName(this)) && (!localAddress.sameValue(this)))
      {
        logger1.finer("handleQuery() Conflicting probe detected. lex compare " + compareTo(localAddress));
        if ((paramJmDNSImpl.isProbing()) && (compareTo(localAddress) >= 0))
        {
          paramJmDNSImpl.getLocalHost().incrementHostName();
          paramJmDNSImpl.getCache().clear();
          localIterator = paramJmDNSImpl.getServices().values().iterator();
          if (localIterator.hasNext());
        }
        else
        {
          paramJmDNSImpl.revertState();
        }
      }
      for (int i = 1; ; i = 0)
      {
        return i;
        ((ServiceInfoImpl)(ServiceInfo)localIterator.next()).revertState();
        break;
      }
    }

    boolean handleResponse(JmDNSImpl paramJmDNSImpl)
    {
      Address localAddress = paramJmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), 3600);
      Iterator localIterator;
      if ((localAddress != null) && (localAddress.sameType(this)) && (localAddress.sameName(this)) && (!localAddress.sameValue(this)))
      {
        logger1.finer("handleResponse() Denial detected");
        if (paramJmDNSImpl.isProbing())
        {
          paramJmDNSImpl.getLocalHost().incrementHostName();
          paramJmDNSImpl.getCache().clear();
          localIterator = paramJmDNSImpl.getServices().values().iterator();
          if (localIterator.hasNext());
        }
        else
        {
          paramJmDNSImpl.revertState();
        }
      }
      for (int i = 1; ; i = 0)
      {
        return i;
        ((ServiceInfoImpl)(ServiceInfo)localIterator.next()).revertState();
        break;
      }
    }

    boolean same(DNSRecord paramDNSRecord)
    {
      if ((sameName(paramDNSRecord)) && (sameValue(paramDNSRecord)));
      for (int i = 1; ; i = 0)
        return i;
    }

    boolean sameName(DNSRecord paramDNSRecord)
    {
      return getName().equalsIgnoreCase(((Address)paramDNSRecord).getName());
    }

    boolean sameValue(DNSRecord paramDNSRecord)
    {
      return getAddress().equals(((Address)paramDNSRecord).getAddress());
    }

    protected void toByteArray(DataOutputStream paramDataOutputStream)
      throws IOException
    {
      super.toByteArray(paramDataOutputStream);
      byte[] arrayOfByte = getAddress().getAddress();
      for (int i = 0; ; i++)
      {
        if (i >= arrayOfByte.length)
          return;
        paramDataOutputStream.writeByte(arrayOfByte[i]);
      }
    }

    protected void toString(StringBuilder paramStringBuilder)
    {
      super.toString(paramStringBuilder);
      StringBuilder localStringBuilder = new StringBuilder(" address: '");
      if (getAddress() != null);
      for (String str = getAddress().getHostAddress(); ; str = "null")
      {
        paramStringBuilder.append(str + "'");
        return;
      }
    }
  }

  public static class HostInformation extends DNSRecord
  {
    String _cpu;
    String _os;

    public HostInformation(String paramString1, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, String paramString2, String paramString3)
    {
      super(DNSRecordType.TYPE_HINFO, paramDNSRecordClass, paramBoolean, paramInt);
      this._cpu = paramString2;
      this._os = paramString3;
    }

    DNSOutgoing addAnswer(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing)
      throws IOException
    {
      return paramDNSOutgoing;
    }

    public ServiceEvent getServiceEvent(JmDNSImpl paramJmDNSImpl)
    {
      ServiceInfo localServiceInfo = getServiceInfo(false);
      ((ServiceInfoImpl)localServiceInfo).setDns(paramJmDNSImpl);
      return new ServiceEventImpl(paramJmDNSImpl, localServiceInfo.getType(), localServiceInfo.getName(), localServiceInfo);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      HashMap localHashMap = new HashMap(2);
      localHashMap.put("cpu", this._cpu);
      localHashMap.put("os", this._os);
      return new ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, paramBoolean, localHashMap);
    }

    boolean handleQuery(JmDNSImpl paramJmDNSImpl, long paramLong)
    {
      return false;
    }

    boolean handleResponse(JmDNSImpl paramJmDNSImpl)
    {
      return false;
    }

    boolean sameValue(DNSRecord paramDNSRecord)
    {
      HostInformation localHostInformation = (HostInformation)paramDNSRecord;
      if ((this._cpu.equals(localHostInformation._cpu)) && (this._os.equals(localHostInformation._os)));
      for (int i = 1; ; i = 0)
        return i;
    }

    protected void toString(StringBuilder paramStringBuilder)
    {
      super.toString(paramStringBuilder);
      paramStringBuilder.append(" cpu: '" + this._cpu + "' os: '" + this._os + "'");
    }

    void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream)
    {
      String str = this._cpu + " " + this._os;
      paramMessageOutputStream.writeUTF(str, 0, str.length());
    }
  }

  public static class IPv4Address extends DNSRecord.Address
  {
    IPv4Address(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, InetAddress paramInetAddress)
    {
      super(DNSRecordType.TYPE_A, paramDNSRecordClass, paramBoolean, paramInt, paramInetAddress);
    }

    IPv4Address(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
    {
      super(DNSRecordType.TYPE_A, paramDNSRecordClass, paramBoolean, paramInt, paramArrayOfByte);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)super.getServiceInfo(paramBoolean);
      localServiceInfoImpl.setAddress((Inet4Address)this._addr);
      return localServiceInfoImpl;
    }

    void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream)
    {
      if (this._addr != null)
      {
        byte[] arrayOfByte1 = this._addr.getAddress();
        if (!(this._addr instanceof Inet4Address))
        {
          byte[] arrayOfByte2 = arrayOfByte1;
          arrayOfByte1 = new byte[4];
          System.arraycopy(arrayOfByte2, 12, arrayOfByte1, 0, 4);
        }
        paramMessageOutputStream.writeBytes(arrayOfByte1, 0, arrayOfByte1.length);
      }
    }
  }

  public static class IPv6Address extends DNSRecord.Address
  {
    IPv6Address(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, InetAddress paramInetAddress)
    {
      super(DNSRecordType.TYPE_AAAA, paramDNSRecordClass, paramBoolean, paramInt, paramInetAddress);
    }

    IPv6Address(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
    {
      super(DNSRecordType.TYPE_AAAA, paramDNSRecordClass, paramBoolean, paramInt, paramArrayOfByte);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)super.getServiceInfo(paramBoolean);
      localServiceInfoImpl.setAddress((Inet6Address)this._addr);
      return localServiceInfoImpl;
    }

    void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream)
    {
      byte[] arrayOfByte1;
      byte[] arrayOfByte2;
      int i;
      if (this._addr != null)
      {
        arrayOfByte1 = this._addr.getAddress();
        if ((this._addr instanceof Inet4Address))
        {
          arrayOfByte2 = arrayOfByte1;
          arrayOfByte1 = new byte[16];
          i = 0;
          if (i < 16);
        }
        else
        {
          paramMessageOutputStream.writeBytes(arrayOfByte1, 0, arrayOfByte1.length);
        }
      }
      else
      {
        return;
      }
      if (i < 11)
        arrayOfByte1[i] = arrayOfByte2[(i - 12)];
      while (true)
      {
        i++;
        break;
        arrayOfByte1[i] = 0;
      }
    }
  }

  public static class Pointer extends DNSRecord
  {
    String _alias;

    public Pointer(String paramString1, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, String paramString2)
    {
      super(DNSRecordType.TYPE_PTR, paramDNSRecordClass, paramBoolean, paramInt);
      this._alias = paramString2;
    }

    DNSOutgoing addAnswer(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing)
      throws IOException
    {
      return paramDNSOutgoing;
    }

    String getAlias()
    {
      return this._alias;
    }

    public ServiceEvent getServiceEvent(JmDNSImpl paramJmDNSImpl)
    {
      ServiceInfo localServiceInfo = getServiceInfo(false);
      ((ServiceInfoImpl)localServiceInfo).setDns(paramJmDNSImpl);
      String str = localServiceInfo.getType();
      return new ServiceEventImpl(paramJmDNSImpl, str, JmDNSImpl.toUnqualifiedName(str, getAlias()), localServiceInfo);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      ServiceInfoImpl localServiceInfoImpl;
      if (isServicesDiscoveryMetaQuery())
        localServiceInfoImpl = new ServiceInfoImpl(ServiceInfoImpl.decodeQualifiedNameMapForType(getAlias()), 0, 0, 0, paramBoolean, null);
      while (true)
      {
        return localServiceInfoImpl;
        if (isDomainDiscoveryQuery())
        {
          localServiceInfoImpl = new ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, paramBoolean, null);
          continue;
        }
        if (isReverseLookup())
        {
          localServiceInfoImpl = new ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, paramBoolean, null);
          continue;
        }
        Map localMap = ServiceInfoImpl.decodeQualifiedNameMapForType(getAlias());
        localMap.put(ServiceInfo.Fields.Subtype, (String)getQualifiedNameMap().get(ServiceInfo.Fields.Subtype));
        localServiceInfoImpl = new ServiceInfoImpl(localMap, 0, 0, 0, paramBoolean, getAlias());
      }
    }

    boolean handleQuery(JmDNSImpl paramJmDNSImpl, long paramLong)
    {
      return false;
    }

    boolean handleResponse(JmDNSImpl paramJmDNSImpl)
    {
      return false;
    }

    public boolean isSameEntry(DNSEntry paramDNSEntry)
    {
      if ((super.isSameEntry(paramDNSEntry)) && ((paramDNSEntry instanceof Pointer)) && (sameValue((Pointer)paramDNSEntry)));
      for (int i = 1; ; i = 0)
        return i;
    }

    boolean sameValue(DNSRecord paramDNSRecord)
    {
      return this._alias.equals(((Pointer)paramDNSRecord)._alias);
    }

    protected void toString(StringBuilder paramStringBuilder)
    {
      super.toString(paramStringBuilder);
      StringBuilder localStringBuilder = new StringBuilder(" alias: '");
      if (this._alias != null);
      for (String str = this._alias.toString(); ; str = "null")
      {
        paramStringBuilder.append(str + "'");
        return;
      }
    }

    void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream)
    {
      paramMessageOutputStream.writeName(this._alias, false);
    }
  }

  public static class Service extends DNSRecord
  {
    private static Logger logger1 = Logger.getLogger(Service.class.getName());
    private int _port;
    private int _priority;
    private String _server;
    private int _weight;

    public Service(String paramString1, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString2)
    {
      super(DNSRecordType.TYPE_SRV, paramDNSRecordClass, paramBoolean, paramInt1);
      this._priority = paramInt2;
      this._weight = paramInt3;
      this._port = paramInt4;
      this._server = paramString2;
    }

    DNSOutgoing addAnswer(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing)
      throws IOException
    {
      ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)paramJmDNSImpl.getServices().get(getKey());
      int i;
      if (localServiceInfoImpl != null)
        if (this._port == localServiceInfoImpl.getPort())
        {
          i = 1;
          if (i == this._server.equals(paramJmDNSImpl.getLocalHost().getName()))
            break label119;
        }
      label119: for (DNSOutgoing localDNSOutgoing = paramJmDNSImpl.addAnswer(paramDNSIncoming, paramInetAddress, paramInt, paramDNSOutgoing, new Service(localServiceInfoImpl.getQualifiedName(), DNSRecordClass.CLASS_IN, true, 3600, localServiceInfoImpl.getPriority(), localServiceInfoImpl.getWeight(), localServiceInfoImpl.getPort(), paramJmDNSImpl.getLocalHost().getName())); ; localDNSOutgoing = paramDNSOutgoing)
      {
        return localDNSOutgoing;
        i = 0;
        break;
      }
    }

    public int getPort()
    {
      return this._port;
    }

    public int getPriority()
    {
      return this._priority;
    }

    String getServer()
    {
      return this._server;
    }

    public ServiceEvent getServiceEvent(JmDNSImpl paramJmDNSImpl)
    {
      ServiceInfo localServiceInfo = getServiceInfo(false);
      ((ServiceInfoImpl)localServiceInfo).setDns(paramJmDNSImpl);
      return new ServiceEventImpl(paramJmDNSImpl, localServiceInfo.getType(), localServiceInfo.getName(), localServiceInfo);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      return new ServiceInfoImpl(getQualifiedNameMap(), this._port, this._weight, this._priority, paramBoolean, this._server);
    }

    public int getWeight()
    {
      return this._weight;
    }

    boolean handleQuery(JmDNSImpl paramJmDNSImpl, long paramLong)
    {
      ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)paramJmDNSImpl.getServices().get(getKey());
      Service localService;
      if ((localServiceInfoImpl != null) && ((this._port != localServiceInfoImpl.getPort()) || (!this._server.equalsIgnoreCase(paramJmDNSImpl.getLocalHost().getName()))))
      {
        logger1.finer("handleQuery() Conflicting probe detected from: " + getRecordSource());
        localService = new Service(localServiceInfoImpl.getQualifiedName(), DNSRecordClass.CLASS_IN, true, 3600, localServiceInfoImpl.getPriority(), localServiceInfoImpl.getWeight(), localServiceInfoImpl.getPort(), paramJmDNSImpl.getLocalHost().getName());
      }
      while (true)
      {
        try
        {
          if (!paramJmDNSImpl.getInterface().equals(getRecordSource()))
            continue;
          logger1.warning("Got conflicting probe from ourselves\nincoming: " + toString() + "\n" + "local   : " + localService.toString());
          j = compareTo(localService);
          if (j != 0)
            continue;
          logger1.finer("handleQuery() Ignoring a identical service query");
          i = 0;
          return i;
        }
        catch (IOException localIOException)
        {
          int j;
          localIOException.printStackTrace();
          continue;
          if ((!localServiceInfoImpl.isProbing()) || (j <= 0))
            continue;
          String str = localServiceInfoImpl.getQualifiedName().toLowerCase();
          localServiceInfoImpl.setName(paramJmDNSImpl.incrementName(localServiceInfoImpl.getName()));
          paramJmDNSImpl.getServices().remove(str);
          paramJmDNSImpl.getServices().put(localServiceInfoImpl.getQualifiedName().toLowerCase(), localServiceInfoImpl);
          logger1.finer("handleQuery() Lost tie break: new unique name chosen:" + localServiceInfoImpl.getName());
          localServiceInfoImpl.revertState();
          i = 1;
          continue;
          i = 0;
          continue;
        }
        int i = 0;
      }
    }

    boolean handleResponse(JmDNSImpl paramJmDNSImpl)
    {
      ServiceInfoImpl localServiceInfoImpl = (ServiceInfoImpl)paramJmDNSImpl.getServices().get(getKey());
      if ((localServiceInfoImpl != null) && ((this._port != localServiceInfoImpl.getPort()) || (!this._server.equalsIgnoreCase(paramJmDNSImpl.getLocalHost().getName()))))
      {
        logger1.finer("handleResponse() Denial detected");
        if (localServiceInfoImpl.isProbing())
        {
          String str = localServiceInfoImpl.getQualifiedName().toLowerCase();
          localServiceInfoImpl.setName(paramJmDNSImpl.incrementName(localServiceInfoImpl.getName()));
          paramJmDNSImpl.getServices().remove(str);
          paramJmDNSImpl.getServices().put(localServiceInfoImpl.getQualifiedName().toLowerCase(), localServiceInfoImpl);
          logger1.finer("handleResponse() New unique name chose:" + localServiceInfoImpl.getName());
        }
        localServiceInfoImpl.revertState();
      }
      for (int i = 1; ; i = 0)
        return i;
    }

    boolean sameValue(DNSRecord paramDNSRecord)
    {
      Service localService = (Service)paramDNSRecord;
      if ((this._priority == localService._priority) && (this._weight == localService._weight) && (this._port == localService._port) && (this._server.equals(localService._server)));
      for (int i = 1; ; i = 0)
        return i;
    }

    protected void toByteArray(DataOutputStream paramDataOutputStream)
      throws IOException
    {
      super.toByteArray(paramDataOutputStream);
      paramDataOutputStream.writeShort(this._priority);
      paramDataOutputStream.writeShort(this._weight);
      paramDataOutputStream.writeShort(this._port);
      try
      {
        paramDataOutputStream.write(this._server.getBytes("UTF-8"));
        label42: return;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        break label42;
      }
    }

    protected void toString(StringBuilder paramStringBuilder)
    {
      super.toString(paramStringBuilder);
      paramStringBuilder.append(" server: '" + this._server + ":" + this._port + "'");
    }

    void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream)
    {
      paramMessageOutputStream.writeShort(this._priority);
      paramMessageOutputStream.writeShort(this._weight);
      paramMessageOutputStream.writeShort(this._port);
      if (DNSIncoming.USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET)
        paramMessageOutputStream.writeName(this._server, false);
      while (true)
      {
        return;
        paramMessageOutputStream.writeUTF(this._server, 0, this._server.length());
        paramMessageOutputStream.writeByte(0);
      }
    }
  }

  public static class Text extends DNSRecord
  {
    byte[] _text;

    public Text(String paramString, DNSRecordClass paramDNSRecordClass, boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
    {
      super(DNSRecordType.TYPE_TXT, paramDNSRecordClass, paramBoolean, paramInt);
      this._text = paramArrayOfByte;
    }

    DNSOutgoing addAnswer(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, InetAddress paramInetAddress, int paramInt, DNSOutgoing paramDNSOutgoing)
      throws IOException
    {
      return paramDNSOutgoing;
    }

    public ServiceEvent getServiceEvent(JmDNSImpl paramJmDNSImpl)
    {
      ServiceInfo localServiceInfo = getServiceInfo(false);
      ((ServiceInfoImpl)localServiceInfo).setDns(paramJmDNSImpl);
      return new ServiceEventImpl(paramJmDNSImpl, localServiceInfo.getType(), localServiceInfo.getName(), localServiceInfo);
    }

    public ServiceInfo getServiceInfo(boolean paramBoolean)
    {
      return new ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, paramBoolean, this._text);
    }

    boolean handleQuery(JmDNSImpl paramJmDNSImpl, long paramLong)
    {
      return false;
    }

    boolean handleResponse(JmDNSImpl paramJmDNSImpl)
    {
      return false;
    }

    boolean sameValue(DNSRecord paramDNSRecord)
    {
      Text localText = (Text)paramDNSRecord;
      int k;
      if (localText._text.length != this._text.length)
      {
        k = 0;
        return k;
      }
      int j;
      for (int i = this._text.length; ; i = j)
      {
        j = i - 1;
        if (i <= 0)
        {
          k = 1;
          break;
        }
        if (localText._text[j] == this._text[j])
          continue;
        k = 0;
        break;
      }
    }

    protected void toString(StringBuilder paramStringBuilder)
    {
      super.toString(paramStringBuilder);
      StringBuilder localStringBuilder = new StringBuilder(" text: '");
      if (this._text.length > 20);
      for (String str = new String(this._text, 0, 17) + "..."; ; str = new String(this._text))
      {
        paramStringBuilder.append(str + "'");
        return;
      }
    }

    void write(DNSOutgoing.MessageOutputStream paramMessageOutputStream)
    {
      paramMessageOutputStream.writeBytes(this._text, 0, this._text.length);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSRecord
 * JD-Core Version:    0.6.0
 */