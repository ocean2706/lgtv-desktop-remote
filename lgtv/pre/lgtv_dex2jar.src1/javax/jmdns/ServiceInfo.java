package javax.jmdns;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.Enumeration;
import java.util.Map;
import javax.jmdns.impl.ServiceInfoImpl;

public abstract class ServiceInfo
{
  public static final byte[] NO_VALUE = new byte[0];

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt1, paramInt2, paramInt3, false, paramString3);
  }

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, Map<String, ?> paramMap)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt1, paramInt2, paramInt3, false, paramMap);
  }

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString3)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt1, paramInt2, paramInt3, paramBoolean, paramString3);
  }

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, Map<String, ?> paramMap)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt1, paramInt2, paramInt3, paramBoolean, paramMap);
  }

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt1, paramInt2, paramInt3, paramBoolean, paramArrayOfByte);
  }

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt1, paramInt2, paramInt3, false, paramArrayOfByte);
  }

  public static ServiceInfo create(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    return new ServiceInfoImpl(paramString1, paramString2, "", paramInt, 0, 0, false, paramString3);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, String paramString4)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt1, paramInt2, paramInt3, false, paramString4);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, Map<String, ?> paramMap)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt1, paramInt2, paramInt3, false, paramMap);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString4)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt1, paramInt2, paramInt3, paramBoolean, paramString4);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, Map<String, ?> paramMap)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt1, paramInt2, paramInt3, paramBoolean, paramMap);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt1, paramInt2, paramInt3, paramBoolean, paramArrayOfByte);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt1, paramInt2, paramInt3, false, paramArrayOfByte);
  }

  public static ServiceInfo create(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    return new ServiceInfoImpl(paramString1, paramString2, paramString3, paramInt, 0, 0, false, paramString4);
  }

  public static ServiceInfo create(Map<Fields, String> paramMap, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, Map<String, ?> paramMap1)
  {
    return new ServiceInfoImpl(paramMap, paramInt1, paramInt2, paramInt3, paramBoolean, paramMap1);
  }

  @Deprecated
  public abstract InetAddress getAddress();

  public abstract String getApplication();

  public abstract String getDomain();

  public abstract String getHostAddress();

  public abstract Inet4Address getInet4Address();

  public abstract Inet6Address getInet6Address();

  public abstract InetAddress getInetAddress();

  public abstract String getName();

  public abstract String getNiceTextString();

  public abstract int getPort();

  public abstract int getPriority();

  public abstract byte[] getPropertyBytes(String paramString);

  public abstract Enumeration<String> getPropertyNames();

  public abstract String getPropertyString(String paramString);

  public abstract String getProtocol();

  public abstract String getQualifiedName();

  public abstract Map<Fields, String> getQualifiedNameMap();

  public abstract String getServer();

  public abstract String getSubtype();

  public abstract byte[] getTextBytes();

  @Deprecated
  public abstract String getTextString();

  public abstract String getType();

  public abstract String getTypeWithSubtype();

  public abstract String getURL();

  public abstract String getURL(String paramString);

  public abstract int getWeight();

  public abstract boolean hasData();

  public abstract boolean isPersistent();

  public abstract void setText(Map<String, ?> paramMap)
    throws IllegalStateException;

  public abstract void setText(byte[] paramArrayOfByte)
    throws IllegalStateException;

  public static enum Fields
  {
    static
    {
      Application = new Fields("Application", 2);
      Instance = new Fields("Instance", 3);
      Subtype = new Fields("Subtype", 4);
      Fields[] arrayOfFields = new Fields[5];
      arrayOfFields[0] = Domain;
      arrayOfFields[1] = Protocol;
      arrayOfFields[2] = Application;
      arrayOfFields[3] = Instance;
      arrayOfFields[4] = Subtype;
      ENUM$VALUES = arrayOfFields;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.ServiceInfo
 * JD-Core Version:    0.6.0
 */