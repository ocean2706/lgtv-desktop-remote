using System;
using System.Collections.Generic;
using System.Text;
using android;

namespace com.lg.clientlib.tv.shark
{
  public class QueryRequest
    {
//       package com.clipcomm.WiFiRemocon;

//import java.util.ArrayList;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;

//public class QueryRequest
//{
  const int UIMODE_NAVIBTN = 2;
  const int UIMODE_TOUCHPAD = 1;
  const int UIMODE_VOLCH=0;
  private static String m_strDNFAVChannel;

  public static bool CheckVersion(String paramString)
  {
    //HTTPGet localHTTPGet = new HTTPGet();
    //localHTTPGet.setURL(paramString, "/hdcp/api/data?target=version_info");
    //String str1 = localHTTPGet.execute();
    //if (HTTPPostRequest.parseElement(str1, "HDCPError").equals("200"))
    //{
    //  String str2 = HTTPPostRequest.parseElement(str1, "hdcpVersion");
    //  String str3 = HTTPPostRequest.parseElement(str1, "serviceVersion");
    //  if ((!str2.equals("1.0")) || (!str3.equals("dtv_wifirc1.0")));
    //}
    //for (int i = 1; ; i = 0)
    //  return i;
      throw new NotImplementedException();
  }

  public static bool GetCurrentChannel(LifeTime.DestInfo paramDestInfo, ChannelInfo paramChannelInfo)
  {
    //if (paramDestInfo == null);
    //for (boolean bool = false; ; bool = GetCurrentChannel(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramChannelInfo))
    throw new NotImplementedException();
  }

  public static bool GetCurrentChannel(String paramString1, String paramString2, ChannelInfo paramChannelInfo)
  {
    //boolean bool;
    //if (paramChannelInfo == null)
    //  bool = false;
    //while (true)
    //{
    //  return bool;
    //  HTTPGet localHTTPGet = new HTTPGet();
    //  localHTTPGet.setURL(paramString1, "/hdcp/api/data?target=cur_channel&session=" + paramString2);
    //  String str = localHTTPGet.execute();
    //  if (HTTPPostRequest.parseElement(str, "HDCPError").equals("200"))
    //  {
    //    bool = ParseChInfo(paramChannelInfo, str);
    //    continue;
    //  }
    //  bool = false;
    //}
      throw new NotImplementedException();
  }

  public static ArrayList<ChannelInfo> GetFavoriteChannel(String paramString)
  {
    //Object localObject;
    //if (m_strDNFAVChannel == null)
    //  localObject = null;
    //while (true)
    //{
    //  return localObject;
    //  ArrayList localArrayList = new ArrayList();
    //  String str = "<group><gname>" + paramString + "</gname>(.*?)</group>";
    //  if (HTTPPostRequest.parseElement(m_strDNFAVChannel, "HDCPError").equals("200"))
    //  {
    //    Matcher localMatcher1 = Pattern.compile(str, 32).matcher(m_strDNFAVChannel);
    //    while (true)
    //    {
    //      if (!localMatcher1.find())
    //      {
    //        localObject = localArrayList;
    //        break;
    //      }
    //      if (localMatcher1.groupCount() < 1)
    //      {
    //        localObject = null;
    //        break;
    //      }
    //      Matcher localMatcher2 = Pattern.compile("<data>(.*?)</data>", 32).matcher(localMatcher1.group(1));
    //      while (localMatcher2.find())
    //      {
    //        if (localMatcher2.groupCount() < 1)
    //          continue;
    //        ChannelInfo localChannelInfo = new ChannelInfo();
    //        if (!ParseChInfo(localChannelInfo, localMatcher2.group(1)))
    //          continue;
    //        localArrayList.add(localChannelInfo);
    //      }
    //    }
    //  }
    //  localObject = null;
    //}
      throw new NotImplementedException();
  }

  public static int GetInitUIState(LifeTime.DestInfo paramDestInfo)
  {
    //return GetInitUIState(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID);
      throw new NotImplementedException();
  }

  public static int GetInitUIState(String paramString1, String paramString2)
  {
      
    //HTTPGet localHTTPGet = new HTTPGet();
    //localHTTPGet.setURL(paramString1, "/hdcp/api/data?target=context_ui&session=" + paramString2);
    //String str = localHTTPGet.execute();
    //if (HTTPPostRequest.parseElement(str, "HDCPError").equals("200"));
    //int i;
    //switch ($SWITCH_TABLE$com$clipcomm$WiFiRemocon$QueryRequest$ui_state_token()[ui_state_token.toStateToken(HTTPPostRequest.parseElement(str, "mode")).ordinal()])
    //{
    //default:
    //  i = 0;
    //case 2:
    //case 3:
    //case 4:
    //}
    //while (true)
    //{
    //  return i;
    //  i = 0;
    //  continue;
    //  i = 1;
    //  continue;
    //  i = 2;
    //}
      throw new NotImplementedException();
  }

  public static String GetModelInfo(String paramString1, String paramString2)
  {
    //HTTPGet localHTTPGet = new HTTPGet();
    //localHTTPGet.setURL(paramString1, "/hdcp/api/data?target=model_info&session=" + paramString2);
    //HTTPPostRequest.parseElement(localHTTPGet.execute(), "HDCPError").equals("200");
    //return "";
      throw new NotImplementedException();
  }

  public static int GetRegion(LifeTime.DestInfo paramDestInfo)
  {
    //return GetRegion(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID);
      throw new NotImplementedException();
  }

  public static int GetRegion(String paramString1, String paramString2)
  {
    //HTTPGet localHTTPGet = new HTTPGet();
    //localHTTPGet.setURL(paramString1, "/hdcp/api/data?target=model_region&session=" + paramString2);
    //String str = localHTTPGet.execute();
    //if (HTTPPostRequest.parseElement(str, "HDCPError").equals("200"));
    //for (int i = CRegionDepUI.getRegionCode(HTTPPostRequest.parseElement(str, "region")); ; i = 0)
    //  return i;
      throw new NotImplementedException();
  }

  public static bool ParseChInfo(ChannelInfo paramChannelInfo, String paramString)
  {
    //if ((paramString == null) || (paramChannelInfo == null));
    //for (int i = 0; ; i = 1)
    //{
    //  return i;
    //  paramChannelInfo.m_strMajorCH = HTTPPostRequest.parseElement(paramString, "major");
    //  paramChannelInfo.m_strMinorCH = HTTPPostRequest.parseElement(paramString, "minor");
    //  paramChannelInfo.m_strSrcIndex = HTTPPostRequest.parseElement(paramString, "sourceIndex");
    //  paramChannelInfo.m_strPhyNum = HTTPPostRequest.parseElement(paramString, "physicalNum");
    //  paramChannelInfo.m_strCHType = HTTPPostRequest.parseElement(paramString, "type");
    //  paramChannelInfo.m_strName = HTTPPostRequest.parseElement(paramString, "name");
    //  paramChannelInfo.m_strDispName = paramChannelInfo.m_strName;
    //}
      throw new NotImplementedException();
  }

  public static ArrayList<String> getFAVGroupList()
  {
    //int i = 0;
    //Object localObject;
    //if (m_strDNFAVChannel == null)
    //{
    //  localObject = null;
    //  return localObject;
    //}
    //ArrayList localArrayList = new ArrayList();
    //Matcher localMatcher = Pattern.compile("<gname>(.*?)</gname>", 32).matcher(m_strDNFAVChannel);
    //while (true)
    //{
    //  if (!localMatcher.find())
    //  {
    //    localObject = localArrayList;
    //    break;
    //  }
    //  if (localMatcher.groupCount() < 1)
    //    continue;
    //  String str = new String(localMatcher.group(1));
    //  if (str.length() <= 0)
    //    continue;
    //  i++;
    //  localArrayList.add(str);
    //}
      throw new NotImplementedException();
  }

  public static bool getFavoriteChannelPacket(LifeTime.DestInfo paramDestInfo)
  {
    //boolean bool;
    //if (LifeTime.getInstance().isDemoTVMode())
    //{
    //  m_strDNFAVChannel = null;
    //  m_strDNFAVChannel = new String("<?xml version=\"1.0\" encoding=\"utf-8\"?><envelope><HDCPError>200</HDCPError><HDCPErrorDetail>OK</HDCPErrorDetail><session>391820379</session><group><gname>Demo FAV A</gname><data><type>terrestrial</type><major>9</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>9</physicalNum><name>KBS-1</name></data><data><type>terrestrial</type><major>13</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>13</physicalNum><name>EBS</name></data><data><type>cable</type><major>55</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>55</physicalNum><name>LG TV</name></data><data><type>satellite</type><major>93</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>93</physicalNum><name>Arirang TV</name></data></group><group><gname>Demo FAV B</gname><data><type>cable</type><major>9</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>9</physicalNum><name>KBS-1 HD</name></data><data><type>cable</type><major>13</major><minor>0</minor><sourceIndex>0</sourceIndex><physicalNum>13</physicalNum><name>EBS HD</name></data></group><group><gname>Demo FAV C</gname><data><type>cable</type><major>511</major><minor>0</minor><sourceIndex>0</sourceIndex><physicalNum>511</physicalNum><name>UNDERGAMENET</name></data><data><type>terrestrial</type><major>6</major><minor>0</minor><sourceIndex>0</sourceIndex><physicalNum>6</physicalNum><name>SBS</name></data></group><group><gname>Demo FAV D</gname><data><type>cable</type><major>31</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>31</physicalNum><name>Shopping - HEALTH</name></data><data><type>cable</type><major>32</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>32</physicalNum><name>Shopping - FOOD</name></data><data><type>cable</type><major>33</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>33</physicalNum><name>Shopping - CAR</name></data><data><type>cable</type><major>34</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>34</physicalNum><name>Shopping - MISC</name></data></group></envelope>");
    //  bool = true;
    //}
    //while (true)
    //{
    //  return bool;
    //  if (paramDestInfo == null)
    //  {
    //    bool = false;
    //    continue;
    //  }
    //  bool = getFavoriteChannelPacket(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID);
    //}
      return getFavoriteChannelPacket(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID);
      throw new NotImplementedException();
  }

  public static bool getFavoriteChannelPacket(String paramString1, String paramString2)
  {
    //m_strDNFAVChannel = null;
    //HTTPGet localHTTPGet = new HTTPGet();
    //localHTTPGet.setURL(paramString1, "/hdcp/api/data?target=fav_list&session=" + paramString2);
    //String str = localHTTPGet.execute();
    //if (HTTPPostRequest.parseElement(str, "HDCPError").equals("200"))
    //  m_strDNFAVChannel = new String(str);
    //for (int i = 1; ; i = 0)
    //  return i;
      throw new NotImplementedException();
  }

  public static class ui_state_token
  {
    //static
    //{
    //  TouchPad = new ui_state_token("TouchPad", 2);
    //  NavigationButton = new ui_state_token("NavigationButton", 3);
    //  ui_state_token[] arrayOfui_state_token = new ui_state_token[4];
    //  arrayOfui_state_token[0] = NOVALUE;
    //  arrayOfui_state_token[1] = VolCh;
    //  arrayOfui_state_token[2] = TouchPad;
    //  arrayOfui_state_token[3] = NavigationButton;
    //  ENUM$VALUES = arrayOfui_state_token;
    //}

    //public static ui_state_token toStateToken(String paramString)
    //{
    //  try
    //  {
    //    ui_state_token localui_state_token2 = valueOf(paramString);
    //    localui_state_token1 = localui_state_token2;
    //    return localui_state_token1;
    //  }
    //  catch (Exception localException)
    //  {
    //    while (true)
    //      ui_state_token localui_state_token1 = NOVALUE;
    //  }
    //}
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.QueryRequest
 * JD-Core Version:    0.6.0
 */
    }
}
