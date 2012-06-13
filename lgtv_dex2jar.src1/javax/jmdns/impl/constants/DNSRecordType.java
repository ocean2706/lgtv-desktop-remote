package javax.jmdns.impl.constants;

import java.util.logging.Logger;

public enum DNSRecordType
{
  private static Logger logger;
  private final String _externalName;
  private final int _index;

  static
  {
    TYPE_A = new DNSRecordType("TYPE_A", 1, "a", 1);
    TYPE_NS = new DNSRecordType("TYPE_NS", 2, "ns", 2);
    TYPE_MD = new DNSRecordType("TYPE_MD", 3, "md", 3);
    TYPE_MF = new DNSRecordType("TYPE_MF", 4, "mf", 4);
    TYPE_CNAME = new DNSRecordType("TYPE_CNAME", 5, "cname", 5);
    TYPE_SOA = new DNSRecordType("TYPE_SOA", 6, "soa", 6);
    TYPE_MB = new DNSRecordType("TYPE_MB", 7, "mb", 7);
    TYPE_MG = new DNSRecordType("TYPE_MG", 8, "mg", 8);
    TYPE_MR = new DNSRecordType("TYPE_MR", 9, "mr", 9);
    TYPE_NULL = new DNSRecordType("TYPE_NULL", 10, "null", 10);
    TYPE_WKS = new DNSRecordType("TYPE_WKS", 11, "wks", 11);
    TYPE_PTR = new DNSRecordType("TYPE_PTR", 12, "ptr", 12);
    TYPE_HINFO = new DNSRecordType("TYPE_HINFO", 13, "hinfo", 13);
    TYPE_MINFO = new DNSRecordType("TYPE_MINFO", 14, "minfo", 14);
    TYPE_MX = new DNSRecordType("TYPE_MX", 15, "mx", 15);
    TYPE_TXT = new DNSRecordType("TYPE_TXT", 16, "txt", 16);
    TYPE_RP = new DNSRecordType("TYPE_RP", 17, "rp", 17);
    TYPE_AFSDB = new DNSRecordType("TYPE_AFSDB", 18, "afsdb", 18);
    TYPE_X25 = new DNSRecordType("TYPE_X25", 19, "x25", 19);
    TYPE_ISDN = new DNSRecordType("TYPE_ISDN", 20, "isdn", 20);
    TYPE_RT = new DNSRecordType("TYPE_RT", 21, "rt", 21);
    TYPE_NSAP = new DNSRecordType("TYPE_NSAP", 22, "nsap", 22);
    TYPE_NSAP_PTR = new DNSRecordType("TYPE_NSAP_PTR", 23, "nsap-otr", 23);
    TYPE_SIG = new DNSRecordType("TYPE_SIG", 24, "sig", 24);
    TYPE_KEY = new DNSRecordType("TYPE_KEY", 25, "key", 25);
    TYPE_PX = new DNSRecordType("TYPE_PX", 26, "px", 26);
    TYPE_GPOS = new DNSRecordType("TYPE_GPOS", 27, "gpos", 27);
    TYPE_AAAA = new DNSRecordType("TYPE_AAAA", 28, "aaaa", 28);
    TYPE_LOC = new DNSRecordType("TYPE_LOC", 29, "loc", 29);
    TYPE_NXT = new DNSRecordType("TYPE_NXT", 30, "nxt", 30);
    TYPE_EID = new DNSRecordType("TYPE_EID", 31, "eid", 31);
    TYPE_NIMLOC = new DNSRecordType("TYPE_NIMLOC", 32, "nimloc", 32);
    TYPE_SRV = new DNSRecordType("TYPE_SRV", 33, "src", 33);
    TYPE_ATMA = new DNSRecordType("TYPE_ATMA", 34, "", 34);
    TYPE_NAPTR = new DNSRecordType("TYPE_NAPTR", 35, "naptr", 35);
    TYPE_KX = new DNSRecordType("TYPE_KX", 36, "kx", 36);
    TYPE_CERT = new DNSRecordType("TYPE_CERT", 37, "cert", 37);
    TYPE_A6 = new DNSRecordType("TYPE_A6", 38, "a6", 38);
    TYPE_DNAME = new DNSRecordType("TYPE_DNAME", 39, "dname", 39);
    TYPE_SINK = new DNSRecordType("TYPE_SINK", 40, "sink", 40);
    TYPE_OPT = new DNSRecordType("TYPE_OPT", 41, "opt", 41);
    TYPE_APL = new DNSRecordType("TYPE_APL", 42, "apl", 42);
    TYPE_DS = new DNSRecordType("TYPE_DS", 43, "ds", 43);
    TYPE_SSHFP = new DNSRecordType("TYPE_SSHFP", 44, "sshfp", 44);
    TYPE_RRSIG = new DNSRecordType("TYPE_RRSIG", 45, "rrsig", 46);
    TYPE_NSEC = new DNSRecordType("TYPE_NSEC", 46, "nsec", 47);
    TYPE_DNSKEY = new DNSRecordType("TYPE_DNSKEY", 47, "dnskey", 48);
    TYPE_UINFO = new DNSRecordType("TYPE_UINFO", 48, "uinfo", 100);
    TYPE_UID = new DNSRecordType("TYPE_UID", 49, "uid", 101);
    TYPE_GID = new DNSRecordType("TYPE_GID", 50, "gid", 102);
    TYPE_UNSPEC = new DNSRecordType("TYPE_UNSPEC", 51, "unspec", 103);
    TYPE_TKEY = new DNSRecordType("TYPE_TKEY", 52, "tkey", 249);
    TYPE_TSIG = new DNSRecordType("TYPE_TSIG", 53, "tsig", 250);
    TYPE_IXFR = new DNSRecordType("TYPE_IXFR", 54, "ixfr", 251);
    TYPE_AXFR = new DNSRecordType("TYPE_AXFR", 55, "axfr", 252);
    TYPE_MAILA = new DNSRecordType("TYPE_MAILA", 56, "mails", 253);
    TYPE_MAILB = new DNSRecordType("TYPE_MAILB", 57, "mailb", 254);
    TYPE_ANY = new DNSRecordType("TYPE_ANY", 58, "any", 255);
    DNSRecordType[] arrayOfDNSRecordType = new DNSRecordType[59];
    arrayOfDNSRecordType[0] = TYPE_IGNORE;
    arrayOfDNSRecordType[1] = TYPE_A;
    arrayOfDNSRecordType[2] = TYPE_NS;
    arrayOfDNSRecordType[3] = TYPE_MD;
    arrayOfDNSRecordType[4] = TYPE_MF;
    arrayOfDNSRecordType[5] = TYPE_CNAME;
    arrayOfDNSRecordType[6] = TYPE_SOA;
    arrayOfDNSRecordType[7] = TYPE_MB;
    arrayOfDNSRecordType[8] = TYPE_MG;
    arrayOfDNSRecordType[9] = TYPE_MR;
    arrayOfDNSRecordType[10] = TYPE_NULL;
    arrayOfDNSRecordType[11] = TYPE_WKS;
    arrayOfDNSRecordType[12] = TYPE_PTR;
    arrayOfDNSRecordType[13] = TYPE_HINFO;
    arrayOfDNSRecordType[14] = TYPE_MINFO;
    arrayOfDNSRecordType[15] = TYPE_MX;
    arrayOfDNSRecordType[16] = TYPE_TXT;
    arrayOfDNSRecordType[17] = TYPE_RP;
    arrayOfDNSRecordType[18] = TYPE_AFSDB;
    arrayOfDNSRecordType[19] = TYPE_X25;
    arrayOfDNSRecordType[20] = TYPE_ISDN;
    arrayOfDNSRecordType[21] = TYPE_RT;
    arrayOfDNSRecordType[22] = TYPE_NSAP;
    arrayOfDNSRecordType[23] = TYPE_NSAP_PTR;
    arrayOfDNSRecordType[24] = TYPE_SIG;
    arrayOfDNSRecordType[25] = TYPE_KEY;
    arrayOfDNSRecordType[26] = TYPE_PX;
    arrayOfDNSRecordType[27] = TYPE_GPOS;
    arrayOfDNSRecordType[28] = TYPE_AAAA;
    arrayOfDNSRecordType[29] = TYPE_LOC;
    arrayOfDNSRecordType[30] = TYPE_NXT;
    arrayOfDNSRecordType[31] = TYPE_EID;
    arrayOfDNSRecordType[32] = TYPE_NIMLOC;
    arrayOfDNSRecordType[33] = TYPE_SRV;
    arrayOfDNSRecordType[34] = TYPE_ATMA;
    arrayOfDNSRecordType[35] = TYPE_NAPTR;
    arrayOfDNSRecordType[36] = TYPE_KX;
    arrayOfDNSRecordType[37] = TYPE_CERT;
    arrayOfDNSRecordType[38] = TYPE_A6;
    arrayOfDNSRecordType[39] = TYPE_DNAME;
    arrayOfDNSRecordType[40] = TYPE_SINK;
    arrayOfDNSRecordType[41] = TYPE_OPT;
    arrayOfDNSRecordType[42] = TYPE_APL;
    arrayOfDNSRecordType[43] = TYPE_DS;
    arrayOfDNSRecordType[44] = TYPE_SSHFP;
    arrayOfDNSRecordType[45] = TYPE_RRSIG;
    arrayOfDNSRecordType[46] = TYPE_NSEC;
    arrayOfDNSRecordType[47] = TYPE_DNSKEY;
    arrayOfDNSRecordType[48] = TYPE_UINFO;
    arrayOfDNSRecordType[49] = TYPE_UID;
    arrayOfDNSRecordType[50] = TYPE_GID;
    arrayOfDNSRecordType[51] = TYPE_UNSPEC;
    arrayOfDNSRecordType[52] = TYPE_TKEY;
    arrayOfDNSRecordType[53] = TYPE_TSIG;
    arrayOfDNSRecordType[54] = TYPE_IXFR;
    arrayOfDNSRecordType[55] = TYPE_AXFR;
    arrayOfDNSRecordType[56] = TYPE_MAILA;
    arrayOfDNSRecordType[57] = TYPE_MAILB;
    arrayOfDNSRecordType[58] = TYPE_ANY;
    ENUM$VALUES = arrayOfDNSRecordType;
    logger = Logger.getLogger(DNSRecordType.class.getName());
  }

  private DNSRecordType(String arg3, int arg4)
  {
    Object localObject;
    this._externalName = localObject;
    int i;
    this._index = i;
  }

  public static DNSRecordType typeForIndex(int paramInt)
  {
    DNSRecordType[] arrayOfDNSRecordType = values();
    int i = arrayOfDNSRecordType.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        logger.severe("Could not find record type for index: " + paramInt);
      DNSRecordType localDNSRecordType;
      for (Object localObject = TYPE_IGNORE; ; localObject = localDNSRecordType)
      {
        return localObject;
        localDNSRecordType = arrayOfDNSRecordType[j];
        if (localDNSRecordType._index != paramInt)
          break;
      }
    }
  }

  public static DNSRecordType typeForName(String paramString)
  {
    String str;
    DNSRecordType[] arrayOfDNSRecordType;
    int i;
    if (paramString != null)
    {
      str = paramString.toLowerCase();
      arrayOfDNSRecordType = values();
      i = arrayOfDNSRecordType.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        logger.severe("Could not find record type for name: " + paramString);
      DNSRecordType localDNSRecordType;
      for (Object localObject = TYPE_IGNORE; ; localObject = localDNSRecordType)
      {
        return localObject;
        localDNSRecordType = arrayOfDNSRecordType[j];
        if (!localDNSRecordType._externalName.equals(str))
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
 * Qualified Name:     javax.jmdns.impl.constants.DNSRecordType
 * JD-Core Version:    0.6.0
 */