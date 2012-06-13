package javax.jmdns.impl.constants;

public enum DNSResultCode
{
  static final int ExtendedRCode_MASK = 255;
  static final int RCode_MASK = 15;
  private final String _externalName;
  private final int _index;

  static
  {
    NoError = new DNSResultCode("NoError", 1, "No Error", 0);
    FormErr = new DNSResultCode("FormErr", 2, "Format Error", 1);
    ServFail = new DNSResultCode("ServFail", 3, "Server Failure", 2);
    NXDomain = new DNSResultCode("NXDomain", 4, "Non-Existent Domain", 3);
    NotImp = new DNSResultCode("NotImp", 5, "Not Implemented", 4);
    Refused = new DNSResultCode("Refused", 6, "Query Refused", 5);
    YXDomain = new DNSResultCode("YXDomain", 7, "Name Exists when it should not", 6);
    YXRRSet = new DNSResultCode("YXRRSet", 8, "RR Set Exists when it should not", 7);
    NXRRSet = new DNSResultCode("NXRRSet", 9, "RR Set that should exist does not", 8);
    NotAuth = new DNSResultCode("NotAuth", 10, "Server Not Authoritative for zone", 9);
    NotZone = new DNSResultCode("NotZone", 11, "NotZone Name not contained in zone", 10);
    DNSResultCode[] arrayOfDNSResultCode = new DNSResultCode[12];
    arrayOfDNSResultCode[0] = Unknown;
    arrayOfDNSResultCode[1] = NoError;
    arrayOfDNSResultCode[2] = FormErr;
    arrayOfDNSResultCode[3] = ServFail;
    arrayOfDNSResultCode[4] = NXDomain;
    arrayOfDNSResultCode[5] = NotImp;
    arrayOfDNSResultCode[6] = Refused;
    arrayOfDNSResultCode[7] = YXDomain;
    arrayOfDNSResultCode[8] = YXRRSet;
    arrayOfDNSResultCode[9] = NXRRSet;
    arrayOfDNSResultCode[10] = NotAuth;
    arrayOfDNSResultCode[11] = NotZone;
    ENUM$VALUES = arrayOfDNSResultCode;
  }

  private DNSResultCode(String arg3, int arg4)
  {
    Object localObject;
    this._externalName = localObject;
    int i;
    this._index = i;
  }

  public static DNSResultCode resultCodeForFlags(int paramInt)
  {
    int i = paramInt & 0xF;
    DNSResultCode[] arrayOfDNSResultCode = values();
    int j = arrayOfDNSResultCode.length;
    for (int k = 0; ; k++)
    {
      if (k >= j);
      DNSResultCode localDNSResultCode;
      for (Object localObject = Unknown; ; localObject = localDNSResultCode)
      {
        return localObject;
        localDNSResultCode = arrayOfDNSResultCode[k];
        if (localDNSResultCode._index != i)
          break;
      }
    }
  }

  public static DNSResultCode resultCodeForFlags(int paramInt1, int paramInt2)
  {
    int i = 0xFF & paramInt2 >> 28 | paramInt1 & 0xF;
    DNSResultCode[] arrayOfDNSResultCode = values();
    int j = arrayOfDNSResultCode.length;
    for (int k = 0; ; k++)
    {
      if (k >= j);
      DNSResultCode localDNSResultCode;
      for (Object localObject = Unknown; ; localObject = localDNSResultCode)
      {
        return localObject;
        localDNSResultCode = arrayOfDNSResultCode[k];
        if (localDNSResultCode._index != i)
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
 * Qualified Name:     javax.jmdns.impl.constants.DNSResultCode
 * JD-Core Version:    0.6.0
 */