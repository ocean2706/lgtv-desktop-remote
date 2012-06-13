package javax.jmdns.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceInfo.Fields;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;
import javax.jmdns.impl.constants.DNSState;
import javax.jmdns.impl.tasks.DNSTask;

public class ServiceInfoImpl extends ServiceInfo
  implements DNSListener, Cloneable, DNSStatefulObject
{
  private String _application;
  private String _domain;
  private Inet4Address _ipv4Addr;
  private Inet6Address _ipv6Addr;
  private String _name;
  private boolean _needTextAnnouncing;
  private boolean _persistent;
  private int _port;
  private int _priority;
  private Map<String, byte[]> _props;
  private String _protocol;
  private String _server;
  private final ServiceInfoState _state;
  private String _subtype;
  private byte[] _text;
  private int _weight;

  public ServiceInfoImpl(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString4)
  {
    this(decodeQualifiedNameMap(paramString1, paramString2, paramString3), paramInt1, paramInt2, paramInt3, paramBoolean, null);
    this._server = paramString4;
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString4.length());
      writeUTF(localByteArrayOutputStream, paramString4);
      this._text = localByteArrayOutputStream.toByteArray();
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("unexpected exception: " + localIOException);
  }

  public ServiceInfoImpl(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, Map<String, ?> paramMap)
  {
    this(decodeQualifiedNameMap(paramString1, paramString2, paramString3), paramInt1, paramInt2, paramInt3, paramBoolean, textFromProperties(paramMap));
  }

  public ServiceInfoImpl(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    this(decodeQualifiedNameMap(paramString1, paramString2, paramString3), paramInt1, paramInt2, paramInt3, paramBoolean, paramArrayOfByte);
  }

  ServiceInfoImpl(Map<ServiceInfo.Fields, String> paramMap, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString)
  {
    this(paramMap, paramInt1, paramInt2, paramInt3, paramBoolean, null);
    this._server = paramString;
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(paramString.length());
      writeUTF(localByteArrayOutputStream, paramString);
      this._text = localByteArrayOutputStream.toByteArray();
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("unexpected exception: " + localIOException);
  }

  public ServiceInfoImpl(Map<ServiceInfo.Fields, String> paramMap, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, Map<String, ?> paramMap1)
  {
    this(paramMap, paramInt1, paramInt2, paramInt3, paramBoolean, textFromProperties(paramMap1));
  }

  ServiceInfoImpl(Map<ServiceInfo.Fields, String> paramMap, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    Map localMap = checkQualifiedNameMap(paramMap);
    this._domain = ((String)localMap.get(ServiceInfo.Fields.Domain));
    this._protocol = ((String)localMap.get(ServiceInfo.Fields.Protocol));
    this._application = ((String)localMap.get(ServiceInfo.Fields.Application));
    this._name = ((String)localMap.get(ServiceInfo.Fields.Instance));
    this._subtype = ((String)localMap.get(ServiceInfo.Fields.Subtype));
    this._port = paramInt1;
    this._weight = paramInt2;
    this._priority = paramInt3;
    this._text = paramArrayOfByte;
    setNeedTextAnnouncing(false);
    this._state = new ServiceInfoState(this);
    this._persistent = paramBoolean;
  }

  public ServiceInfoImpl(ServiceInfo paramServiceInfo)
  {
    if (paramServiceInfo != null)
    {
      this._domain = paramServiceInfo.getDomain();
      this._protocol = paramServiceInfo.getProtocol();
      this._application = paramServiceInfo.getApplication();
      this._name = paramServiceInfo.getName();
      this._subtype = paramServiceInfo.getSubtype();
      this._port = paramServiceInfo.getPort();
      this._weight = paramServiceInfo.getWeight();
      this._priority = paramServiceInfo.getPriority();
      this._text = paramServiceInfo.getTextBytes();
      this._persistent = paramServiceInfo.isPersistent();
      this._ipv4Addr = paramServiceInfo.getInet4Address();
      this._ipv6Addr = paramServiceInfo.getInet6Address();
    }
    this._state = new ServiceInfoState(this);
  }

  protected static Map<ServiceInfo.Fields, String> checkQualifiedNameMap(Map<ServiceInfo.Fields, String> paramMap)
  {
    HashMap localHashMap = new HashMap(5);
    String str1;
    String str3;
    label91: String str5;
    if (paramMap.containsKey(ServiceInfo.Fields.Domain))
    {
      str1 = (String)paramMap.get(ServiceInfo.Fields.Domain);
      if ((str1 == null) || (str1.length() == 0))
        str1 = "local";
      String str2 = removeSeparators(str1);
      localHashMap.put(ServiceInfo.Fields.Domain, str2);
      if (!paramMap.containsKey(ServiceInfo.Fields.Protocol))
        break label248;
      str3 = (String)paramMap.get(ServiceInfo.Fields.Protocol);
      if ((str3 == null) || (str3.length() == 0))
        str3 = "tcp";
      String str4 = removeSeparators(str3);
      localHashMap.put(ServiceInfo.Fields.Protocol, str4);
      if (!paramMap.containsKey(ServiceInfo.Fields.Application))
        break label256;
      str5 = (String)paramMap.get(ServiceInfo.Fields.Application);
      label154: if ((str5 == null) || (str5.length() == 0))
        str5 = "";
      String str6 = removeSeparators(str5);
      localHashMap.put(ServiceInfo.Fields.Application, str6);
      if (!paramMap.containsKey(ServiceInfo.Fields.Instance))
        break label264;
    }
    label256: label264: for (String str7 = (String)paramMap.get(ServiceInfo.Fields.Instance); ; str7 = "")
    {
      if ((str7 != null) && (str7.length() != 0))
        break label272;
      throw new IllegalArgumentException("The instance name component of a fully qualified service cannot be empty.");
      str1 = "local";
      break;
      label248: str3 = "tcp";
      break label91;
      str5 = "";
      break label154;
    }
    label272: String str8 = removeSeparators(str7);
    localHashMap.put(ServiceInfo.Fields.Instance, str8);
    if (paramMap.containsKey(ServiceInfo.Fields.Subtype));
    for (String str9 = (String)paramMap.get(ServiceInfo.Fields.Subtype); ; str9 = "")
    {
      if ((str8 != null) && (str8.length() == 0));
      String str10 = removeSeparators(str9);
      localHashMap.put(ServiceInfo.Fields.Subtype, str10);
      return localHashMap;
    }
  }

  public static Map<ServiceInfo.Fields, String> decodeQualifiedNameMap(String paramString1, String paramString2, String paramString3)
  {
    Map localMap = decodeQualifiedNameMapForType(paramString1);
    localMap.put(ServiceInfo.Fields.Instance, paramString2);
    localMap.put(ServiceInfo.Fields.Subtype, paramString3);
    return checkQualifiedNameMap(localMap);
  }

  public static Map<ServiceInfo.Fields, String> decodeQualifiedNameMapForType(String paramString)
  {
    String str1 = paramString.toLowerCase();
    HashMap localHashMap = new HashMap(5);
    String str2 = "";
    String str3 = "";
    String str4 = str1;
    String str5 = "";
    String str6 = "";
    int i;
    String str7;
    if ((str1.contains("in-addr.arpa")) || (str1.contains("ip6.arpa")))
      if (str1.contains("in-addr.arpa"))
      {
        i = str1.indexOf("in-addr.arpa");
        str5 = removeSeparators(str1.substring(0, i));
        str2 = removeSeparators(str1.substring(i));
        str3 = "";
        str7 = "";
      }
    while (true)
    {
      localHashMap.put(ServiceInfo.Fields.Domain, str2);
      localHashMap.put(ServiceInfo.Fields.Protocol, str3);
      localHashMap.put(ServiceInfo.Fields.Application, str7);
      localHashMap.put(ServiceInfo.Fields.Instance, str5);
      localHashMap.put(ServiceInfo.Fields.Subtype, str6);
      return localHashMap;
      i = str1.indexOf("ip6.arpa");
      break;
      if ((!str1.contains("_")) && (str1.contains(".")))
      {
        int i3 = str1.indexOf('.');
        str5 = removeSeparators(str1.substring(0, i3));
        str2 = removeSeparators(str1.substring(i3));
        str3 = "";
        str7 = "";
        continue;
      }
      if ((!str1.startsWith("_")) || (str1.startsWith("_services")))
      {
        int j = str1.indexOf('.');
        if (j > 0)
        {
          str5 = paramString.substring(0, j);
          if (j + 1 < str1.length())
            str1 = str1.substring(j + 1);
        }
      }
      int k = str1.lastIndexOf("._");
      if (k > 0)
      {
        int i2 = k + 2;
        str3 = str1.substring(i2, str1.indexOf('.', i2));
      }
      if (str3.length() > 0)
      {
        int i1 = str1.indexOf(str3);
        str2 = str1.substring(1 + (i1 + str3.length()), str1.length() - 1);
        str4 = str1.substring(0, i1 - 2);
      }
      int m = str4.indexOf("._sub");
      if (m > 0)
      {
        int n = m + 5;
        str6 = removeSeparators(str4.substring(0, m));
        str4 = removeSeparators(str4.substring(n));
      }
      str7 = removeSeparators(str4);
    }
  }

  private static String removeSeparators(String paramString)
  {
    String str = paramString.trim();
    if (str.startsWith("."))
      str = str.substring(1);
    if (str.startsWith("_"))
      str = str.substring(1);
    if (str.endsWith("."))
      str = str.substring(0, str.length() - 1);
    return str;
  }

  private static byte[] textFromProperties(Map<String, ?> paramMap)
  {
    if (paramMap != null)
      while (true)
      {
        Object localObject;
        ByteArrayOutputStream localByteArrayOutputStream2;
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream1 = new ByteArrayOutputStream(256);
          Iterator localIterator = paramMap.keySet().iterator();
          if (localIterator.hasNext())
            continue;
          arrayOfByte1 = localByteArrayOutputStream1.toByteArray();
          break;
          String str1 = (String)localIterator.next();
          localObject = paramMap.get(str1);
          localByteArrayOutputStream2 = new ByteArrayOutputStream(100);
          writeUTF(localByteArrayOutputStream2, str1);
          if (localObject == NO_VALUE)
            continue;
          if ((localObject instanceof String))
          {
            localByteArrayOutputStream2.write(61);
            writeUTF(localByteArrayOutputStream2, (String)localObject);
            byte[] arrayOfByte2 = localByteArrayOutputStream2.toByteArray();
            if (arrayOfByte2.length <= 255)
              continue;
            StringBuilder localStringBuilder = new StringBuilder("Cannot have individual values larger that 255 chars. Offending value: ").append(str1);
            if (localObject == NO_VALUE)
              break label324;
            str2 = "=" + localObject;
            new IOException(str2);
            localByteArrayOutputStream1.write((byte)arrayOfByte2.length);
            localByteArrayOutputStream1.write(arrayOfByte2, 0, arrayOfByte2.length);
            continue;
          }
        }
        catch (IOException localIOException)
        {
          throw new RuntimeException("unexpected exception: " + localIOException);
        }
        if (((localObject instanceof byte[])) && (((byte[])localObject).length > 0))
        {
          localByteArrayOutputStream2.write(61);
          byte[] arrayOfByte3 = (byte[])localObject;
          localByteArrayOutputStream2.write(arrayOfByte3, 0, arrayOfByte3.length);
          continue;
        }
        if (localObject == NO_VALUE)
          continue;
        throw new IllegalArgumentException("invalid property value: " + localObject);
        label324: String str2 = "";
      }
    byte[] arrayOfByte1 = new byte[0];
    return arrayOfByte1;
  }

  static void writeUTF(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    int i = 0;
    int j = paramString.length();
    if (i >= j)
      return;
    int k = paramString.charAt(i);
    if ((k >= 1) && (k <= 127))
      paramOutputStream.write(k);
    while (true)
    {
      i++;
      break;
      if (k > 2047)
      {
        paramOutputStream.write(0xE0 | 0xF & k >> 12);
        paramOutputStream.write(0x80 | 0x3F & k >> 6);
        paramOutputStream.write(0x80 | 0x3F & k >> 0);
        continue;
      }
      paramOutputStream.write(0xC0 | 0x1F & k >> 6);
      paramOutputStream.write(0x80 | 0x3F & k >> 0);
    }
  }

  void _setText(byte[] paramArrayOfByte)
  {
    this._text = paramArrayOfByte;
  }

  public boolean advanceState(DNSTask paramDNSTask)
  {
    return this._state.advanceState(paramDNSTask);
  }

  public Collection<DNSRecord> answers(int paramInt, HostInfo paramHostInfo)
  {
    ArrayList localArrayList = new ArrayList();
    if (getSubtype().length() > 0)
      localArrayList.add(new DNSRecord.Pointer(getTypeWithSubtype(), DNSRecordClass.CLASS_IN, false, paramInt, getQualifiedName()));
    localArrayList.add(new DNSRecord.Pointer(getType(), DNSRecordClass.CLASS_IN, false, paramInt, getQualifiedName()));
    localArrayList.add(new DNSRecord.Service(getQualifiedName(), DNSRecordClass.CLASS_IN, true, paramInt, this._priority, this._weight, this._port, paramHostInfo.getName()));
    localArrayList.add(new DNSRecord.Text(getQualifiedName(), DNSRecordClass.CLASS_IN, true, paramInt, getText()));
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

  public Object clone()
  {
    return new ServiceInfoImpl(getQualifiedNameMap(), this._port, this._weight, this._priority, this._persistent, this._text);
  }

  public boolean equals(Object paramObject)
  {
    if (((paramObject instanceof ServiceInfoImpl)) && (getQualifiedName().equals(((ServiceInfoImpl)paramObject).getQualifiedName())));
    for (int i = 1; ; i = 0)
      return i;
  }

  public InetAddress getAddress()
  {
    return getInetAddress();
  }

  public String getApplication()
  {
    if (this._application != null);
    for (String str = this._application; ; str = "")
      return str;
  }

  public JmDNSImpl getDns()
  {
    return this._state.getDns();
  }

  public String getDomain()
  {
    if (this._domain != null);
    for (String str = this._domain; ; str = "local")
      return str;
  }

  public String getHostAddress()
  {
    if (getInetAddress() != null);
    for (String str = getInetAddress().getHostAddress(); ; str = "")
      return str;
  }

  public Inet4Address getInet4Address()
  {
    return this._ipv4Addr;
  }

  public Inet6Address getInet6Address()
  {
    return this._ipv6Addr;
  }

  public InetAddress getInetAddress()
  {
    if (this._ipv4Addr != null);
    for (Object localObject = this._ipv4Addr; ; localObject = this._ipv6Addr)
      return localObject;
  }

  public String getName()
  {
    if (this._name != null);
    for (String str = this._name; ; str = "")
      return str;
  }

  public String getNiceTextString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    int j = getText().length;
    if (i >= j);
    while (true)
    {
      return localStringBuffer.toString();
      if (i < 200)
        break;
      localStringBuffer.append("...");
    }
    int k = 0xFF & getText()[i];
    if ((k < 32) || (k > 127))
    {
      localStringBuffer.append("\\0");
      localStringBuffer.append(Integer.toString(k, 8));
    }
    while (true)
    {
      i++;
      break;
      localStringBuffer.append((char)k);
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

  /** @deprecated */
  Map<String, byte[]> getProperties()
  {
    monitorenter;
    Hashtable localHashtable;
    int i;
    label41: Object localObject2;
    label59: label63: int j;
    int k;
    try
    {
      if ((this._props == null) && (getText() != null))
      {
        localHashtable = new Hashtable();
        i = 0;
        if (i < getText().length)
          break label63;
      }
      while (true)
      {
        this._props = localHashtable;
        if (this._props == null)
          break label249;
        localObject2 = this._props;
        return localObject2;
        byte[] arrayOfByte1 = getText();
        j = i + 1;
        k = 0xFF & arrayOfByte1[i];
        if ((k != 0) && (j + k <= getText().length))
          break;
        localHashtable.clear();
      }
    }
    finally
    {
      monitorexit;
    }
    for (int m = 0; ; m++)
    {
      if ((m < k) && (getText()[(j + m)] != 61))
        continue;
      String str = readUTF(getText(), j, m);
      if (str == null)
      {
        localHashtable.clear();
        break label41;
      }
      if (m == k)
      {
        localHashtable.put(str, NO_VALUE);
        i = j;
        break;
      }
      int n = m + 1;
      byte[] arrayOfByte2 = new byte[k - n];
      System.arraycopy(getText(), j + n, arrayOfByte2, 0, k - n);
      localHashtable.put(str, arrayOfByte2);
      i = j + k;
      break;
      label249: Map localMap = Collections.emptyMap();
      localObject2 = localMap;
      break label59;
    }
  }

  /** @deprecated */
  public byte[] getPropertyBytes(String paramString)
  {
    monitorenter;
    try
    {
      byte[] arrayOfByte = (byte[])getProperties().get(paramString);
      monitorexit;
      return arrayOfByte;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public Enumeration<String> getPropertyNames()
  {
    Map localMap = getProperties();
    if (localMap != null);
    for (Set localSet = localMap.keySet(); ; localSet = Collections.emptySet())
      return new Vector(localSet).elements();
  }

  /** @deprecated */
  public String getPropertyString(String paramString)
  {
    monitorenter;
    try
    {
      byte[] arrayOfByte = (byte[])getProperties().get(paramString);
      Object localObject2;
      if (arrayOfByte == null)
        localObject2 = null;
      while (true)
      {
        return localObject2;
        if (arrayOfByte == NO_VALUE)
        {
          localObject2 = "true";
          continue;
        }
        String str = readUTF(arrayOfByte, 0, arrayOfByte.length);
        localObject2 = str;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject1;
  }

  public String getProtocol()
  {
    if (this._protocol != null);
    for (String str = this._protocol; ; str = "tcp")
      return str;
  }

  public String getQualifiedName()
  {
    String str1 = getDomain();
    String str2 = getProtocol();
    String str3 = getApplication();
    String str4 = getName();
    String str5;
    String str6;
    label98: StringBuilder localStringBuilder2;
    if (str4.length() > 0)
    {
      str5 = str4 + ".";
      StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str5));
      if (str3.length() <= 0)
        break label168;
      str6 = "_" + str3 + ".";
      localStringBuilder2 = localStringBuilder1.append(str6);
      if (str2.length() <= 0)
        break label176;
    }
    label168: label176: for (String str7 = "_" + str2 + "."; ; str7 = "")
    {
      return str7 + str1 + ".";
      str5 = "";
      break;
      str6 = "";
      break label98;
    }
  }

  public Map<ServiceInfo.Fields, String> getQualifiedNameMap()
  {
    HashMap localHashMap = new HashMap(5);
    localHashMap.put(ServiceInfo.Fields.Domain, getDomain());
    localHashMap.put(ServiceInfo.Fields.Protocol, getProtocol());
    localHashMap.put(ServiceInfo.Fields.Application, getApplication());
    localHashMap.put(ServiceInfo.Fields.Instance, getName());
    localHashMap.put(ServiceInfo.Fields.Subtype, getSubtype());
    return localHashMap;
  }

  public String getServer()
  {
    if (this._server != null);
    for (String str = this._server; ; str = "")
      return str;
  }

  public String getSubtype()
  {
    if (this._subtype != null);
    for (String str = this._subtype; ; str = "")
      return str;
  }

  public byte[] getText()
  {
    if (this._text != null);
    for (byte[] arrayOfByte = this._text; ; arrayOfByte = new byte[0])
      return arrayOfByte;
  }

  public byte[] getTextBytes()
  {
    return getText();
  }

  @Deprecated
  public String getTextString()
  {
    Map localMap = getProperties();
    Iterator localIterator = localMap.keySet().iterator();
    String str2;
    String str1;
    if (localIterator.hasNext())
    {
      str2 = (String)localIterator.next();
      byte[] arrayOfByte = (byte[])localMap.get(str2);
      if ((arrayOfByte != null) && (arrayOfByte.length > 0))
        str1 = str2 + "=" + new String(arrayOfByte);
    }
    while (true)
    {
      return str1;
      str1 = str2;
      continue;
      str1 = "";
    }
  }

  public String getType()
  {
    String str1 = getDomain();
    String str2 = getProtocol();
    String str3 = getApplication();
    String str4;
    StringBuilder localStringBuilder;
    if (str3.length() > 0)
    {
      str4 = "_" + str3 + ".";
      localStringBuilder = new StringBuilder(String.valueOf(str4));
      if (str2.length() <= 0)
        break label122;
    }
    label122: for (String str5 = "_" + str2 + "."; ; str5 = "")
    {
      return str5 + str1 + ".";
      str4 = "";
      break;
    }
  }

  public String getTypeWithSubtype()
  {
    String str1 = getSubtype();
    if (str1.length() > 0);
    for (String str2 = "_" + str1.toLowerCase() + "._sub."; ; str2 = "")
      return str2 + getType();
  }

  public String getURL()
  {
    return getURL("http");
  }

  public String getURL(String paramString)
  {
    Object localObject = paramString + "://" + getHostAddress() + ":" + getPort();
    String str1 = getPropertyString("path");
    if (str1 != null)
    {
      if (str1.indexOf("://") >= 0)
        localObject = str1;
    }
    else
      return localObject;
    StringBuilder localStringBuilder = new StringBuilder(String.valueOf(localObject));
    if (str1.startsWith("/"));
    for (String str2 = str1; ; str2 = "/" + str1)
    {
      localObject = str2;
      break;
    }
  }

  public int getWeight()
  {
    return this._weight;
  }

  /** @deprecated */
  public boolean hasData()
  {
    monitorenter;
    try
    {
      if ((getServer() != null) && (getInetAddress() != null) && (getTextBytes() != null))
      {
        int j = getTextBytes().length;
        if (j > 0)
        {
          i = 1;
          return i;
        }
      }
      int i = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  public int hashCode()
  {
    return getQualifiedName().hashCode();
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

  public boolean isPersistent()
  {
    return this._persistent;
  }

  public boolean isProbing()
  {
    return this._state.isProbing();
  }

  public boolean needTextAnnouncing()
  {
    return this._needTextAnnouncing;
  }

  String readUTF(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramInt1 + paramInt2;
    int j = paramInt1;
    String str;
    if (j >= i)
      str = localStringBuffer.toString();
    label34: int k;
    int m;
    while (true)
    {
      return str;
      k = j + 1;
      m = 0xFF & paramArrayOfByte[j];
      switch (m >> 4)
      {
      case 8:
      case 9:
      case 10:
      case 11:
      default:
        if (k + 1 >= paramInt2)
          str = null;
        break;
      case 12:
      case 13:
        if (k >= paramInt2)
        {
          str = null;
          continue;
        }
        int i3 = (m & 0x1F) << 6;
        int i4 = k + 1;
        m = i3 | 0x3F & paramArrayOfByte[k];
        k = i4;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 14:
      }
    }
    while (true)
    {
      localStringBuffer.append((char)m);
      j = k;
      break;
      if (k + 2 >= paramInt2)
      {
        str = null;
        break label34;
      }
      int n = (m & 0xF) << 12;
      int i1 = k + 1;
      int i2 = n | (0x3F & paramArrayOfByte[k]) << 6;
      k = i1 + 1;
      m = i2 | 0x3F & paramArrayOfByte[i1];
      continue;
      int i5 = (m & 0x3F) << 4;
      int i6 = k + 1;
      m = i5 | 0xF & paramArrayOfByte[k];
      k = i6;
    }
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

  void setAddress(Inet4Address paramInet4Address)
  {
    this._ipv4Addr = paramInet4Address;
  }

  void setAddress(Inet6Address paramInet6Address)
  {
    this._ipv6Addr = paramInet6Address;
  }

  public void setDns(JmDNSImpl paramJmDNSImpl)
  {
    this._state.setDns(paramJmDNSImpl);
  }

  void setName(String paramString)
  {
    this._name = paramString;
  }

  public void setNeedTextAnnouncing(boolean paramBoolean)
  {
    this._needTextAnnouncing = paramBoolean;
    if (this._needTextAnnouncing)
      this._state.setTask(null);
  }

  void setServer(String paramString)
  {
    this._server = paramString;
  }

  public void setText(Map<String, ?> paramMap)
    throws IllegalStateException
  {
    setText(textFromProperties(paramMap));
  }

  public void setText(byte[] paramArrayOfByte)
    throws IllegalStateException
  {
    monitorenter;
    try
    {
      this._text = paramArrayOfByte;
      setNeedTextAnnouncing(true);
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
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[" + getClass().getSimpleName() + "@" + System.identityHashCode(this) + " ");
    localStringBuilder.append("name: '");
    String str1;
    String str2;
    if (getName().length() > 0)
    {
      str1 = getName() + ".";
      localStringBuilder.append(str1 + getTypeWithSubtype());
      localStringBuilder.append("' address: '");
      localStringBuilder.append(getInetAddress());
      localStringBuilder.append(':');
      localStringBuilder.append(getPort());
      localStringBuilder.append("' status: '");
      localStringBuilder.append(this._state.toString());
      if (!isPersistent())
        break label277;
      str2 = "' is persistent,";
      label190: localStringBuilder.append(str2);
      localStringBuilder.append(" has ");
      if (!hasData())
        break label285;
    }
    label277: label285: for (String str3 = ""; ; str3 = "NO ")
    {
      localStringBuilder.append(str3);
      localStringBuilder.append("data");
      if (getText().length > 0)
      {
        localStringBuilder.append("\n");
        localStringBuilder.append(getNiceTextString());
      }
      localStringBuilder.append(']');
      return localStringBuilder.toString();
      str1 = "";
      break;
      str2 = "',";
      break label190;
    }
  }

  public void updateRecord(DNSCache paramDNSCache, long paramLong, DNSEntry paramDNSEntry)
  {
    int i;
    if (((paramDNSEntry instanceof DNSRecord)) && (!paramDNSEntry.isExpired(paramLong)))
    {
      i = 0;
      switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[paramDNSEntry.getRecordType().ordinal()])
      {
      default:
      case 2:
      case 29:
      case 34:
      case 17:
      case 13:
      }
    }
    while (true)
    {
      if ((i != 0) && (hasData()))
      {
        JmDNSImpl localJmDNSImpl = getDns();
        if (localJmDNSImpl != null)
        {
          ServiceEvent localServiceEvent = ((DNSRecord)paramDNSEntry).getServiceEvent(localJmDNSImpl);
          localJmDNSImpl.handleServiceResolved(new ServiceEventImpl(localJmDNSImpl, localServiceEvent.getType(), localServiceEvent.getName(), this));
        }
      }
      monitorenter;
      try
      {
        notifyAll();
        return;
        if (!paramDNSEntry.getName().equalsIgnoreCase(getServer()))
          continue;
        this._ipv4Addr = ((Inet4Address)((DNSRecord.Address)paramDNSEntry).getAddress());
        i = 1;
        continue;
        if (!paramDNSEntry.getName().equalsIgnoreCase(getServer()))
          continue;
        this._ipv6Addr = ((Inet6Address)((DNSRecord.Address)paramDNSEntry).getAddress());
        i = 1;
        continue;
        if (!paramDNSEntry.getName().equalsIgnoreCase(getQualifiedName()))
          continue;
        DNSRecord.Service localService = (DNSRecord.Service)paramDNSEntry;
        if ((this._server != null) && (this._server.equalsIgnoreCase(localService.getServer())));
        for (int j = 0; ; j = 1)
        {
          this._server = localService.getServer();
          this._port = localService.getPort();
          this._weight = localService.getWeight();
          this._priority = localService.getPriority();
          if (j == 0)
            break label372;
          this._ipv4Addr = null;
          this._ipv6Addr = null;
          updateRecord(paramDNSCache, paramLong, paramDNSCache.getDNSEntry(this._server, DNSRecordType.TYPE_A, DNSRecordClass.CLASS_IN));
          updateRecord(paramDNSCache, paramLong, paramDNSCache.getDNSEntry(this._server, DNSRecordType.TYPE_AAAA, DNSRecordClass.CLASS_IN));
          break;
        }
        label372: i = 1;
        continue;
        if (!paramDNSEntry.getName().equalsIgnoreCase(getQualifiedName()))
          continue;
        this._text = ((DNSRecord.Text)paramDNSEntry)._text;
        i = 1;
        continue;
        if ((getSubtype().length() != 0) || (paramDNSEntry.getSubtype().length() == 0))
          continue;
        this._subtype = paramDNSEntry.getSubtype();
        i = 1;
        continue;
      }
      finally
      {
        monitorexit;
      }
    }
    throw localObject;
  }

  public boolean waitForAnnounced(long paramLong)
  {
    return this._state.waitForAnnounced(paramLong);
  }

  public boolean waitForCanceled(long paramLong)
  {
    return this._state.waitForCanceled(paramLong);
  }

  private static final class ServiceInfoState extends DNSStatefulObject.DefaultImplementation
  {
    private static final long serialVersionUID = 1104131034952196820L;
    private final ServiceInfoImpl _info;

    public ServiceInfoState(ServiceInfoImpl paramServiceInfoImpl)
    {
      this._info = paramServiceInfoImpl;
    }

    public void setDns(JmDNSImpl paramJmDNSImpl)
    {
      super.setDns(paramJmDNSImpl);
    }

    protected void setTask(DNSTask paramDNSTask)
    {
      super.setTask(paramDNSTask);
      if ((this._task == null) && (this._info.needTextAnnouncing()))
      {
        monitorenter;
        try
        {
          if ((this._task == null) && (this._info.needTextAnnouncing()))
          {
            if (!this._state.isAnnounced())
              break label77;
            this._state = DNSState.ANNOUNCING_1;
            if (getDns() != null)
              getDns().startAnnouncer();
          }
          monitorexit;
          return;
          label77: this._info.setNeedTextAnnouncing(false);
        }
        finally
        {
          monitorexit;
        }
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.ServiceInfoImpl
 * JD-Core Version:    0.6.0
 */