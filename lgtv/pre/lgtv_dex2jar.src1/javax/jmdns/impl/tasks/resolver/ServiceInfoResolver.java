package javax.jmdns.impl.tasks.resolver;

import java.io.IOException;
import javax.jmdns.impl.DNSCache;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.DNSQuestion;
import javax.jmdns.impl.DNSRecord;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.ServiceInfoImpl;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public class ServiceInfoResolver extends DNSResolverTask
{
  private final ServiceInfoImpl _info;

  public ServiceInfoResolver(JmDNSImpl paramJmDNSImpl, ServiceInfoImpl paramServiceInfoImpl)
  {
    super(paramJmDNSImpl);
    this._info = paramServiceInfoImpl;
    paramServiceInfoImpl.setDns(getDns());
    getDns().addListener(paramServiceInfoImpl, DNSQuestion.newQuestion(paramServiceInfoImpl.getQualifiedName(), DNSRecordType.TYPE_ANY, DNSRecordClass.CLASS_IN, false));
  }

  protected DNSOutgoing addAnswers(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    if (!this._info.hasData())
    {
      long l = System.currentTimeMillis();
      localDNSOutgoing = addAnswer(addAnswer(localDNSOutgoing, (DNSRecord)getDns().getCache().getDNSEntry(this._info.getQualifiedName(), DNSRecordType.TYPE_SRV, DNSRecordClass.CLASS_IN), l), (DNSRecord)getDns().getCache().getDNSEntry(this._info.getQualifiedName(), DNSRecordType.TYPE_TXT, DNSRecordClass.CLASS_IN), l);
      if (this._info.getServer().length() > 0)
        localDNSOutgoing = addAnswer(addAnswer(localDNSOutgoing, (DNSRecord)getDns().getCache().getDNSEntry(this._info.getServer(), DNSRecordType.TYPE_A, DNSRecordClass.CLASS_IN), l), (DNSRecord)getDns().getCache().getDNSEntry(this._info.getServer(), DNSRecordType.TYPE_AAAA, DNSRecordClass.CLASS_IN), l);
    }
    return localDNSOutgoing;
  }

  protected DNSOutgoing addQuestions(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    if (!this._info.hasData())
    {
      localDNSOutgoing = addQuestion(addQuestion(localDNSOutgoing, DNSQuestion.newQuestion(this._info.getQualifiedName(), DNSRecordType.TYPE_SRV, DNSRecordClass.CLASS_IN, false)), DNSQuestion.newQuestion(this._info.getQualifiedName(), DNSRecordType.TYPE_TXT, DNSRecordClass.CLASS_IN, false));
      if (this._info.getServer().length() > 0)
        localDNSOutgoing = addQuestion(addQuestion(localDNSOutgoing, DNSQuestion.newQuestion(this._info.getServer(), DNSRecordType.TYPE_A, DNSRecordClass.CLASS_IN, false)), DNSQuestion.newQuestion(this._info.getServer(), DNSRecordType.TYPE_AAAA, DNSRecordClass.CLASS_IN, false));
    }
    return localDNSOutgoing;
  }

  public boolean cancel()
  {
    boolean bool = super.cancel();
    if (!this._info.isPersistent())
      getDns().removeListener(this._info);
    return bool;
  }

  protected String description()
  {
    StringBuilder localStringBuilder = new StringBuilder("querying service info: ");
    if (this._info != null);
    for (String str = this._info.getQualifiedName(); ; str = "null")
      return str;
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("ServiceInfoResolver(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.resolver.ServiceInfoResolver
 * JD-Core Version:    0.6.0
 */