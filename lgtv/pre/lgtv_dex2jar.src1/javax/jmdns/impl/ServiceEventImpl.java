package javax.jmdns.impl;

import javax.jmdns.JmDNS;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;

public class ServiceEventImpl extends ServiceEvent
{
  private static final long serialVersionUID = 7107973622016897488L;
  private ServiceInfo _info;
  private String _name;
  private String _type;

  public ServiceEventImpl(JmDNSImpl paramJmDNSImpl, String paramString1, String paramString2, ServiceInfo paramServiceInfo)
  {
    super(paramJmDNSImpl);
    this._type = paramString1;
    this._name = paramString2;
    this._info = paramServiceInfo;
  }

  public Object clone()
    throws CloneNotSupportedException
  {
    ServiceInfoImpl localServiceInfoImpl = new ServiceInfoImpl(getInfo());
    return new ServiceEventImpl((JmDNSImpl)getDNS(), getType(), getName(), localServiceInfoImpl);
  }

  public JmDNS getDNS()
  {
    return (JmDNS)getSource();
  }

  public ServiceInfo getInfo()
  {
    return this._info;
  }

  public String getName()
  {
    return this._name;
  }

  public String getType()
  {
    return this._type;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[" + getClass().getSimpleName() + "@" + System.identityHashCode(this) + " ");
    localStringBuilder.append("\n\tname: '");
    localStringBuilder.append(getName());
    localStringBuilder.append("' type: '");
    localStringBuilder.append(getType());
    localStringBuilder.append("' info: '");
    localStringBuilder.append(getInfo());
    localStringBuilder.append("']");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.ServiceEventImpl
 * JD-Core Version:    0.6.0
 */