package javax.jmdns;

import java.util.EventObject;

public abstract class ServiceEvent extends EventObject
{
  private static final long serialVersionUID = -8558445644541006271L;

  public ServiceEvent(Object paramObject)
  {
    super(paramObject);
  }

  public Object clone()
    throws CloneNotSupportedException
  {
    return super.clone();
  }

  public abstract JmDNS getDNS();

  public abstract ServiceInfo getInfo();

  public abstract String getName();

  public abstract String getType();
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.ServiceEvent
 * JD-Core Version:    0.6.0
 */