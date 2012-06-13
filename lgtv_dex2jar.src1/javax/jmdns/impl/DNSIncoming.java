package javax.jmdns.impl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.impl.constants.DNSLabel;
import javax.jmdns.impl.constants.DNSOptionCode;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;
import javax.jmdns.impl.constants.DNSResultCode;

public final class DNSIncoming extends DNSMessage
{
  public static boolean USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET;
  private static final char[] _nibbleToHex;
  private static Logger logger = Logger.getLogger(DNSIncoming.class.getName());
  private byte[] _data;
  private int _len;
  private int _off;
  private DatagramPacket _packet;
  private long _receivedTime;
  private int _senderUDPPayload;

  static
  {
    USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET = true;
    char[] arrayOfChar = new char[16];
    arrayOfChar[0] = 48;
    arrayOfChar[1] = 49;
    arrayOfChar[2] = 50;
    arrayOfChar[3] = 51;
    arrayOfChar[4] = 52;
    arrayOfChar[5] = 53;
    arrayOfChar[6] = 54;
    arrayOfChar[7] = 55;
    arrayOfChar[8] = 56;
    arrayOfChar[9] = 57;
    arrayOfChar[10] = 65;
    arrayOfChar[11] = 66;
    arrayOfChar[12] = 67;
    arrayOfChar[13] = 68;
    arrayOfChar[14] = 69;
    arrayOfChar[15] = 70;
    _nibbleToHex = arrayOfChar;
  }

  DNSIncoming(DatagramPacket paramDatagramPacket)
    throws IOException
  {
  }

  private String _hexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(2 * paramArrayOfByte.length);
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder.toString();
      int j = 0xFF & paramArrayOfByte[i];
      localStringBuilder.append(_nibbleToHex[(j / 16)]);
      localStringBuilder.append(_nibbleToHex[(j % 16)]);
    }
  }

  private int get(int paramInt)
    throws IOException
  {
    if ((paramInt < 0) || (paramInt >= this._len))
      throw new IOException("parser error: offset=" + paramInt);
    return 0xFF & this._data[paramInt];
  }

  private DNSRecord readAnswer(InetAddress paramInetAddress)
    throws IOException
  {
    String str1 = readName();
    DNSRecordType localDNSRecordType = DNSRecordType.typeForIndex(readUnsignedShort());
    int i = readUnsignedShort();
    DNSRecordClass localDNSRecordClass;
    boolean bool;
    int j;
    int k;
    int m;
    Object localObject1;
    if (localDNSRecordType == DNSRecordType.TYPE_OPT)
    {
      localDNSRecordClass = DNSRecordClass.CLASS_UNKNOWN;
      bool = localDNSRecordClass.isUnique();
      j = readInt();
      k = readUnsignedShort();
      m = k + this._off;
      localObject1 = null;
      switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[localDNSRecordType.ordinal()])
      {
      default:
        logger.finer("DNSIncoming() unknown type:" + localDNSRecordType);
        this._off = m;
      case 2:
      case 29:
      case 6:
      case 13:
      case 17:
      case 34:
      case 14:
      case 42:
      }
    }
    while (true)
    {
      if (localObject1 != null)
        ((DNSRecord)localObject1).setRecordSource(paramInetAddress);
      this._off = m;
      return localObject1;
      localDNSRecordClass = DNSRecordClass.classForIndex(i);
      break;
      localObject1 = new DNSRecord.IPv4Address(str1, localDNSRecordClass, bool, j, readBytes(this._off, k));
      this._off = (k + this._off);
      continue;
      localObject1 = new DNSRecord.IPv6Address(str1, localDNSRecordClass, bool, j, readBytes(this._off, k));
      this._off = (k + this._off);
      continue;
      Object localObject3 = "";
      try
      {
        String str8 = readName();
        localObject3 = str8;
        localObject1 = new DNSRecord.Pointer(str1, localDNSRecordClass, bool, j, (String)localObject3);
      }
      catch (IOException localIOException2)
      {
        while (true)
          logger.log(Level.WARNING, "There was a problem reading the service name of the answer.", localIOException2);
      }
      byte[] arrayOfByte2 = readBytes(this._off, k);
      localObject1 = new DNSRecord.Text(str1, localDNSRecordClass, bool, j, arrayOfByte2);
      this._off = (k + this._off);
      continue;
      int i4 = readUnsignedShort();
      int i5 = readUnsignedShort();
      int i6 = readUnsignedShort();
      Object localObject2 = "";
      try
      {
        String str7;
        if (USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET)
          str7 = readName();
        String str6;
        for (localObject2 = str7; ; localObject2 = str6)
        {
          localObject1 = new DNSRecord.Service(str1, localDNSRecordClass, bool, j, i4, i5, i6, (String)localObject2);
          break;
          str6 = readNonNameString();
        }
      }
      catch (IOException localIOException1)
      {
        while (true)
          logger.log(Level.WARNING, "There was a problem reading the label of the answer. This can happen if the type of the label  cannot be handled.", localIOException1);
      }
      StringBuffer localStringBuffer = new StringBuffer();
      readUTF(localStringBuffer, this._off, k);
      int i3 = localStringBuffer.indexOf(" ");
      String str2;
      label526: String str3;
      if (i3 > 0)
      {
        str2 = localStringBuffer.substring(0, i3);
        str3 = str2.trim();
        if (i3 <= 0)
          break label589;
      }
      label589: for (String str4 = localStringBuffer.substring(i3 + 1); ; str4 = "")
      {
        String str5 = str4.trim();
        localObject1 = new DNSRecord.HostInformation(str1, localDNSRecordClass, bool, j, str3, str5);
        break;
        str2 = localStringBuffer.toString();
        break label526;
      }
      DNSResultCode localDNSResultCode = DNSResultCode.resultCodeForFlags(this._flags, j);
      int n = (0xFF0000 & j) >> 16;
      if (n == 0)
      {
        this._senderUDPPayload = i;
        while (true)
        {
          if (this._off >= m)
            break label846;
          DNSOptionCode localDNSOptionCode;
          byte[] arrayOfByte1;
          if (m - this._off >= 2)
          {
            int i1 = readUnsignedShort();
            localDNSOptionCode = DNSOptionCode.resultCodeForFlags(i1);
            if (m - this._off >= 2)
            {
              int i2 = readUnsignedShort();
              arrayOfByte1 = new byte[0];
              if (m - this._off >= i2)
              {
                arrayOfByte1 = readBytes(this._off, i2);
                this._off = (i2 + this._off);
              }
              if (DNSOptionCode.Unknown != localDNSOptionCode)
                break label803;
              logger.log(Level.WARNING, "There was an OPT answer. Not currently handled. Option code: " + i1 + " data: " + _hexString(arrayOfByte1));
              continue;
            }
          }
          else
          {
            logger.log(Level.WARNING, "There was a problem reading the OPT record. Ignoring.");
            break;
          }
          logger.log(Level.WARNING, "There was a problem reading the OPT record. Ignoring.");
          break;
          label803: logger.log(Level.INFO, "There was an OPT answer. Option code: " + localDNSOptionCode + " data: " + _hexString(arrayOfByte1));
        }
        label846: continue;
      }
      logger.log(Level.WARNING, "There was an OPT answer. Wrong version number: " + n + " result code: " + localDNSResultCode);
    }
  }

  private byte[] readBytes(int paramInt1, int paramInt2)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt2];
    if (paramInt2 > 0)
      System.arraycopy(this._data, paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }

  private int readInt()
    throws IOException
  {
    return readUnsignedShort() << 16 | readUnsignedShort();
  }

  private String readName()
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = this._off;
    int j = -1;
    int k = i;
    int m = i + 1;
    int n = get(i);
    if (n == 0)
      if (j < 0)
        break label263;
    label263: for (int i2 = j; ; i2 = m)
    {
      this._off = i2;
      return localStringBuffer.toString();
      switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel()[DNSLabel.labelForByte(n).ordinal()])
      {
      default:
        throw new IOException("unsupported dns label type: '" + Integer.toHexString(n & 0xC0) + "' at " + (m - 1));
      case 2:
        readUTF(localStringBuffer, m, n);
        i = m + n;
        localStringBuffer.append('.');
        break;
      case 3:
        if (j < 0)
          j = m + 1;
        int i1 = DNSLabel.labelValue(n) << 8;
        (m + 1);
        i = i1 | get(m);
        if (i >= k)
          throw new IOException("bad domain name: possible circular name detected. name start: " + k + " bad offset: 0x" + Integer.toHexString(i));
        k = i;
        break;
      case 4:
        logger.severe("Extended label are not currently supported.");
        i = m;
        break;
      }
    }
  }

  private String readNonNameString()
    throws IOException
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = this._off;
    int j = i + 1;
    int k = get(i);
    readUTF(localStringBuffer, j, k);
    this._off = (1 + (k + this._off));
    return localStringBuffer.toString();
  }

  private DNSQuestion readQuestion()
    throws IOException
  {
    String str = readName();
    DNSRecordType localDNSRecordType = DNSRecordType.typeForIndex(readUnsignedShort());
    DNSRecordClass localDNSRecordClass = DNSRecordClass.classForIndex(readUnsignedShort());
    if (localDNSRecordClass != null);
    for (boolean bool = localDNSRecordClass.isUnique(); ; bool = false)
      return DNSQuestion.newQuestion(str, localDNSRecordType, localDNSRecordClass, bool);
  }

  private void readUTF(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
    throws IOException
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1;
    if (j >= i)
      return;
    int k = j + 1;
    int m = get(j);
    switch (m >> 4)
    {
    case 8:
    case 9:
    case 10:
    case 11:
    default:
      int i5 = (m & 0x3F) << 4;
      int i6 = k + 1;
      m = i5 | 0xF & get(k);
      k = i6;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 12:
    case 13:
    case 14:
    }
    while (true)
    {
      paramStringBuffer.append((char)m);
      j = k;
      break;
      int i3 = (m & 0x1F) << 6;
      int i4 = k + 1;
      m = i3 | 0x3F & get(k);
      k = i4;
      continue;
      int n = (m & 0xF) << 12;
      int i1 = k + 1;
      int i2 = n | (0x3F & get(k)) << 6;
      k = i1 + 1;
      m = i2 | 0x3F & get(i1);
    }
  }

  private int readUnsignedShort()
    throws IOException
  {
    int i = this._off;
    this._off = (i + 1);
    int j = get(i) << 8;
    int k = this._off;
    this._off = (k + 1);
    return j | get(k);
  }

  void append(DNSIncoming paramDNSIncoming)
  {
    if ((isQuery()) && (isTruncated()) && (paramDNSIncoming.isQuery()))
    {
      this._questions.addAll(paramDNSIncoming.getQuestions());
      this._answers.addAll(paramDNSIncoming.getAnswers());
      this._authoritativeAnswers.addAll(paramDNSIncoming.getAuthorities());
      this._additionals.addAll(paramDNSIncoming.getAdditionals());
      return;
    }
    throw new IllegalArgumentException();
  }

  public int elapseSinceArrival()
  {
    return (int)(System.currentTimeMillis() - this._receivedTime);
  }

  public int getSenderUDPPayload()
  {
    return this._senderUDPPayload;
  }

  String print(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(print());
    int i;
    int j;
    if (paramBoolean)
    {
      i = 0;
      j = this._packet.getLength();
    }
    while (true)
    {
      if (i >= j)
        return localStringBuilder.toString();
      int k = Math.min(32, j - i);
      if (i < 10)
        localStringBuilder.append(' ');
      if (i < 100)
        localStringBuilder.append(' ');
      localStringBuilder.append(i);
      localStringBuilder.append(':');
      int m = 0;
      label102: if (m >= k)
        if (m >= 32);
      int n;
      for (int i2 = m; ; i2++)
      {
        if (i2 >= 32)
        {
          localStringBuilder.append("    ");
          n = 0;
          if (n < k)
            break label272;
          localStringBuilder.append("\n");
          if (i + 32 < 256)
            break label342;
          localStringBuilder.append("....\n");
          break;
          if (m % 8 == 0)
            localStringBuilder.append(' ');
          localStringBuilder.append(Integer.toHexString((0xF0 & this._data[(i + m)]) >> 4));
          localStringBuilder.append(Integer.toHexString((0xF & this._data[(i + m)]) >> 0));
          m++;
          break label102;
        }
        if (i2 % 8 == 0)
          localStringBuilder.append(' ');
        localStringBuilder.append("  ");
      }
      label272: if (n % 8 == 0)
        localStringBuilder.append(' ');
      int i1 = 0xFF & this._data[(i + n)];
      if ((i1 > 32) && (i1 < 127));
      for (char c = (char)i1; ; c = '.')
      {
        localStringBuilder.append(c);
        n++;
        break;
      }
      label342: i += 32;
    }
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str;
    Iterator localIterator4;
    label315: Iterator localIterator3;
    label351: Iterator localIterator2;
    label387: Iterator localIterator1;
    if (isQuery())
    {
      str = "dns[query,";
      localStringBuffer.append(str);
      if (this._packet.getAddress() != null)
        localStringBuffer.append(this._packet.getAddress().getHostAddress());
      localStringBuffer.append(':');
      localStringBuffer.append(this._packet.getPort());
      localStringBuffer.append(", length=");
      localStringBuffer.append(this._packet.getLength());
      localStringBuffer.append(", id=0x");
      localStringBuffer.append(Integer.toHexString(this._id));
      if (this._flags != 0)
      {
        localStringBuffer.append(", flags=0x");
        localStringBuffer.append(Integer.toHexString(this._flags));
        if ((0x8000 & this._flags) != 0)
          localStringBuffer.append(":r");
        if ((0x400 & this._flags) != 0)
          localStringBuffer.append(":aa");
        if ((0x200 & this._flags) != 0)
          localStringBuffer.append(":tc");
      }
      if (getNumberOfQuestions() > 0)
      {
        localStringBuffer.append(", questions=");
        localStringBuffer.append(getNumberOfQuestions());
      }
      if (getNumberOfAnswers() > 0)
      {
        localStringBuffer.append(", answers=");
        localStringBuffer.append(getNumberOfAnswers());
      }
      if (getNumberOfAuthorities() > 0)
      {
        localStringBuffer.append(", authorities=");
        localStringBuffer.append(getNumberOfAuthorities());
      }
      if (getNumberOfAdditionals() > 0)
      {
        localStringBuffer.append(", additionals=");
        localStringBuffer.append(getNumberOfAdditionals());
      }
      if (getNumberOfQuestions() > 0)
      {
        localStringBuffer.append("\nquestions:");
        localIterator4 = this._questions.iterator();
        if (localIterator4.hasNext())
          break label453;
      }
      if (getNumberOfAnswers() > 0)
      {
        localStringBuffer.append("\nanswers:");
        localIterator3 = this._answers.iterator();
        if (localIterator3.hasNext())
          break label491;
      }
      if (getNumberOfAuthorities() > 0)
      {
        localStringBuffer.append("\nauthorities:");
        localIterator2 = this._authoritativeAnswers.iterator();
        if (localIterator2.hasNext())
          break label529;
      }
      if (getNumberOfAdditionals() > 0)
      {
        localStringBuffer.append("\nadditionals:");
        localIterator1 = this._additionals.iterator();
      }
    }
    while (true)
    {
      if (!localIterator1.hasNext())
      {
        localStringBuffer.append("]");
        return localStringBuffer.toString();
        str = "dns[response,";
        break;
        label453: DNSQuestion localDNSQuestion = (DNSQuestion)localIterator4.next();
        localStringBuffer.append("\n\t" + localDNSQuestion);
        break label315;
        label491: DNSRecord localDNSRecord3 = (DNSRecord)localIterator3.next();
        localStringBuffer.append("\n\t" + localDNSRecord3);
        break label351;
        label529: DNSRecord localDNSRecord2 = (DNSRecord)localIterator2.next();
        localStringBuffer.append("\n\t" + localDNSRecord2);
        break label387;
      }
      DNSRecord localDNSRecord1 = (DNSRecord)localIterator1.next();
      localStringBuffer.append("\n\t" + localDNSRecord1);
    }
  }

  public static class MessageInputStream extends ByteArrayInputStream
  {
    public MessageInputStream(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      super(paramInt1, paramInt2);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSIncoming
 * JD-Core Version:    0.6.0
 */