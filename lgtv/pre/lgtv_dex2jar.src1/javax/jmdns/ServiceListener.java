package javax.jmdns;

import java.util.EventListener;

public abstract interface ServiceListener extends EventListener
{
  public abstract void serviceAdded(ServiceEvent paramServiceEvent);

  public abstract void serviceRemoved(ServiceEvent paramServiceEvent);

  public abstract void serviceResolved(ServiceEvent paramServiceEvent);
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.ServiceListener
 * JD-Core Version:    0.6.0
 */