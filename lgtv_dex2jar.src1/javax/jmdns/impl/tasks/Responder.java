package javax.jmdns.impl.tasks;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.Timer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.impl.DNSIncoming;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.DNSQuestion;
import javax.jmdns.impl.DNSRecord;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.constants.DNSConstants;

public class Responder extends DNSTask
{
  static Logger logger = Logger.getLogger(Responder.class.getName());
  private DNSIncoming _in;
  private boolean _unicast;

  public Responder(JmDNSImpl paramJmDNSImpl, DNSIncoming paramDNSIncoming, int paramInt)
  {
    super(paramJmDNSImpl);
    this._in = paramDNSIncoming;
    if (paramInt != DNSConstants.MDNS_PORT);
    for (boolean bool = true; ; bool = false)
    {
      this._unicast = bool;
      return;
    }
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("Responder(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }

  public void run()
  {
    getDns().ioLock();
    while (true)
    {
      HashSet localHashSet2;
      Iterator localIterator2;
      Iterator localIterator3;
      Iterator localIterator4;
      try
      {
        if (getDns().getPlannedAnswer() != this._in)
          continue;
        getDns().setPlannedAnswer(null);
        HashSet localHashSet1 = new HashSet();
        localHashSet2 = new HashSet();
        boolean bool1 = getDns().isAnnounced();
        if (!bool1)
          continue;
        try
        {
          Iterator localIterator1 = this._in.getQuestions().iterator();
          if (localIterator1.hasNext())
            continue;
          localIterator2 = this._in.getAnswers().iterator();
          if (!localIterator2.hasNext())
          {
            if (localHashSet2.size() == 0)
              continue;
            logger.finer(getName() + "run() JmDNS responding");
            if (!this._unicast)
              break label478;
            bool2 = false;
            localObject2 = new DNSOutgoing(33792, bool2, this._in.getSenderUDPPayload());
            ((DNSOutgoing)localObject2).setId(this._in.getId());
            localIterator3 = localHashSet1.iterator();
            if (localIterator3.hasNext())
              break label424;
            localIterator4 = localHashSet2.iterator();
            if (localIterator4.hasNext())
              break label445;
            if (((DNSOutgoing)localObject2).isEmpty())
              continue;
            getDns().send((DNSOutgoing)localObject2);
            getDns().ioUnlock();
            return;
            DNSQuestion localDNSQuestion = (DNSQuestion)localIterator1.next();
            logger.finer(getName() + "run() JmDNS responding to: " + localDNSQuestion);
            if (!this._unicast)
              continue;
            localHashSet1.add(localDNSQuestion);
            localDNSQuestion.addAnswers(getDns(), localHashSet2);
            continue;
          }
        }
        catch (Throwable localThrowable)
        {
          logger.log(Level.WARNING, "run() exception ", localThrowable);
          getDns().close();
          continue;
        }
      }
      finally
      {
        getDns().ioUnlock();
      }
      DNSRecord localDNSRecord1 = (DNSRecord)localIterator2.next();
      if ((localDNSRecord1.getTTL() <= 1800) || (!localHashSet2.remove(localDNSRecord1)))
        continue;
      logger.log(Level.FINER, getName() + "JmDNS Responder Known Answer Removed");
      continue;
      label424: Object localObject2 = addQuestion((DNSOutgoing)localObject2, (DNSQuestion)localIterator3.next());
      continue;
      label445: DNSRecord localDNSRecord2 = (DNSRecord)localIterator4.next();
      DNSOutgoing localDNSOutgoing = addAnswer((DNSOutgoing)localObject2, this._in, localDNSRecord2);
      localObject2 = localDNSOutgoing;
      continue;
      label478: boolean bool2 = true;
    }
  }

  public void start(Timer paramTimer)
  {
    boolean bool = true;
    Iterator localIterator = this._in.getQuestions().iterator();
    if (!localIterator.hasNext())
      label24: if ((!bool) || (this._in.isTruncated()))
        break label172;
    label172: int j;
    for (int i = 0; ; j = 20 + JmDNSImpl.getRandom().nextInt(96) - this._in.elapseSinceArrival())
    {
      if (i < 0)
        i = 0;
      logger.finest(getName() + "start() Responder chosen delay=" + i);
      if ((!getDns().isCanceling()) && (!getDns().isCanceled()))
        paramTimer.schedule(this, i);
      return;
      DNSQuestion localDNSQuestion = (DNSQuestion)localIterator.next();
      logger.finest(getName() + "start() question=" + localDNSQuestion);
      bool = localDNSQuestion.iAmTheOnlyOne(getDns());
      if (bool)
        break;
      break label24;
    }
  }

  public String toString()
  {
    return super.toString() + " incomming: " + this._in;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.Responder
 * JD-Core Version:    0.6.0
 */