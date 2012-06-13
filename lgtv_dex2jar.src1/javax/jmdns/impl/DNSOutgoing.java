package javax.jmdns.impl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public final class DNSOutgoing extends DNSMessage
{
  private static final int HEADER_SIZE = 12;
  public static boolean USE_DOMAIN_NAME_COMPRESSION = true;
  private final MessageOutputStream _additionalsAnswersBytes;
  private final MessageOutputStream _answersBytes;
  private final MessageOutputStream _authoritativeAnswersBytes;
  private int _maxUDPPayload;
  Map<String, Integer> _names = new HashMap();
  private final MessageOutputStream _questionsBytes;

  public DNSOutgoing(int paramInt)
  {
    this(paramInt, true, 1460);
  }

  public DNSOutgoing(int paramInt, boolean paramBoolean)
  {
    this(paramInt, paramBoolean, 1460);
  }

  public DNSOutgoing(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    super(paramInt1, 0, paramBoolean);
    if (paramInt2 > 0);
    for (int i = paramInt2; ; i = 1460)
    {
      this._maxUDPPayload = i;
      this._questionsBytes = new MessageOutputStream(paramInt2, this);
      this._answersBytes = new MessageOutputStream(paramInt2, this);
      this._authoritativeAnswersBytes = new MessageOutputStream(paramInt2, this);
      this._additionalsAnswersBytes = new MessageOutputStream(paramInt2, this);
      return;
    }
  }

  public void addAdditionalAnswer(DNSIncoming paramDNSIncoming, DNSRecord paramDNSRecord)
    throws IOException
  {
    MessageOutputStream localMessageOutputStream = new MessageOutputStream(512, this);
    localMessageOutputStream.writeRecord(paramDNSRecord, 0L);
    byte[] arrayOfByte = localMessageOutputStream.toByteArray();
    if (arrayOfByte.length < availableSpace())
    {
      this._additionals.add(paramDNSRecord);
      this._additionalsAnswersBytes.write(arrayOfByte, 0, arrayOfByte.length);
      return;
    }
    throw new IOException("message full");
  }

  public void addAnswer(DNSIncoming paramDNSIncoming, DNSRecord paramDNSRecord)
    throws IOException
  {
    if ((paramDNSIncoming == null) || (!paramDNSRecord.suppressedBy(paramDNSIncoming)))
      addAnswer(paramDNSRecord, 0L);
  }

  public void addAnswer(DNSRecord paramDNSRecord, long paramLong)
    throws IOException
  {
    if ((paramDNSRecord != null) && ((paramLong == 0L) || (!paramDNSRecord.isExpired(paramLong))))
    {
      MessageOutputStream localMessageOutputStream = new MessageOutputStream(512, this);
      localMessageOutputStream.writeRecord(paramDNSRecord, paramLong);
      byte[] arrayOfByte = localMessageOutputStream.toByteArray();
      if (arrayOfByte.length < availableSpace())
      {
        this._answers.add(paramDNSRecord);
        this._answersBytes.write(arrayOfByte, 0, arrayOfByte.length);
      }
    }
    else
    {
      return;
    }
    throw new IOException("message full");
  }

  public void addAuthorativeAnswer(DNSRecord paramDNSRecord)
    throws IOException
  {
    MessageOutputStream localMessageOutputStream = new MessageOutputStream(512, this);
    localMessageOutputStream.writeRecord(paramDNSRecord, 0L);
    byte[] arrayOfByte = localMessageOutputStream.toByteArray();
    if (arrayOfByte.length < availableSpace())
    {
      this._authoritativeAnswers.add(paramDNSRecord);
      this._authoritativeAnswersBytes.write(arrayOfByte, 0, arrayOfByte.length);
      return;
    }
    throw new IOException("message full");
  }

  public void addQuestion(DNSQuestion paramDNSQuestion)
    throws IOException
  {
    MessageOutputStream localMessageOutputStream = new MessageOutputStream(512, this);
    localMessageOutputStream.writeQuestion(paramDNSQuestion);
    byte[] arrayOfByte = localMessageOutputStream.toByteArray();
    if (arrayOfByte.length < availableSpace())
    {
      this._questions.add(paramDNSQuestion);
      this._questionsBytes.write(arrayOfByte, 0, arrayOfByte.length);
      return;
    }
    throw new IOException("message full");
  }

  public int availableSpace()
  {
    return this._maxUDPPayload - 12 - this._questionsBytes.size() - this._answersBytes.size() - this._authoritativeAnswersBytes.size() - this._additionalsAnswersBytes.size();
  }

  public byte[] data()
  {
    long l = System.currentTimeMillis();
    this._names.clear();
    MessageOutputStream localMessageOutputStream = new MessageOutputStream(this._maxUDPPayload, this);
    int i;
    Iterator localIterator1;
    label93: Iterator localIterator2;
    label114: Iterator localIterator3;
    label135: Iterator localIterator4;
    if (this._multicast)
    {
      i = 0;
      localMessageOutputStream.writeShort(i);
      localMessageOutputStream.writeShort(this._flags);
      localMessageOutputStream.writeShort(getNumberOfQuestions());
      localMessageOutputStream.writeShort(getNumberOfAnswers());
      localMessageOutputStream.writeShort(getNumberOfAuthorities());
      localMessageOutputStream.writeShort(getNumberOfAdditionals());
      localIterator1 = this._questions.iterator();
      if (localIterator1.hasNext())
        break label180;
      localIterator2 = this._answers.iterator();
      if (localIterator2.hasNext())
        break label197;
      localIterator3 = this._authoritativeAnswers.iterator();
      if (localIterator3.hasNext())
        break label215;
      localIterator4 = this._additionals.iterator();
    }
    while (true)
    {
      if (!localIterator4.hasNext())
      {
        return localMessageOutputStream.toByteArray();
        i = this._id;
        break;
        label180: localMessageOutputStream.writeQuestion((DNSQuestion)localIterator1.next());
        break label93;
        label197: localMessageOutputStream.writeRecord((DNSRecord)localIterator2.next(), l);
        break label114;
        label215: localMessageOutputStream.writeRecord((DNSRecord)localIterator3.next(), l);
        break label135;
      }
      localMessageOutputStream.writeRecord((DNSRecord)localIterator4.next(), l);
    }
  }

  public int getMaxUDPPayload()
  {
    return this._maxUDPPayload;
  }

  public boolean isQuery()
  {
    if ((0x8000 & this._flags) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str;
    Iterator localIterator4;
    label239: Iterator localIterator3;
    label274: Iterator localIterator2;
    label309: Iterator localIterator1;
    if (isQuery())
    {
      str = "dns[query:";
      localStringBuffer.append(str);
      localStringBuffer.append(" id=0x");
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
          break label396;
      }
      if (getNumberOfAnswers() > 0)
      {
        localStringBuffer.append("\nanswers:");
        localIterator3 = this._answers.iterator();
        if (localIterator3.hasNext())
          break label433;
      }
      if (getNumberOfAuthorities() > 0)
      {
        localStringBuffer.append("\nauthorities:");
        localIterator2 = this._authoritativeAnswers.iterator();
        if (localIterator2.hasNext())
          break label470;
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
        localStringBuffer.append("\nnames=" + this._names);
        localStringBuffer.append("]");
        return localStringBuffer.toString();
        str = "dns[response:";
        break;
        label396: DNSQuestion localDNSQuestion = (DNSQuestion)localIterator4.next();
        localStringBuffer.append("\n\t" + localDNSQuestion);
        break label239;
        label433: DNSRecord localDNSRecord3 = (DNSRecord)localIterator3.next();
        localStringBuffer.append("\n\t" + localDNSRecord3);
        break label274;
        label470: DNSRecord localDNSRecord2 = (DNSRecord)localIterator2.next();
        localStringBuffer.append("\n\t" + localDNSRecord2);
        break label309;
      }
      DNSRecord localDNSRecord1 = (DNSRecord)localIterator1.next();
      localStringBuffer.append("\n\t" + localDNSRecord1);
    }
  }

  public static class MessageOutputStream extends ByteArrayOutputStream
  {
    private DNSOutgoing _out;

    MessageOutputStream(int paramInt, DNSOutgoing paramDNSOutgoing)
    {
      super();
      this._out = paramDNSOutgoing;
    }

    void writeByte(int paramInt)
    {
      write(paramInt & 0xFF);
    }

    void writeBytes(String paramString, int paramInt1, int paramInt2)
    {
      for (int i = 0; ; i++)
      {
        if (i >= paramInt2)
          return;
        writeByte(paramString.charAt(paramInt1 + i));
      }
    }

    void writeBytes(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte != null)
        writeBytes(paramArrayOfByte, 0, paramArrayOfByte.length);
    }

    void writeBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      for (int i = 0; ; i++)
      {
        if (i >= paramInt2)
          return;
        writeByte(paramArrayOfByte[(paramInt1 + i)]);
      }
    }

    void writeInt(int paramInt)
    {
      writeShort(paramInt >> 16);
      writeShort(paramInt);
    }

    void writeName(String paramString)
    {
      writeName(paramString, true);
    }

    void writeName(String paramString, boolean paramBoolean)
    {
      String str = paramString;
      while (true)
      {
        int i = str.indexOf('.');
        if (i < 0)
          i = str.length();
        if (i <= 0)
          writeByte(0);
        while (true)
        {
          return;
          if ((!paramBoolean) || (!DNSOutgoing.USE_DOMAIN_NAME_COMPRESSION))
            break;
          Integer localInteger = (Integer)this._out._names.get(str);
          if (localInteger != null)
          {
            int j = localInteger.intValue();
            writeByte(0xC0 | j >> 8);
            writeByte(j & 0xFF);
            continue;
          }
          this._out._names.put(str, Integer.valueOf(size()));
        }
        writeUTF(str, 0, i);
        str = str.substring(i);
        if (!str.startsWith("."))
          continue;
        str = str.substring(1);
      }
    }

    void writeQuestion(DNSQuestion paramDNSQuestion)
    {
      writeName(paramDNSQuestion.getName());
      writeShort(paramDNSQuestion.getRecordType().indexValue());
      writeShort(paramDNSQuestion.getRecordClass().indexValue());
    }

    void writeRecord(DNSRecord paramDNSRecord, long paramLong)
    {
      writeName(paramDNSRecord.getName());
      writeShort(paramDNSRecord.getRecordType().indexValue());
      int i = paramDNSRecord.getRecordClass().indexValue();
      int j;
      if ((paramDNSRecord.isUnique()) && (this._out.isMulticast()))
      {
        j = 32768;
        writeShort(i | j);
        if (paramLong != 0L)
          break label129;
      }
      label129: for (int k = paramDNSRecord.getTTL(); ; k = paramDNSRecord.getRemainingTTL(paramLong))
      {
        writeInt(k);
        MessageOutputStream localMessageOutputStream = new MessageOutputStream(512, this._out);
        paramDNSRecord.write(localMessageOutputStream);
        byte[] arrayOfByte = localMessageOutputStream.toByteArray();
        writeShort(arrayOfByte.length);
        write(arrayOfByte, 0, arrayOfByte.length);
        return;
        j = 0;
        break;
      }
    }

    void writeShort(int paramInt)
    {
      writeByte(paramInt >> 8);
      writeByte(paramInt);
    }

    void writeUTF(String paramString, int paramInt1, int paramInt2)
    {
      int i = 0;
      int j = 0;
      int m;
      if (j >= paramInt2)
      {
        writeByte(i);
        m = 0;
        if (m >= paramInt2)
          return;
      }
      else
      {
        int k = paramString.charAt(paramInt1 + j);
        if ((k >= 1) && (k <= 127))
          i++;
        while (true)
        {
          j++;
          break;
          if (k > 2047)
          {
            i += 3;
            continue;
          }
          i += 2;
        }
      }
      int n = paramString.charAt(paramInt1 + m);
      if ((n >= 1) && (n <= 127))
        writeByte(n);
      while (true)
      {
        m++;
        break;
        if (n > 2047)
        {
          writeByte(0xE0 | 0xF & n >> 12);
          writeByte(0x80 | 0x3F & n >> 6);
          writeByte(0x80 | 0x3F & n >> 0);
          continue;
        }
        writeByte(0xC0 | 0x1F & n >> 6);
        writeByte(0x80 | 0x3F & n >> 0);
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSOutgoing
 * JD-Core Version:    0.6.0
 */