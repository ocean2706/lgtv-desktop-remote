package javax.jmdns.impl.constants;

import java.util.logging.Level;
import java.util.logging.Logger;

public enum DNSRecordClass
{
  public static final int CLASS_MASK = 32767;
  public static final int CLASS_UNIQUE = 32768;
  public static final boolean NOT_UNIQUE = false;
  public static final boolean UNIQUE = true;
  private static Logger logger;
  private final String _externalName;
  private final int _index;

  static
  {
    CLASS_IN = new DNSRecordClass("CLASS_IN", 1, "in", 1);
    CLASS_CS = new DNSRecordClass("CLASS_CS", 2, "cs", 2);
    CLASS_CH = new DNSRecordClass("CLASS_CH", 3, "ch", 3);
    CLASS_HS = new DNSRecordClass("CLASS_HS", 4, "hs", 4);
    CLASS_NONE = new DNSRecordClass("CLASS_NONE", 5, "none", 254);
    CLASS_ANY = new DNSRecordClass("CLASS_ANY", 6, "any", 255);
    DNSRecordClass[] arrayOfDNSRecordClass = new DNSRecordClass[7];
    arrayOfDNSRecordClass[0] = CLASS_UNKNOWN;
    arrayOfDNSRecordClass[1] = CLASS_IN;
    arrayOfDNSRecordClass[2] = CLASS_CS;
    arrayOfDNSRecordClass[3] = CLASS_CH;
    arrayOfDNSRecordClass[4] = CLASS_HS;
    arrayOfDNSRecordClass[5] = CLASS_NONE;
    arrayOfDNSRecordClass[6] = CLASS_ANY;
    ENUM$VALUES = arrayOfDNSRecordClass;
    logger = Logger.getLogger(DNSRecordClass.class.getName());
  }

  private DNSRecordClass(String arg3, int arg4)
  {
    Object localObject;
    this._externalName = localObject;
    int i;
    this._index = i;
  }

  public static DNSRecordClass classForIndex(int paramInt)
  {
    int i = paramInt & 0x7FFF;
    DNSRecordClass[] arrayOfDNSRecordClass = values();
    int j = arrayOfDNSRecordClass.length;
    for (int k = 0; ; k++)
    {
      if (k >= j)
        logger.log(Level.WARNING, "Could not find record class for index: " + paramInt);
      DNSRecordClass localDNSRecordClass;
      for (Object localObject = CLASS_UNKNOWN; ; localObject = localDNSRecordClass)
      {
        return localObject;
        localDNSRecordClass = arrayOfDNSRecordClass[k];
        if (localDNSRecordClass._index != i)
          break;
      }
    }
  }

  public static DNSRecordClass classForName(String paramString)
  {
    String str;
    DNSRecordClass[] arrayOfDNSRecordClass;
    int i;
    if (paramString != null)
    {
      str = paramString.toLowerCase();
      arrayOfDNSRecordClass = values();
      i = arrayOfDNSRecordClass.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        logger.log(Level.WARNING, "Could not find record class for name: " + paramString);
      DNSRecordClass localDNSRecordClass;
      for (Object localObject = CLASS_UNKNOWN; ; localObject = localDNSRecordClass)
      {
        return localObject;
        localDNSRecordClass = arrayOfDNSRecordClass[j];
        if (!localDNSRecordClass._externalName.equals(str))
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

  public boolean isUnique()
  {
    if ((0x8000 & this._index) != 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public String toString()
  {
    return name() + " index " + indexValue();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.constants.DNSRecordClass
 * JD-Core Version:    0.6.0
 */