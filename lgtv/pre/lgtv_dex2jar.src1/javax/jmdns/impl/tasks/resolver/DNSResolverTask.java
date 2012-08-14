package javax.jmdns.impl.tasks.resolver;

import java.io.IOException;
import java.util.Timer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.tasks.DNSTask;

public abstract class DNSResolverTask extends DNSTask
{
  private static Logger logger = Logger.getLogger(DNSResolverTask.class.getName());
  protected int _count = 0;

  public DNSResolverTask(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl);
  }

  protected abstract DNSOutgoing addAnswers(DNSOutgoing paramDNSOutgoing)
    throws IOException;

  protected abstract DNSOutgoing addQuestions(DNSOutgoing paramDNSOutgoing)
    throws IOException;

  protected abstract String description();

  public void run()
  {
    try
    {
      if ((getDns().isCanceling()) || (getDns().isCanceled()))
      {
        cancel();
        return;
      }
      int i = this._count;
      this._count = (i + 1);
      if (i < 3)
      {
        logger.finer(getName() + ".run() JmDNS " + description());
        DNSOutgoing localDNSOutgoing = addQuestions(new DNSOutgoing(0));
        if (getDns().isAnnounced())
          localDNSOutgoing = addAnswers(localDNSOutgoing);
        if (localDNSOutgoing.isEmpty())
          return;
        getDns().send(localDNSOutgoing);
      }
    }
    catch (Throwable localThrowable)
    {
      logger.log(Level.WARNING, getName() + ".run() exception ", localThrowable);
      getDns().recover();
    }
    cancel();
  }

  public void start(Timer paramTimer)
  {
    if ((!getDns().isCanceling()) && (!getDns().isCanceled()))
      paramTimer.schedule(this, 225L, 225L);
  }

  public String toString()
  {
    return super.toString() + " count: " + this._count;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.resolver.DNSResolverTask
 * JD-Core Version:    0.6.0
 */