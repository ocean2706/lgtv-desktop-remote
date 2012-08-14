package javax.jmdns.impl;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import javax.jmdns.ServiceInfo.Fields;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public abstract class DNSEntry
{
  private final DNSRecordClass _dnsClass;
  private final String _key;
  private final String _name;
  final Map<ServiceInfo.Fields, String> _qualifiedNameMap;
  private final DNSRecordType _type;
  private final boolean _unique;

  DNSEntry(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    this._name = paramString;
    this._type = paramDNSRecordType;
    this._dnsClass = paramDNSRecordClass;
    this._unique = paramBoolean;
    this._qualifiedNameMap = ServiceInfoImpl.decodeQualifiedNameMapForType(getName());
    String str1 = (String)this._qualifiedNameMap.get(ServiceInfo.Fields.Domain);
    String str2 = (String)this._qualifiedNameMap.get(ServiceInfo.Fields.Protocol);
    String str3 = (String)this._qualifiedNameMap.get(ServiceInfo.Fields.Application);
    String str4 = ((String)this._qualifiedNameMap.get(ServiceInfo.Fields.Instance)).toLowerCase();
    String str5;
    String str6;
    label183: StringBuilder localStringBuilder2;
    if (str4.length() > 0)
    {
      str5 = str4 + ".";
      StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str5));
      if (str3.length() <= 0)
        break label256;
      str6 = "_" + str3 + ".";
      localStringBuilder2 = localStringBuilder1.append(str6);
      if (str2.length() <= 0)
        break label263;
    }
    label256: label263: for (String str7 = "_" + str2 + "."; ; str7 = "")
    {
      this._key = (str7 + str1 + ".");
      return;
      str5 = "";
      break;
      str6 = "";
      break label183;
    }
  }

  public int compareTo(DNSEntry paramDNSEntry)
  {
    byte[] arrayOfByte1 = toByteArray();
    byte[] arrayOfByte2 = paramDNSEntry.toByteArray();
    int i = 0;
    int j = Math.min(arrayOfByte1.length, arrayOfByte2.length);
    while (true)
    {
      int k;
      if (i >= j)
        k = arrayOfByte1.length - arrayOfByte2.length;
      while (true)
      {
        return k;
        if (arrayOfByte1[i] > arrayOfByte2[i])
        {
          k = 1;
          continue;
        }
        if (arrayOfByte1[i] >= arrayOfByte2[i])
          break;
        k = -1;
      }
      i++;
    }
  }

  public boolean equals(Object paramObject)
  {
    int i = 0;
    if ((paramObject instanceof DNSEntry))
    {
      DNSEntry localDNSEntry = (DNSEntry)paramObject;
      if ((!getKey().equals(localDNSEntry.getKey())) || (!getRecordType().equals(localDNSEntry.getRecordType())) || (this._dnsClass != localDNSEntry.getRecordClass()))
        break label57;
    }
    label57: for (i = 1; ; i = 0)
      return i;
  }

  public String getKey()
  {
    if (this._key != null);
    for (String str = this._key; ; str = "")
      return str;
  }

  public String getName()
  {
    if (this._name != null);
    for (String str = this._name; ; str = "")
      return str;
  }

  public Map<ServiceInfo.Fields, String> getQualifiedNameMap()
  {
    return Collections.unmodifiableMap(this._qualifiedNameMap);
  }

  public DNSRecordClass getRecordClass()
  {
    if (this._dnsClass != null);
    for (DNSRecordClass localDNSRecordClass = this._dnsClass; ; localDNSRecordClass = DNSRecordClass.CLASS_UNKNOWN)
      return localDNSRecordClass;
  }

  public DNSRecordType getRecordType()
  {
    if (this._type != null);
    for (DNSRecordType localDNSRecordType = this._type; ; localDNSRecordType = DNSRecordType.TYPE_IGNORE)
      return localDNSRecordType;
  }

  public String getSubtype()
  {
    String str1 = (String)getQualifiedNameMap().get(ServiceInfo.Fields.Subtype);
    if (str1 != null);
    for (String str2 = str1; ; str2 = "")
      return str2;
  }

  public int hashCode()
  {
    return this._name.hashCode() + getRecordType().indexValue() + getRecordClass().indexValue();
  }

  public boolean isDomainDiscoveryQuery()
  {
    int i;
    if (((String)this._qualifiedNameMap.get(ServiceInfo.Fields.Application)).equals("dns-sd"))
    {
      String str = (String)this._qualifiedNameMap.get(ServiceInfo.Fields.Instance);
      if ((!str.equals("b")) && (!str.equals("db")) && (!str.equals("r")) && (!str.equals("dr")) && (!str.equals("lb")))
        i = 0;
    }
    while (true)
    {
      return i;
      i = 1;
      continue;
      i = 0;
    }
  }

  public abstract boolean isExpired(long paramLong);

  public boolean isReverseLookup()
  {
    if ((!((String)this._qualifiedNameMap.get(ServiceInfo.Fields.Domain)).endsWith("in-addr.arpa")) && (!((String)this._qualifiedNameMap.get(ServiceInfo.Fields.Domain)).endsWith("ip6.arpa")));
    for (int i = 0; ; i = 1)
      return i;
  }

  public boolean isSameEntry(DNSEntry paramDNSEntry)
  {
    if ((getKey().equals(paramDNSEntry.getKey())) && (getRecordType().equals(paramDNSEntry.getRecordType())) && ((DNSRecordClass.CLASS_ANY == paramDNSEntry.getRecordClass()) || (getRecordClass().equals(paramDNSEntry.getRecordClass()))));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isSameRecordClass(DNSEntry paramDNSEntry)
  {
    if ((paramDNSEntry != null) && (paramDNSEntry.getRecordClass() == getRecordClass()));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isSameType(DNSEntry paramDNSEntry)
  {
    if ((paramDNSEntry != null) && (paramDNSEntry.getRecordType() == getRecordType()));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isServicesDiscoveryMetaQuery()
  {
    if ((((String)this._qualifiedNameMap.get(ServiceInfo.Fields.Application)).equals("dns-sd")) && (((String)this._qualifiedNameMap.get(ServiceInfo.Fields.Instance)).equals("_services")));
    for (int i = 1; ; i = 0)
      return i;
  }

  public abstract boolean isStale(long paramLong);

  public boolean isUnique()
  {
    return this._unique;
  }

  public boolean sameSubtype(DNSEntry paramDNSEntry)
  {
    return getSubtype().equals(paramDNSEntry.getSubtype());
  }

  protected void toByteArray(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.write(getName().getBytes("UTF8"));
    paramDataOutputStream.writeShort(getRecordType().indexValue());
    paramDataOutputStream.writeShort(getRecordClass().indexValue());
  }

  protected byte[] toByteArray()
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      toByteArray(localDataOutputStream);
      localDataOutputStream.close();
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
    }
    throw new InternalError();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[" + getClass().getSimpleName() + "@" + System.identityHashCode(this));
    localStringBuilder.append(" type: " + getRecordType());
    localStringBuilder.append(", class: " + getRecordClass());
    if (this._unique);
    for (String str = "-unique,"; ; str = ",")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(" name: " + this._name);
      toString(localStringBuilder);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }

  protected void toString(StringBuilder paramStringBuilder)
  {
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSEntry
 * JD-Core Version:    0.6.0
 */