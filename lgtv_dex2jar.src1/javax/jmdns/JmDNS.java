package javax.jmdns;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Map;
import javax.jmdns.impl.JmDNSImpl;

public abstract class JmDNS
{
  public static String VERSION = "3.2.0";

  public static JmDNS create()
    throws IOException
  {
    return new JmDNSImpl(null, null);
  }

  public static JmDNS create(String paramString)
    throws IOException
  {
    return new JmDNSImpl(null, paramString);
  }

  public static JmDNS create(InetAddress paramInetAddress)
    throws IOException
  {
    return new JmDNSImpl(paramInetAddress, null);
  }

  public static JmDNS create(InetAddress paramInetAddress, String paramString)
    throws IOException
  {
    return new JmDNSImpl(paramInetAddress, paramString);
  }

  public abstract void addServiceListener(String paramString, ServiceListener paramServiceListener);

  public abstract void addServiceTypeListener(ServiceTypeListener paramServiceTypeListener)
    throws IOException;

  public abstract void close();

  public abstract String getHostName();

  public abstract InetAddress getInterface()
    throws IOException;

  public abstract String getName();

  public abstract ServiceInfo getServiceInfo(String paramString1, String paramString2);

  public abstract ServiceInfo getServiceInfo(String paramString1, String paramString2, long paramLong);

  public abstract ServiceInfo getServiceInfo(String paramString1, String paramString2, boolean paramBoolean);

  public abstract ServiceInfo getServiceInfo(String paramString1, String paramString2, boolean paramBoolean, long paramLong);

  public abstract ServiceInfo[] list(String paramString);

  public abstract ServiceInfo[] list(String paramString, long paramLong);

  public abstract Map<String, ServiceInfo[]> listBySubtype(String paramString);

  public abstract Map<String, ServiceInfo[]> listBySubtype(String paramString, long paramLong);

  public abstract void printServices();

  public abstract void registerService(ServiceInfo paramServiceInfo)
    throws IOException;

  public abstract boolean registerServiceType(String paramString);

  public abstract void removeServiceListener(String paramString, ServiceListener paramServiceListener);

  public abstract void removeServiceTypeListener(ServiceTypeListener paramServiceTypeListener);

  public abstract void requestServiceInfo(String paramString1, String paramString2);

  public abstract void requestServiceInfo(String paramString1, String paramString2, long paramLong);

  public abstract void requestServiceInfo(String paramString1, String paramString2, boolean paramBoolean);

  public abstract void requestServiceInfo(String paramString1, String paramString2, boolean paramBoolean, long paramLong);

  public abstract void unregisterAllServices();

  public abstract void unregisterService(ServiceInfo paramServiceInfo);
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.JmDNS
 * JD-Core Version:    0.6.0
 */