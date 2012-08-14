package javax.jmdns.impl.tasks.state;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Timer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.ServiceInfo;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.DNSQuestion;
import javax.jmdns.impl.DNSRecord;
import javax.jmdns.impl.DNSRecord.Service;
import javax.jmdns.impl.HostInfo;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.ServiceInfoImpl;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;
import javax.jmdns.impl.constants.DNSState;

public class Prober extends DNSStateTask
{
  static Logger logger = Logger.getLogger(Prober.class.getName());
  DNSState taskState = DNSState.PROBING_1;

  public Prober(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl, defaultTTL());
    associate(DNSState.PROBING_1);
  }

  public boolean cancel()
  {
    removeAssociation();
    return super.cancel();
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("Prober(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }

  public void run()
  {
    DNSOutgoing localDNSOutgoing = new DNSOutgoing(0);
    try
    {
      if ((getDns().isCanceling()) || (getDns().isCanceled()))
        cancel();
      else
        synchronized (getDns())
        {
          Iterator localIterator2;
          if (getDns().isAssociatedWithTask(this, this.taskState))
          {
            logger.finer(getName() + ".run() JmDNS probing " + getDns().getName());
            localDNSOutgoing.addQuestion(DNSQuestion.newQuestion(getDns().getLocalHost().getName(), DNSRecordType.TYPE_ANY, DNSRecordClass.CLASS_IN, false));
            localIterator2 = getDns().getLocalHost().answers(getTTL()).iterator();
            if (!localIterator2.hasNext())
              getDns().advanceState(this);
          }
          else
          {
            localIterator1 = getDns().getServices().values().iterator();
            if (localIterator1.hasNext())
              break label355;
            if (localDNSOutgoing.isEmpty())
              break label517;
            logger.finer(getName() + ".run() JmDNS probing #" + this.taskState);
            getDns().send(localDNSOutgoing);
            this.taskState = this.taskState.advance();
            if (this.taskState.isProbing())
              return;
            cancel();
            getDns().startAnnouncer();
            return;
          }
          DNSRecord localDNSRecord = (DNSRecord)localIterator2.next();
          localDNSOutgoing = addAuthorativeAnswer(localDNSOutgoing, localDNSRecord);
        }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        Iterator localIterator1;
        logger.log(Level.WARNING, getName() + ".run() exception ", localThrowable);
        getDns().recover();
        continue;
        label355: synchronized ((ServiceInfoImpl)(ServiceInfo)localIterator1.next())
        {
          if (???.isAssociatedWithTask(this, this.taskState))
          {
            logger.fine(getName() + ".run() JmDNS probing " + ???.getQualifiedName());
            DNSQuestion localDNSQuestion = DNSQuestion.newQuestion(???.getQualifiedName(), DNSRecordType.TYPE_ANY, DNSRecordClass.CLASS_IN, false);
            localDNSOutgoing = addAuthorativeAnswer(addQuestion(localDNSOutgoing, localDNSQuestion), new DNSRecord.Service(???.getQualifiedName(), DNSRecordClass.CLASS_IN, false, getTTL(), ???.getPriority(), ???.getWeight(), ???.getPort(), getDns().getLocalHost().getName()));
            ???.advanceState(this);
          }
        }
      }
      label517: cancel();
    }
  }

  public void start(Timer paramTimer)
  {
    long l = System.currentTimeMillis();
    if (l - getDns().getLastThrottleIncrement() < 5000L)
    {
      getDns().setThrottle(1 + getDns().getThrottle());
      getDns().setLastThrottleIncrement(l);
      if ((!getDns().isAnnounced()) || (getDns().getThrottle() >= 10))
        break label96;
      paramTimer.schedule(this, JmDNSImpl.getRandom().nextInt(251), 250L);
    }
    while (true)
    {
      return;
      getDns().setThrottle(1);
      break;
      label96: if ((getDns().isCanceling()) || (getDns().isCanceled()))
        continue;
      paramTimer.schedule(this, 1000L, 1000L);
    }
  }

  public String toString()
  {
    return super.toString() + " state: " + this.taskState;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.state.Prober
 * JD-Core Version:    0.6.0
 */