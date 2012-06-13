package com.clipcomm.WiFiRemocon;

import java.io.IOException;
import java.util.ArrayList;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceInfo;

public class ClipmDNS
{
  private static final String SERVICE_TYPE = "_lg_dtv_wifirc._tcp.local.";

  public ArrayList<TVInfo> execute(int paramInt)
  {
    try
    {
      JmDNS localJmDNS = JmDNS.create();
      arrayOfServiceInfo = localJmDNS.list("_lg_dtv_wifirc._tcp.local.", paramInt);
      localJmDNS.close();
      if ((arrayOfServiceInfo != null) && (arrayOfServiceInfo.length > 0))
      {
        localArrayList2 = new ArrayList();
        i = 0;
        if (i >= arrayOfServiceInfo.length)
        {
          localArrayList1 = localArrayList2;
          return localArrayList1;
        }
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        ServiceInfo[] arrayOfServiceInfo;
        ArrayList localArrayList2;
        int i;
        localIOException.printStackTrace();
        ArrayList localArrayList1 = new ArrayList();
        continue;
        TVInfo localTVInfo = new TVInfo();
        localTVInfo.m_strName = arrayOfServiceInfo[i].getName();
        localTVInfo.m_strIP = arrayOfServiceInfo[i].getHostAddress();
        localTVInfo.m_strPort = Integer.toString(arrayOfServiceInfo[i].getPort());
        localTVInfo.m_strMACAddr = new String(arrayOfServiceInfo[i].getTextBytes()).substring(1);
        localArrayList2.add(localTVInfo);
        i++;
        continue;
        localArrayList1 = new ArrayList();
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.ClipmDNS
 * JD-Core Version:    0.6.0
 */