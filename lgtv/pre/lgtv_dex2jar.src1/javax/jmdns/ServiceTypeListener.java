package javax.jmdns;

import java.util.EventListener;

public abstract interface ServiceTypeListener extends EventListener
{
  public abstract void serviceTypeAdded(ServiceEvent paramServiceEvent);

  public abstract void subTypeForServiceTypeAdded(ServiceEvent paramServiceEvent);
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.ServiceTypeListener
 * JD-Core Version:    0.6.0
 */