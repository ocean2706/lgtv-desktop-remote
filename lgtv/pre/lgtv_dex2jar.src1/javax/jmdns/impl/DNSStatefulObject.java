package javax.jmdns.impl;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import javax.jmdns.impl.constants.DNSState;
import javax.jmdns.impl.tasks.DNSTask;

public abstract interface DNSStatefulObject
{
  public abstract boolean advanceState(DNSTask paramDNSTask);

  public abstract void associateWithTask(DNSTask paramDNSTask, DNSState paramDNSState);

  public abstract boolean cancelState();

  public abstract JmDNSImpl getDns();

  public abstract boolean isAnnounced();

  public abstract boolean isAnnouncing();

  public abstract boolean isAssociatedWithTask(DNSTask paramDNSTask, DNSState paramDNSState);

  public abstract boolean isCanceled();

  public abstract boolean isCanceling();

  public abstract boolean isProbing();

  public abstract boolean recoverState();

  public abstract void removeAssociationWithTask(DNSTask paramDNSTask);

  public abstract boolean revertState();

  public abstract boolean waitForAnnounced(long paramLong);

  public abstract boolean waitForCanceled(long paramLong);

  public static class DefaultImplementation extends ReentrantLock
    implements DNSStatefulObject
  {
    private static Logger logger = Logger.getLogger(DefaultImplementation.class.getName());
    private static final long serialVersionUID = -3264781576883412227L;
    private volatile JmDNSImpl _dns = null;
    protected volatile DNSState _state = DNSState.PROBING_1;
    protected volatile DNSTask _task = null;

    public boolean advanceState(DNSTask paramDNSTask)
    {
      if (this._task == paramDNSTask)
        lock();
      try
      {
        if (this._task == paramDNSTask)
          this._state = this._state.advance();
        while (true)
        {
          return true;
          logger.warning("Trying to advance state whhen not the owner. owner: " + this._task + " perpetrator: " + paramDNSTask);
        }
      }
      finally
      {
        unlock();
      }
      throw localObject;
    }

    public void associateWithTask(DNSTask paramDNSTask, DNSState paramDNSState)
    {
      if ((this._task == null) && (this._state == paramDNSState))
        lock();
      try
      {
        if ((this._task == null) && (this._state == paramDNSState))
          setTask(paramDNSTask);
        return;
      }
      finally
      {
        unlock();
      }
      throw localObject;
    }

    public boolean cancelState()
    {
      int i = 0;
      if ((!isCanceling()) && (!isCanceled()))
        lock();
      try
      {
        if ((!isCanceling()) && (!isCanceled()))
        {
          this._state = DNSState.CANCELING_1;
          setTask(null);
          i = 1;
        }
        return i;
      }
      finally
      {
        unlock();
      }
      throw localObject;
    }

    public JmDNSImpl getDns()
    {
      return this._dns;
    }

    public boolean isAnnounced()
    {
      return this._state.isAnnounced();
    }

    public boolean isAnnouncing()
    {
      return this._state.isAnnouncing();
    }

    public boolean isAssociatedWithTask(DNSTask paramDNSTask, DNSState paramDNSState)
    {
      lock();
      try
      {
        if (this._task == paramDNSTask)
        {
          DNSState localDNSState = this._state;
          if (localDNSState == paramDNSState)
          {
            i = 1;
            return i;
          }
        }
        int i = 0;
      }
      finally
      {
        unlock();
      }
    }

    public boolean isCanceled()
    {
      return this._state.isCanceled();
    }

    public boolean isCanceling()
    {
      return this._state.isCanceling();
    }

    public boolean isProbing()
    {
      return this._state.isProbing();
    }

    public boolean recoverState()
    {
      lock();
      try
      {
        this._state = DNSState.PROBING_1;
        setTask(null);
        return false;
      }
      finally
      {
        unlock();
      }
      throw localObject;
    }

    public void removeAssociationWithTask(DNSTask paramDNSTask)
    {
      if (this._task == paramDNSTask)
        lock();
      try
      {
        if (this._task == paramDNSTask)
          setTask(null);
        return;
      }
      finally
      {
        unlock();
      }
      throw localObject;
    }

    public boolean revertState()
    {
      if ((!isCanceling()) && (!isCanceled()))
        lock();
      try
      {
        if ((!isCanceling()) && (!isCanceled()))
        {
          this._state = this._state.revert();
          setTask(null);
        }
        return true;
      }
      finally
      {
        unlock();
      }
      throw localObject;
    }

    protected void setDns(JmDNSImpl paramJmDNSImpl)
    {
      this._dns = paramJmDNSImpl;
    }

    protected void setTask(DNSTask paramDNSTask)
    {
      this._task = paramDNSTask;
    }

    public String toString()
    {
      if (this._dns != null);
      for (String str = "DNS: " + this._dns.getName(); ; str = "NO DNS")
        return str + " state: " + this._state + " task: " + this._task;
    }

    public boolean waitForAnnounced(long paramLong)
    {
      int i;
      if (!isAnnounced())
      {
        i = 0;
        if (paramLong <= 0L)
          break label64;
      }
      try
      {
        long l3 = System.currentTimeMillis();
        l1 = l3 + paramLong;
        while (i != 0)
        {
          label30: if (!isAnnounced())
            logger.warning("Wait for announced timed out: " + this);
          return isAnnounced();
          label64: l1 = 9223372036854775807L;
        }
        tryLock(1000L, TimeUnit.MILLISECONDS);
      }
      catch (InterruptedException localInterruptedException)
      {
        try
        {
          long l1;
          boolean bool = isAnnounced();
          if (bool)
            i = 1;
          while (true)
          {
            unlock();
            break;
            localInterruptedException = localInterruptedException;
            break label30;
            long l2 = System.currentTimeMillis();
            if (l1 <= l2)
            {
              i = 1;
              continue;
            }
            i = 0;
          }
        }
        finally
        {
          unlock();
        }
      }
      throw localObject;
    }

    public boolean waitForCanceled(long paramLong)
    {
      int i;
      if (!isCanceled())
      {
        i = 0;
        if (paramLong <= 0L)
          break label64;
      }
      try
      {
        long l3 = System.currentTimeMillis();
        l1 = l3 + paramLong;
        while (i != 0)
        {
          label30: if (!isCanceled())
            logger.warning("Wait for canceled timed out: " + this);
          return isCanceled();
          label64: l1 = 9223372036854775807L;
        }
        tryLock(1000L, TimeUnit.MILLISECONDS);
      }
      catch (InterruptedException localInterruptedException)
      {
        try
        {
          long l1;
          boolean bool = isCanceled();
          if (bool)
            i = 1;
          while (true)
          {
            unlock();
            break;
            localInterruptedException = localInterruptedException;
            break label30;
            long l2 = System.currentTimeMillis();
            if (l1 <= l2)
            {
              i = 1;
              continue;
            }
            i = 0;
          }
        }
        finally
        {
          unlock();
        }
      }
      throw localObject;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSStatefulObject
 * JD-Core Version:    0.6.0
 */