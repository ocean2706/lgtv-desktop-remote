package com.strangeberry.jmdns.tools;

import java.io.IOException;
import java.io.PrintStream;
import java.net.InetAddress;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import java.util.logging.ConsoleHandler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceEvent;
import javax.jmdns.ServiceInfo;
import javax.jmdns.ServiceListener;
import javax.jmdns.ServiceTypeListener;

public class Main
{
  public static void main(String[] paramArrayOfString)
    throws IOException
  {
    int i = paramArrayOfString.length;
    int j = 0;
    ConsoleHandler localConsoleHandler;
    Enumeration localEnumeration;
    InetAddress localInetAddress2;
    int k;
    if ((i > 0) && ("-d".equals(paramArrayOfString[0])))
    {
      i--;
      System.arraycopy(paramArrayOfString, 1, paramArrayOfString, 0, i);
      localConsoleHandler = new ConsoleHandler();
      localConsoleHandler.setLevel(Level.FINEST);
      localEnumeration = LogManager.getLogManager().getLoggerNames();
      if (!localEnumeration.hasMoreElements())
        j = 1;
    }
    else
    {
      if ((i <= 1) || (!"-i".equals(paramArrayOfString[0])))
        break label617;
      localInetAddress2 = InetAddress.getByName(paramArrayOfString[1]);
      int i2 = i - 2;
      System.arraycopy(paramArrayOfString, 2, paramArrayOfString, 0, i2);
      k = i2;
    }
    for (InetAddress localInetAddress1 = localInetAddress2; ; localInetAddress1 = null)
    {
      if (localInetAddress1 == null)
        localInetAddress1 = InetAddress.getLocalHost();
      JmDNS localJmDNS = JmDNS.create(localInetAddress1, "Browser");
      int m;
      if ((k == 0) || ((k >= 1) && ("-browse".equals(paramArrayOfString[0]))))
      {
        new Browser(localJmDNS);
        m = 2;
        label165: if (m < k);
      }
      while (true)
      {
        return;
        Logger localLogger = Logger.getLogger((String)localEnumeration.nextElement());
        localLogger.addHandler(localConsoleHandler);
        localLogger.setLevel(Level.FINEST);
        break;
        localJmDNS.registerServiceType(paramArrayOfString[m]);
        m++;
        break label165;
        if ((k == 1) && ("-bt".equals(paramArrayOfString[0])))
        {
          localJmDNS.addServiceTypeListener(new SampleListener());
          continue;
        }
        if ((k == 3) && ("-bs".equals(paramArrayOfString[0])))
        {
          localJmDNS.addServiceListener(paramArrayOfString[1] + "." + paramArrayOfString[2], new SampleListener());
          continue;
        }
        if ((k > 4) && ("-rs".equals(paramArrayOfString[0])))
        {
          String str1 = paramArrayOfString[2] + "." + paramArrayOfString[3];
          String str2 = paramArrayOfString[1];
          Object localObject = null;
          for (int n = 5; ; n++)
          {
            if (n >= k)
            {
              localJmDNS.registerService(ServiceInfo.create(str1, str2, Integer.parseInt(paramArrayOfString[4]), 0, 0, (Map)localObject));
              try
              {
                while (true)
                  Thread.sleep(2147483647L);
              }
              catch (InterruptedException localInterruptedException)
              {
              }
              break;
            }
            int i1 = paramArrayOfString[n].indexOf('=');
            if (i1 < 0)
              throw new RuntimeException("not key=val: " + paramArrayOfString[n]);
            if (localObject == null)
              localObject = new Hashtable();
            ((Hashtable)localObject).put(paramArrayOfString[n].substring(0, i1), paramArrayOfString[n].substring(i1 + 1));
          }
        }
        if ((k == 2) && ("-f".equals(paramArrayOfString[0])))
        {
          new Responder(localJmDNS, paramArrayOfString[1]);
          continue;
        }
        if (j != 0)
          continue;
        System.out.println();
        System.out.println("jmdns:");
        System.out.println("     -d                                       - output debugging info");
        System.out.println("     -i <addr>                                - specify the interface address");
        System.out.println("     -browse [<type>...]                      - GUI browser (default)");
        System.out.println("     -bt                                      - browse service types");
        System.out.println("     -bs <type> <domain>                      - browse services by type");
        System.out.println("     -rs <name> <type> <domain> <port> <txt>  - register service");
        System.out.println("     -f <file>                                - rendezvous responder");
        System.out.println();
        System.exit(1);
      }
      label617: k = i;
    }
  }

  static class SampleListener
    implements ServiceListener, ServiceTypeListener
  {
    public void serviceAdded(ServiceEvent paramServiceEvent)
    {
      System.out.println("ADD: " + paramServiceEvent.getDNS().getServiceInfo(paramServiceEvent.getType(), paramServiceEvent.getName()));
    }

    public void serviceRemoved(ServiceEvent paramServiceEvent)
    {
      System.out.println("REMOVE: " + paramServiceEvent.getName());
    }

    public void serviceResolved(ServiceEvent paramServiceEvent)
    {
      System.out.println("RESOLVED: " + paramServiceEvent.getInfo());
    }

    public void serviceTypeAdded(ServiceEvent paramServiceEvent)
    {
      System.out.println("TYPE: " + paramServiceEvent.getType());
    }

    public void subTypeForServiceTypeAdded(ServiceEvent paramServiceEvent)
    {
      System.out.println("SUBTYPE: " + paramServiceEvent.getType());
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.strangeberry.jmdns.tools.Main
 * JD-Core Version:    0.6.0
 */