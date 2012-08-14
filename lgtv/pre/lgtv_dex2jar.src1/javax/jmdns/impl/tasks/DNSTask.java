package javax.jmdns.impl.tasks;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import javax.jmdns.impl.DNSIncoming;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.DNSQuestion;
import javax.jmdns.impl.DNSRecord;
import javax.jmdns.impl.JmDNSImpl;

public abstract class DNSTask extends TimerTask
{
  private final JmDNSImpl _jmDNSImpl;

  protected DNSTask(JmDNSImpl paramJmDNSImpl)
  {
    this._jmDNSImpl = paramJmDNSImpl;
  }

  public DNSOutgoing addAdditionalAnswer(DNSOutgoing paramDNSOutgoing, DNSIncoming paramDNSIncoming, DNSRecord paramDNSRecord)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    try
    {
      localDNSOutgoing.addAdditionalAnswer(paramDNSIncoming, paramDNSRecord);
      return localDNSOutgoing;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int i = localDNSOutgoing.getFlags();
        boolean bool = localDNSOutgoing.isMulticast();
        int j = localDNSOutgoing.getMaxUDPPayload();
        int k = localDNSOutgoing.getId();
        localDNSOutgoing.setFlags(i | 0x200);
        localDNSOutgoing.setId(k);
        this._jmDNSImpl.send(localDNSOutgoing);
        localDNSOutgoing = new DNSOutgoing(i, bool, j);
        localDNSOutgoing.addAdditionalAnswer(paramDNSIncoming, paramDNSRecord);
      }
    }
  }

  public DNSOutgoing addAnswer(DNSOutgoing paramDNSOutgoing, DNSIncoming paramDNSIncoming, DNSRecord paramDNSRecord)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    try
    {
      localDNSOutgoing.addAnswer(paramDNSIncoming, paramDNSRecord);
      return localDNSOutgoing;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int i = localDNSOutgoing.getFlags();
        boolean bool = localDNSOutgoing.isMulticast();
        int j = localDNSOutgoing.getMaxUDPPayload();
        int k = localDNSOutgoing.getId();
        localDNSOutgoing.setFlags(i | 0x200);
        localDNSOutgoing.setId(k);
        this._jmDNSImpl.send(localDNSOutgoing);
        localDNSOutgoing = new DNSOutgoing(i, bool, j);
        localDNSOutgoing.addAnswer(paramDNSIncoming, paramDNSRecord);
      }
    }
  }

  public DNSOutgoing addAnswer(DNSOutgoing paramDNSOutgoing, DNSRecord paramDNSRecord, long paramLong)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    try
    {
      localDNSOutgoing.addAnswer(paramDNSRecord, paramLong);
      return localDNSOutgoing;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int i = localDNSOutgoing.getFlags();
        boolean bool = localDNSOutgoing.isMulticast();
        int j = localDNSOutgoing.getMaxUDPPayload();
        int k = localDNSOutgoing.getId();
        localDNSOutgoing.setFlags(i | 0x200);
        localDNSOutgoing.setId(k);
        this._jmDNSImpl.send(localDNSOutgoing);
        localDNSOutgoing = new DNSOutgoing(i, bool, j);
        localDNSOutgoing.addAnswer(paramDNSRecord, paramLong);
      }
    }
  }

  public DNSOutgoing addAuthorativeAnswer(DNSOutgoing paramDNSOutgoing, DNSRecord paramDNSRecord)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    try
    {
      localDNSOutgoing.addAuthorativeAnswer(paramDNSRecord);
      return localDNSOutgoing;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int i = localDNSOutgoing.getFlags();
        boolean bool = localDNSOutgoing.isMulticast();
        int j = localDNSOutgoing.getMaxUDPPayload();
        int k = localDNSOutgoing.getId();
        localDNSOutgoing.setFlags(i | 0x200);
        localDNSOutgoing.setId(k);
        this._jmDNSImpl.send(localDNSOutgoing);
        localDNSOutgoing = new DNSOutgoing(i, bool, j);
        localDNSOutgoing.addAuthorativeAnswer(paramDNSRecord);
      }
    }
  }

  public DNSOutgoing addQuestion(DNSOutgoing paramDNSOutgoing, DNSQuestion paramDNSQuestion)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    try
    {
      localDNSOutgoing.addQuestion(paramDNSQuestion);
      return localDNSOutgoing;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        int i = localDNSOutgoing.getFlags();
        boolean bool = localDNSOutgoing.isMulticast();
        int j = localDNSOutgoing.getMaxUDPPayload();
        int k = localDNSOutgoing.getId();
        localDNSOutgoing.setFlags(i | 0x200);
        localDNSOutgoing.setId(k);
        this._jmDNSImpl.send(localDNSOutgoing);
        localDNSOutgoing = new DNSOutgoing(i, bool, j);
        localDNSOutgoing.addQuestion(paramDNSQuestion);
      }
    }
  }

  public JmDNSImpl getDns()
  {
    return this._jmDNSImpl;
  }

  public abstract String getName();

  public abstract void start(Timer paramTimer);

  public String toString()
  {
    return getName();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.DNSTask
 * JD-Core Version:    0.6.0
 */