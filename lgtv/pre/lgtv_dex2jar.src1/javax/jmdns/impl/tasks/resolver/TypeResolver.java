package javax.jmdns.impl.tasks.resolver;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.jmdns.impl.DNSOutgoing;
import javax.jmdns.impl.DNSQuestion;
import javax.jmdns.impl.DNSRecord.Pointer;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public class TypeResolver extends DNSResolverTask
{
  public TypeResolver(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl);
  }

  protected DNSOutgoing addAnswers(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    DNSOutgoing localDNSOutgoing = paramDNSOutgoing;
    long l = System.currentTimeMillis();
    Iterator localIterator = getDns().getServiceTypes().keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localDNSOutgoing;
      String str = (String)localIterator.next();
      localDNSOutgoing = addAnswer(localDNSOutgoing, new DNSRecord.Pointer("_services._dns-sd._udp.local.", DNSRecordClass.CLASS_IN, false, 3600, str), l);
    }
  }

  protected DNSOutgoing addQuestions(DNSOutgoing paramDNSOutgoing)
    throws IOException
  {
    return addQuestion(paramDNSOutgoing, DNSQuestion.newQuestion("_services._dns-sd._udp.local.", DNSRecordType.TYPE_PTR, DNSRecordClass.CLASS_IN, false));
  }

  protected String description()
  {
    return "querying type";
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("TypeResolver(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.resolver.TypeResolver
 * JD-Core Version:    0.6.0
 */