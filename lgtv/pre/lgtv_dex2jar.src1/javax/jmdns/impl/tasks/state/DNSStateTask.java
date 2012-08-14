package javax.jmdns.impl.tasks.state;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.jmdns.ServiceInfo;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.ServiceInfoImpl;
import javax.jmdns.impl.constants.DNSState;
import javax.jmdns.impl.tasks.DNSTask;

public abstract class DNSStateTask extends DNSTask
{
  private static int _defaultTTL = 3600;
  private final int _ttl;

  public DNSStateTask(JmDNSImpl paramJmDNSImpl, int paramInt)
  {
    super(paramJmDNSImpl);
    this._ttl = paramInt;
  }

  public static int defaultTTL()
  {
    return _defaultTTL;
  }

  public static void setDefaultTTL(int paramInt)
  {
    _defaultTTL = paramInt;
  }

  protected void associate(DNSState paramDNSState)
  {
    while (true)
    {
      Iterator localIterator;
      synchronized (getDns())
      {
        getDns().associateWithTask(this, paramDNSState);
        localIterator = getDns().getServices().values().iterator();
        if (!localIterator.hasNext())
          return;
      }
      ((ServiceInfoImpl)(ServiceInfo)localIterator.next()).associateWithTask(this, paramDNSState);
    }
  }

  public int getTTL()
  {
    return this._ttl;
  }

  protected void removeAssociation()
  {
    while (true)
    {
      Iterator localIterator;
      synchronized (getDns())
      {
        getDns().removeAssociationWithTask(this);
        localIterator = getDns().getServices().values().iterator();
        if (!localIterator.hasNext())
          return;
      }
      ((ServiceInfoImpl)(ServiceInfo)localIterator.next()).removeAssociationWithTask(this);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.state.DNSStateTask
 * JD-Core Version:    0.6.0
 */