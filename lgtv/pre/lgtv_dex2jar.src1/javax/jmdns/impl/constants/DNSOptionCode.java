package javax.jmdns.impl.constants;

public enum DNSOptionCode
{
  private final String _externalName;
  private final int _index;

  static
  {
    LLQ = new DNSOptionCode("LLQ", 1, "LLQ", 1);
    UL = new DNSOptionCode("UL", 2, "UL", 2);
    NSID = new DNSOptionCode("NSID", 3, "NSID", 3);
    Owner = new DNSOptionCode("Owner", 4, "Owner", 4);
    DNSOptionCode[] arrayOfDNSOptionCode = new DNSOptionCode[5];
    arrayOfDNSOptionCode[0] = Unknown;
    arrayOfDNSOptionCode[1] = LLQ;
    arrayOfDNSOptionCode[2] = UL;
    arrayOfDNSOptionCode[3] = NSID;
    arrayOfDNSOptionCode[4] = Owner;
    ENUM$VALUES = arrayOfDNSOptionCode;
  }

  private DNSOptionCode(String arg3, int arg4)
  {
    Object localObject;
    this._externalName = localObject;
    int i;
    this._index = i;
  }

  public static DNSOptionCode resultCodeForFlags(int paramInt)
  {
    DNSOptionCode[] arrayOfDNSOptionCode = values();
    int i = arrayOfDNSOptionCode.length;
    for (int j = 0; ; j++)
    {
      if (j >= i);
      DNSOptionCode localDNSOptionCode;
      for (Object localObject = Unknown; ; localObject = localDNSOptionCode)
      {
        return localObject;
        localDNSOptionCode = arrayOfDNSOptionCode[j];
        if (localDNSOptionCode._index != paramInt)
          break;
      }
    }
  }

  public String externalName()
  {
    return this._externalName;
  }

  public int indexValue()
  {
    return this._index;
  }

  public String toString()
  {
    return name() + " index " + indexValue();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.constants.DNSOptionCode
 * JD-Core Version:    0.6.0
 */