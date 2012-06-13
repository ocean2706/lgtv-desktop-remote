package javax.jmdns.impl;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import javax.jmdns.ServiceInfo;
import javax.jmdns.impl.constants.DNSRecordClass;
import javax.jmdns.impl.constants.DNSRecordType;

public class DNSQuestion extends DNSEntry
{
  private static Logger logger = Logger.getLogger(DNSQuestion.class.getName());

  DNSQuestion(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    super(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
  }

  public static DNSQuestion newQuestion(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
  {
    Object localObject;
    switch ($SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[paramDNSRecordType.ordinal()])
    {
    default:
      localObject = new DNSQuestion(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    case 2:
    case 39:
    case 29:
    case 59:
    case 14:
    case 13:
    case 34:
    case 17:
    }
    while (true)
    {
      return localObject;
      localObject = new DNS4Address(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new DNS6Address(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new DNS6Address(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new AllRecords(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new HostInformation(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new Pointer(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new Service(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
      continue;
      localObject = new Text(paramString, paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }
  }

  public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
  {
  }

  protected void addAnswersForServiceInfo(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet, ServiceInfoImpl paramServiceInfoImpl)
  {
    if ((paramServiceInfoImpl != null) && (paramServiceInfoImpl.isAnnounced()))
    {
      if ((getName().equalsIgnoreCase(paramServiceInfoImpl.getQualifiedName())) || (getName().equalsIgnoreCase(paramServiceInfoImpl.getType())))
      {
        paramSet.addAll(paramJmDNSImpl.getLocalHost().answers(3600));
        paramSet.addAll(paramServiceInfoImpl.answers(3600, paramJmDNSImpl.getLocalHost()));
      }
      logger.finer(paramJmDNSImpl.getName() + " DNSQuestion(" + getName() + ").addAnswersForServiceInfo(): info: " + paramServiceInfoImpl + "\n" + paramSet);
    }
  }

  boolean answeredBy(DNSEntry paramDNSEntry)
  {
    if ((isSameRecordClass(paramDNSEntry)) && (isSameType(paramDNSEntry)) && (getName().equals(paramDNSEntry.getName())));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean iAmTheOnlyOne(JmDNSImpl paramJmDNSImpl)
  {
    return false;
  }

  public boolean isExpired(long paramLong)
  {
    return false;
  }

  public boolean isStale(long paramLong)
  {
    return false;
  }

  public void toString(StringBuilder paramStringBuilder)
  {
  }

  private static class AllRecords extends DNSQuestion
  {
    AllRecords(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }

    public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
    {
      String str = getName().toLowerCase();
      if (paramJmDNSImpl.getLocalHost().getName().equalsIgnoreCase(str))
        paramSet.addAll(paramJmDNSImpl.getLocalHost().answers(3600));
      while (true)
      {
        return;
        if (paramJmDNSImpl.getServiceTypes().containsKey(str))
        {
          new DNSQuestion.Pointer(getName(), DNSRecordType.TYPE_PTR, getRecordClass(), isUnique()).addAnswers(paramJmDNSImpl, paramSet);
          continue;
        }
        addAnswersForServiceInfo(paramJmDNSImpl, paramSet, (ServiceInfoImpl)paramJmDNSImpl.getServices().get(str));
      }
    }

    public boolean iAmTheOnlyOne(JmDNSImpl paramJmDNSImpl)
    {
      String str = getName().toLowerCase();
      if ((!paramJmDNSImpl.getLocalHost().getName().equals(str)) && (!paramJmDNSImpl.getServices().keySet().contains(str)));
      for (int i = 0; ; i = 1)
        return i;
    }

    public boolean isSameType(DNSEntry paramDNSEntry)
    {
      if (paramDNSEntry != null);
      for (int i = 1; ; i = 0)
        return i;
    }
  }

  private static class DNS4Address extends DNSQuestion
  {
    DNS4Address(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }

    public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
    {
      DNSRecord.Address localAddress = paramJmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), 3600);
      if (localAddress != null)
        paramSet.add(localAddress);
    }

    public boolean iAmTheOnlyOne(JmDNSImpl paramJmDNSImpl)
    {
      String str = getName().toLowerCase();
      if ((!paramJmDNSImpl.getLocalHost().getName().equals(str)) && (!paramJmDNSImpl.getServices().keySet().contains(str)));
      for (int i = 0; ; i = 1)
        return i;
    }
  }

  private static class DNS6Address extends DNSQuestion
  {
    DNS6Address(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }

    public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
    {
      DNSRecord.Address localAddress = paramJmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), 3600);
      if (localAddress != null)
        paramSet.add(localAddress);
    }

    public boolean iAmTheOnlyOne(JmDNSImpl paramJmDNSImpl)
    {
      String str = getName().toLowerCase();
      if ((!paramJmDNSImpl.getLocalHost().getName().equals(str)) && (!paramJmDNSImpl.getServices().keySet().contains(str)));
      for (int i = 0; ; i = 1)
        return i;
    }
  }

  private static class HostInformation extends DNSQuestion
  {
    HostInformation(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }
  }

  private static class Pointer extends DNSQuestion
  {
    Pointer(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }

    public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
    {
      Iterator localIterator1 = paramJmDNSImpl.getServices().values().iterator();
      Iterator localIterator2;
      if (!localIterator1.hasNext())
        if (isServicesDiscoveryMetaQuery())
          localIterator2 = paramJmDNSImpl.getServiceTypes().keySet().iterator();
      while (true)
      {
        if (!localIterator2.hasNext())
        {
          return;
          addAnswersForServiceInfo(paramJmDNSImpl, paramSet, (ServiceInfoImpl)(ServiceInfo)localIterator1.next());
          break;
        }
        String str = (String)localIterator2.next();
        paramSet.add(new DNSRecord.Pointer("_services._dns-sd._udp.local.", DNSRecordClass.CLASS_IN, false, 3600, str));
      }
    }
  }

  private static class Service extends DNSQuestion
  {
    Service(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }

    public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
    {
      String str = getName().toLowerCase();
      if (paramJmDNSImpl.getLocalHost().getName().equalsIgnoreCase(str))
        paramSet.addAll(paramJmDNSImpl.getLocalHost().answers(3600));
      while (true)
      {
        return;
        if (paramJmDNSImpl.getServiceTypes().containsKey(str))
        {
          new DNSQuestion.Pointer(getName(), DNSRecordType.TYPE_PTR, getRecordClass(), isUnique()).addAnswers(paramJmDNSImpl, paramSet);
          continue;
        }
        addAnswersForServiceInfo(paramJmDNSImpl, paramSet, (ServiceInfoImpl)paramJmDNSImpl.getServices().get(str));
      }
    }

    public boolean iAmTheOnlyOne(JmDNSImpl paramJmDNSImpl)
    {
      String str = getName().toLowerCase();
      if ((!paramJmDNSImpl.getLocalHost().getName().equals(str)) && (!paramJmDNSImpl.getServices().keySet().contains(str)));
      for (int i = 0; ; i = 1)
        return i;
    }
  }

  private static class Text extends DNSQuestion
  {
    Text(String paramString, DNSRecordType paramDNSRecordType, DNSRecordClass paramDNSRecordClass, boolean paramBoolean)
    {
      super(paramDNSRecordType, paramDNSRecordClass, paramBoolean);
    }

    public void addAnswers(JmDNSImpl paramJmDNSImpl, Set<DNSRecord> paramSet)
    {
      addAnswersForServiceInfo(paramJmDNSImpl, paramSet, (ServiceInfoImpl)paramJmDNSImpl.getServices().get(getName().toLowerCase()));
    }

    public boolean iAmTheOnlyOne(JmDNSImpl paramJmDNSImpl)
    {
      String str = getName().toLowerCase();
      if ((!paramJmDNSImpl.getLocalHost().getName().equals(str)) && (!paramJmDNSImpl.getServices().keySet().contains(str)));
      for (int i = 0; ; i = 1)
        return i;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.DNSQuestion
 * JD-Core Version:    0.6.0
 */