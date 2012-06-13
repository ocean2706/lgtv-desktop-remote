package javax.jmdns.impl;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;
import javax.jmdns.impl.constants.DNSState;
import javax.jmdns.impl.tasks.DNSTask;

public class HostInfo
  implements DNSStatefulObject
{
  private static Logger logger = Logger.getLogger(HostInfo.class.getName());
  protected InetAddress _address;
  protected NetworkInterface _interfaze;
  protected String _name;
  private final HostInfoState _state;
  private int hostNameCount;

  public HostInfo(InetAddress paramInetAddress, String paramString, JmDNSImpl paramJmDNSImpl)
  {
    this._state = new HostInfoState(paramJmDNSImpl);
    this._address = paramInetAddress;
    this._name = paramString;
    if (paramInetAddress != null);
    try
    {
      this._interfaze = NetworkInterface.getByInetAddress(paramInetAddress);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        logger.log(Level.WARNING, "LocalHostInfo() exception ", localException);
    }
  }

  private DNSRecord.Address getDNS4AddressRecord(int paramInt)
  {
    if (((getInetAddress() instanceof Inet4Address)) || (((getInetAddress() instanceof Inet6Address)) && (((Inet6Address)getInetAddress()).isIPv4CompatibleAddress())));
    for (DNSRecord.IPv4Address localIPv4Address = new DNSRecord.IPv4Address(getName(), DNSRecordClass.CLASS_IN, false, paramInt, getInetAddress()); ; localIPv4Address = null)
      return localIPv4Address;
  }

  private DNSRecord.Address getDNS6AddressRecord(int paramInt)
  {
    if ((getInetAddress() instanceof Inet6Address));
    for (DNSRecord.IPv6Address localIPv6Address = new DNSRecord.IPv6Address(getName(), DNSRecordClass.CLASS_IN, false, paramInt, getInetAddress()); ; localIPv6Address = null)
      return localIPv6Address;
  }

  public static HostInfo newHostInfo(InetAddress paramInetAddress, JmDNSImpl paramJmDNSImpl)
  {
    InetAddress localInetAddress = paramInetAddress;
    HostInfo localHostInfo;
    try
    {
      Object localObject;
      if (localInetAddress == null)
      {
        String str2 = System.getProperty("net.mdns.interface");
        if (str2 != null)
        {
          localInetAddress = InetAddress.getByName(str2);
          localObject = localInetAddress.getHostName();
          if (localInetAddress.isLoopbackAddress())
          {
            logger.warning("Could not find any address beside the loopback.");
            localInetAddress = null;
          }
        }
      }
      while (true)
      {
        int i = ((String)localObject).indexOf(".");
        if (i > 0)
          localObject = ((String)localObject).substring(0, i);
        localHostInfo = new HostInfo(localInetAddress, localObject + ".local.", paramJmDNSImpl);
        break label170;
        localInetAddress = InetAddress.getLocalHost();
        break;
        String str1 = localInetAddress.getHostName();
        localObject = str1;
      }
    }
    catch (IOException localIOException)
    {
      logger.warning("Could not intialize the host network interface because of an error: " + localIOException.getMessage());
      localHostInfo = new HostInfo(null, "computer", paramJmDNSImpl);
    }
    label170: return (HostInfo)localHostInfo;
  }

  public boolean advanceState(DNSTask paramDNSTask)
  {
    return this._state.advanceState(paramDNSTask);
  }

  public Collection<DNSRecord> answers(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    DNSRecord.Address localAddress1 = getDNS4AddressRecord(paramInt);
    if (localAddress1 != null)
      localArrayList.add(localAddress1);
    DNSRecord.Address localAddress2 = getDNS6AddressRecord(paramInt);
    if (localAddress2 != null)
      localArrayList.add(localAddress2);
    return localArrayList;
  }

  public void associateWithTask(DNSTask paramDNSTask, DNSState paramDNSState)
  {
    this._state.associateWithTask(paramDNSTask, paramDNSState);
  }

  public boolean cancelState()
  {
    return this._state.cancelState();
  }

  DNSRecord.Address getDNSAddressRecord(DNSRecordType paramDNSRecordType, int paramInt)
  {
    DNSRecord.Address localAddress;
    switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[paramDNSRecordType.ordinal()])
    {
    default:
      localAddress = null;
    case 2:
    case 29:
    }
    while (true)
    {
      return localAddress;
      localAddress = getDNS4AddressRecord(paramInt);
      continue;
      localAddress = getDNS6AddressRecord(paramInt);
    }
  }

  public JmDNSImpl getDns()
  {
    return this._state.getDns();
  }

  Inet4Address getInet4Address()
  {
    if ((getInetAddress() instanceof Inet4Address));
    for (Inet4Address localInet4Address = (Inet4Address)this._address; ; localInet4Address = null)
      return localInet4Address;
  }

  Inet6Address getInet6Address()
  {
    if ((getInetAddress() instanceof Inet6Address));
    for (Inet6Address localInet6Address = (Inet6Address)this._address; ; localInet6Address = null)
      return localInet6Address;
  }

  public InetAddress getInetAddress()
  {
    return this._address;
  }

  public NetworkInterface getInterface()
  {
    return this._interfaze;
  }

  public String getName()
  {
    return this._name;
  }

  /** @deprecated */
  String incrementHostName()
  {
    monitorenter;
    try
    {
      this.hostNameCount = (1 + this.hostNameCount);
      int i = this._name.indexOf(".local.");
      int j = this._name.lastIndexOf("-");
      String str1 = this._name;
      if (j == -1)
      {
        k = i;
        this._name = (str1.substring(0, k) + "-" + this.hostNameCount + ".local.");
        String str2 = this._name;
        return str2;
      }
      int k = j;
    }
    finally
    {
      monitorexit;
    }
  }

  public boolean isAnnounced()
  {
    return this._state.isAnnounced();
  }

  public boolean isAnnouncing()
  {
    return this._state.isAnnouncing();
  }

  public boolean isAssociatedWithTask(DNSTask paramDNSTask, DNSState paramDNSState)
  {
    return this._state.isAssociatedWithTask(paramDNSTask, paramDNSState);
  }

  public boolean isCanceled()
  {
    return this._state.isCanceled();
  }

  public boolean isCanceling()
  {
    return this._state.isCanceling();
  }

  public boolean isProbing()
  {
    return this._state.isProbing();
  }

  public boolean recoverState()
  {
    return this._state.recoverState();
  }

  public void removeAssociationWithTask(DNSTask paramDNSTask)
  {
    this._state.removeAssociationWithTask(paramDNSTask);
  }

  public boolean revertState()
  {
    return this._state.revertState();
  }

  boolean shouldIgnorePacket(DatagramPacket paramDatagramPacket)
  {
    int i = 0;
    if (getInetAddress() != null)
    {
      InetAddress localInetAddress = paramDatagramPacket.getAddress();
      if (localInetAddress != null)
      {
        if ((localInetAddress.isLinkLocalAddress()) && (!getInetAddress().isLinkLocalAddress()))
          i = 1;
        if ((localInetAddress.isLoopbackAddress()) && (!getInetAddress().isLoopbackAddress()))
          i = 1;
      }
    }
    return i;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(1024);
    localStringBuilder.append("local host info[");
    String str1;
    String str2;
    if (getName() != null)
    {
      str1 = getName();
      localStringBuilder.append(str1);
      localStringBuilder.append(", ");
      if (getInterface() == null)
        break label136;
      str2 = getInterface().getDisplayName();
      label61: localStringBuilder.append(str2);
      localStringBuilder.append(":");
      if (getInetAddress() == null)
        break label144;
    }
    label136: label144: for (String str3 = getInetAddress().getHostAddress(); ; str3 = "no address")
    {
      localStringBuilder.append(str3);
      localStringBuilder.append(", ");
      localStringBuilder.append(this._state);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      str1 = "no name";
      break;
      str2 = "???";
      break label61;
    }
  }

  public boolean waitForAnnounced(long paramLong)
  {
    return this._state.waitForAnnounced(paramLong);
  }

  public boolean waitForCanceled(long paramLong)
  {
    if (this._address == null);
    for (boolean bool = true; ; bool = this._state.waitForCanceled(paramLong))
      return bool;
  }

  private static final class HostInfoState extends DNSStatefulObject.DefaultImplementation
  {
    private static final long serialVersionUID = -8191476803620402088L;

    public HostInfoState(JmDNSImpl paramJmDNSImpl)
    {
      setDns(paramJmDNSImpl);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.HostInfo
 * JD-Core Version:    0.6.0
 */