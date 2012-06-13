package com.clipcomm.WiFiRemocon;

import java.util.ArrayList;

public class HDCPMgr
{
  public void FindTV(ArrayList<TVInfo> paramArrayList, CDBAdapter_TVInfo paramCDBAdapter_TVInfo)
  {
    ArrayList localArrayList = new ClipmDNS().execute(8000);
    if (localArrayList == null);
    while (true)
    {
      return;
      for (int i = 0; i < localArrayList.size(); i++)
      {
        if (!QueryRequest.CheckVersion(((TVInfo)localArrayList.get(i)).m_strIP))
          continue;
        TVInfo localTVInfo1 = new TVInfo();
        localTVInfo1.m_strName = ((TVInfo)localArrayList.get(i)).m_strName;
        localTVInfo1.m_strIP = ((TVInfo)localArrayList.get(i)).m_strIP;
        localTVInfo1.m_strPort = ((TVInfo)localArrayList.get(i)).m_strPort;
        localTVInfo1.m_strMACAddr = ((TVInfo)localArrayList.get(i)).m_strMACAddr;
        if (paramCDBAdapter_TVInfo != null)
        {
          TVInfo localTVInfo2 = paramCDBAdapter_TVInfo.getTVInfo(localTVInfo1.m_strMACAddr);
          if (localTVInfo2 != null)
          {
            localTVInfo1.m_strDispname = localTVInfo2.m_strDispname;
            localTVInfo1.m_lDBIndex = localTVInfo2.m_lDBIndex;
          }
        }
        paramArrayList.add(localTVInfo1);
      }
    }
  }

  public String FindTVIPAddrFromMACAddr(String paramString)
  {
    ArrayList localArrayList = new ClipmDNS().execute(4000);
    for (int i = 0; ; i++)
    {
      if (i >= localArrayList.size());
      for (String str = null; ; str = ((TVInfo)localArrayList.get(i)).m_strIP)
      {
        return str;
        if (!paramString.equals(((TVInfo)localArrayList.get(i)).m_strMACAddr))
          break;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.HDCPMgr
 * JD-Core Version:    0.6.0
 */