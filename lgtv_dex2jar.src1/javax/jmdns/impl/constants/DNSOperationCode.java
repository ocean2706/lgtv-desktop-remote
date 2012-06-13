package javax.jmdns.impl.constants;

public enum DNSOperationCode
{
  static final int OpCode_MASK = 30720;
  private final String _externalName;
  private final int _index;

  static
  {
    IQuery = new DNSOperationCode("IQuery", 1, "Inverse Query", 1);
    Status = new DNSOperationCode("Status", 2, "Status", 2);
    Unassigned = new DNSOperationCode("Unassigned", 3, "Unassigned", 3);
    Notify = new DNSOperationCode("Notify", 4, "Notify", 4);
    Update = new DNSOperationCode("Update", 5, "Update", 5);
    DNSOperationCode[] arrayOfDNSOperationCode = new DNSOperationCode[6];
    arrayOfDNSOperationCode[0] = Query;
    arrayOfDNSOperationCode[1] = IQuery;
    arrayOfDNSOperationCode[2] = Status;
    arrayOfDNSOperationCode[3] = Unassigned;
    arrayOfDNSOperationCode[4] = Notify;
    arrayOfDNSOperationCode[5] = Update;
    ENUM$VALUES = arrayOfDNSOperationCode;
  }

  private DNSOperationCode(String arg3, int arg4)
  {
    Object localObject;
    this._externalName = localObject;
    int i;
    this._index = i;
  }

  public static DNSOperationCode operationCodeForFlags(int paramInt)
  {
    int i = (paramInt & 0x7800) >> 11;
    DNSOperationCode[] arrayOfDNSOperationCode = values();
    int j = arrayOfDNSOperationCode.length;
    for (int k = 0; ; k++)
    {
      if (k >= j);
      DNSOperationCode localDNSOperationCode;
      for (Object localObject = Unassigned; ; localObject = localDNSOperationCode)
      {
        return localObject;
        localDNSOperationCode = arrayOfDNSOperationCode[k];
        if (localDNSOperationCode._index != i)
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
 * Qualified Name:     javax.jmdns.impl.constants.DNSOperationCode
 * JD-Core Version:    0.6.0
 */