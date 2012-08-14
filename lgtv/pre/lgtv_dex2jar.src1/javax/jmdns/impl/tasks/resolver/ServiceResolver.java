package javax.jmdns.impl.tasks.resolver;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.jmdns.ServiceInfo;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.DNSQuestion;
import javax.jmdns.impl.DNSRecord.Pointer;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public class ServiceResolver extends DNSResolverTask
{
  private String _type;

  public ServiceResolver(JmDNSImpl paramJmDNSImpl, String paramString)
  {
    super(paramJmDNSImpl);
    this._type = paramString;
  }

  protected DNSOutgoing addAnswers(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    long l = System.currentTimeMillis();
    Iterator localIterator = getDns().getServices().values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localDNSOutgoing;
      ServiceInfo localServiceInfo = (ServiceInfo)localIterator.next();
      localDNSOutgoing = addAnswer(localDNSOutgoing, new DNSRecord.Pointer(localServiceInfo.getType(), DNSRecordClass.CLASS_IN, false, 3600, localServiceInfo.getQualifiedName()), l);
    }
  }

  protected DNSOutgoing addQuestions(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    return addQuestion(paramDNSOutgoing, DNSQuestion.newQuestion(this._type, DNSRecordType.TYPE_PTR, DNSRecordClass.CLASS_IN, false));
  }

  protected String description()
  {
    return "querying service";
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("ServiceResolver(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.resolver.ServiceResolver
 * JD-Core Version:    0.6.0
 */