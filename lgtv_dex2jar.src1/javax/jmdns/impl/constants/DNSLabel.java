package javax.jmdns.impl.constants;

public enum DNSLabel
{
  static final int LABEL_MASK = 192;
  static final int LABEL_NOT_MASK = 63;
  private final String _externalName;
  private final int _index;

  static
  {
    Standard = new DNSLabel("Standard", 1, "standard label", 0);
    Compressed = new DNSLabel("Compressed", 2, "compressed label", 192);
    Extended = new DNSLabel("Extended", 3, "extended label", 64);
    DNSLabel[] arrayOfDNSLabel = new DNSLabel[4];
    arrayOfDNSLabel[0] = Unknown;
    arrayOfDNSLabel[1] = Standard;
    arrayOfDNSLabel[2] = Compressed;
    arrayOfDNSLabel[3] = Extended;
    ENUM$VALUES = arrayOfDNSLabel;
  }

  private DNSLabel(String arg3, int arg4)
  {
    Object localObject;
    this._externalName = localObject;
    int i;
    this._index = i;
  }

  public static DNSLabel labelForByte(int paramInt)
  {
    int i = paramInt & 0xC0;
    DNSLabel[] arrayOfDNSLabel = values();
    int j = arrayOfDNSLabel.length;
    for (int k = 0; ; k++)
    {
      if (k >= j);
      DNSLabel localDNSLabel;
      for (Object localObject = Unknown; ; localObject = localDNSLabel)
      {
        return localObject;
        localDNSLabel = arrayOfDNSLabel[k];
        if (localDNSLabel._index != i)
          break;
      }
    }
  }

  public static int labelValue(int paramInt)
  {
    return paramInt & 0x3F;
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
 * Qualified Name:     javax.jmdns.impl.constants.DNSLabel
 * JD-Core Version:    0.6.0
 */