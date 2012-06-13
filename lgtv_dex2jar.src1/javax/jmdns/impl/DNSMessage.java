package javax.jmdns.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class DNSMessage
{
  public final boolean MULTICAST = true;
  public final boolean UNICAST = false;
  protected final List<DNSRecord> _additionals;
  protected final List<DNSRecord> _answers;
  protected final List<DNSRecord> _authoritativeAnswers;
  int _flags;
  int _id;
  boolean _multicast;
  protected final List<DNSQuestion> _questions;

  protected DNSMessage(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this._flags = paramInt1;
    this._id = paramInt2;
    this._multicast = paramBoolean;
    this._questions = Collections.synchronizedList(new LinkedList());
    this._answers = Collections.synchronizedList(new LinkedList());
    this._authoritativeAnswers = Collections.synchronizedList(new LinkedList());
    this._additionals = Collections.synchronizedList(new LinkedList());
  }

  public Collection<? extends DNSRecord> getAdditionals()
  {
    return this._additionals;
  }

  public Collection<? extends DNSRecord> getAllAnswers()
  {
    ArrayList localArrayList = new ArrayList(this._answers.size() + this._authoritativeAnswers.size() + this._additionals.size());
    localArrayList.addAll(this._answers);
    localArrayList.addAll(this._authoritativeAnswers);
    localArrayList.addAll(this._additionals);
    return localArrayList;
  }

  public Collection<? extends DNSRecord> getAnswers()
  {
    return this._answers;
  }

  public Collection<? extends DNSRecord> getAuthorities()
  {
    return this._authoritativeAnswers;
  }

  public int getFlags()
  {
    return this._flags;
  }

  public int getId()
  {
    if (this._multicast);
    for (int i = 0; ; i = this._id)
      return i;
  }

  public int getNumberOfAdditionals()
  {
    return getAdditionals().size();
  }

  public int getNumberOfAnswers()
  {
    return getAnswers().size();
  }

  public int getNumberOfAuthorities()
  {
    return getAuthorities().size();
  }

  public int getNumberOfQuestions()
  {
    return getQuestions().size();
  }

  public Collection<? extends DNSQuestion> getQuestions()
  {
    return this._questions;
  }

  public boolean isEmpty()
  {
    if (getNumberOfQuestions() + getNumberOfAnswers() + getNumberOfAuthorities() + getNumberOfAdditionals() == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isMulticast()
  {
    return this._multicast;
  }

  public boolean isQuery()
  {
    if ((0x8000 & this._flags) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isResponse()
  {
    if ((0x8000 & this._flags) == 32768);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isTruncated()
  {
    if ((0x200 & this._flags) != 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  String print()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(toString() + "\n");
    Iterator localIterator1 = this._questions.iterator();
    Iterator localIterator2;
    label65: Iterator localIterator3;
    label86: Iterator localIterator4;
    if (!localIterator1.hasNext())
    {
      localIterator2 = this._answers.iterator();
      if (localIterator2.hasNext())
        break label163;
      localIterator3 = this._authoritativeAnswers.iterator();
      if (localIterator3.hasNext())
        break label205;
      localIterator4 = this._additionals.iterator();
    }
    while (true)
    {
      if (!localIterator4.hasNext())
      {
        return localStringBuffer.toString();
        DNSQuestion localDNSQuestion = (DNSQuestion)localIterator1.next();
        localStringBuffer.append("\tquestion:      " + localDNSQuestion + "\n");
        break;
        label163: DNSRecord localDNSRecord1 = (DNSRecord)localIterator2.next();
        localStringBuffer.append("\tanswer:        " + localDNSRecord1 + "\n");
        break label65;
        label205: DNSRecord localDNSRecord2 = (DNSRecord)localIterator3.next();
        localStringBuffer.append("\tauthoritative: " + localDNSRecord2 + "\n");
        break label86;
      }
      DNSRecord localDNSRecord3 = (DNSRecord)localIterator4.next();
      localStringBuffer.append("\tadditional:    " + localDNSRecord3 + "\n");
    }
  }

  public void setFlags(int paramInt)
  {
    this._flags = paramInt;
  }

  public void setId(int paramInt)
  {
    this._id = paramInt;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSMessage
 * JD-Core Version:    0.6.0
 */