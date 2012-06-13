package javax.jmdns.impl.tasks;

import java.util.Collection;
import java.util.Iterator;
import java.util.Timer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.impl.DNSCache;
import javax.jmdns.impl.DNSEntry;
import javax.jmdns.impl.DNSRecord;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.JmDNSImpl.Operation;

public class RecordReaper extends DNSTask
{
  static Logger logger = Logger.getLogger(RecordReaper.class.getName());

  public RecordReaper(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl);
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("RecordReaper(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }

  public void run()
  {
    if ((getDns().isCanceling()) || (getDns().isCanceled()));
    while (true)
    {
      return;
      logger.finest(getName() + ".run() JmDNS reaping cache");
      long l = System.currentTimeMillis();
      Iterator localIterator = getDns().getCache().allValues().iterator();
      while (localIterator.hasNext())
      {
        DNSEntry localDNSEntry = (DNSEntry)localIterator.next();
        try
        {
          DNSRecord localDNSRecord = (DNSRecord)localDNSEntry;
          if (localDNSRecord.isStale(l))
            getDns().renewServiceCollector(localDNSRecord);
          if (!localDNSRecord.isExpired(l))
            continue;
          getDns().updateRecord(l, localDNSRecord, JmDNSImpl.Operation.Remove);
          getDns().getCache().removeDNSEntry(localDNSRecord);
        }
        catch (Exception localException)
        {
          logger.log(Level.SEVERE, getName() + ".Error while reaping records: " + localDNSEntry, localException);
          logger.severe(getDns().toString());
        }
      }
    }
  }

  public void start(Timer paramTimer)
  {
    if ((!getDns().isCanceling()) && (!getDns().isCanceled()))
      paramTimer.schedule(this, 10000L, 10000L);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.RecordReaper
 * JD-Core Version:    0.6.0
 */