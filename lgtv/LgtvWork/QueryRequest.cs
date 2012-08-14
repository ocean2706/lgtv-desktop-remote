using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public class QueryRequest
	{
       
		static readonly int UIMODE_NAVIBTN = 2;
		static readonly int UIMODE_TOUCHPAD = 1;
		static readonly int UIMODE_VOLCH;
		private static String m_strDNFAVChannel;

		public static bool CheckVersion (String paramString)
		{
			HTTPGet localHTTPGet = new HTTPGet ();
			localHTTPGet.setURL (paramString, "/hdcp/api/data?target=version_info");
			String str1 = localHTTPGet.execute ();
			if (HTTPPostRequest.parseElement (str1, "HDCPError") == "200") {
				String str2 = HTTPPostRequest.parseElement (str1, "hdcpVersion");
				String str3 = HTTPPostRequest.parseElement (str1, "serviceVersion");
				if ((str2 != ("1.0")) || (str3 != ("dtv_wifirc1.0"))) {
					return false;
				}
				return true;
			}
			return false;
		}

		public static bool GetCurrentChannel (TVInfo paramDestInfo, ChannelInfo paramChannelInfo)
		{
			return GetCurrentChannel (paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramChannelInfo);

		}

		public static bool GetCurrentChannel (String paramString1, String paramString2, ChannelInfo paramChannelInfo)
		{

			HTTPGet localHTTPGet = new HTTPGet ();
			localHTTPGet.setURL (paramString1, "/hdcp/api/data?target=cur_channel&session=" + paramString2);
			String str = localHTTPGet.execute ();
			if (HTTPPostRequest.parseElement (str, "HDCPError") == ("200")) {
				return ParseChInfo (paramChannelInfo, str);

			}
			return false;

		}

		public static List<ChannelInfo> GetFavoriteChannel (String paramString)
		{
			//Object localObject;
			//if (m_strDNFAVChannel == null)
			//  localObject = null;
			//while (true)
			//{
			//  return localObject;
			//  List localList = new List();
			//  String str = "<group><gname>" + paramString + "</gname>(.*?)</group>";
			//  if (HTTPPostRequest.parseElement(m_strDNFAVChannel, "HDCPError")==("200"))
			//  {
			//    Matcher localMatcher1 = Pattern.compile(str, 32).matcher(m_strDNFAVChannel);
			//    while (true)
			//    {
			//      if (!localMatcher1.find())
			//      {
			//        localObject = localList;
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
			//        localList.add(localChannelInfo);
			//      }
			//    }
			//  }
			//  localObject = null;
			//}
			return null;
		}

		public static int GetInitUIState (TVInfo paramDestInfo)
		{
			return GetInitUIState (paramDestInfo.m_strIP, paramDestInfo.m_strSessionID);
		}

		public static int GetInitUIState (String paramString1, String paramString2)
		{
			HTTPGet localHTTPGet = new HTTPGet ();
			localHTTPGet.setURL (paramString1, "/hdcp/api/data?target=context_ui&session=" + paramString2);
			String str = localHTTPGet.execute ();
			if (HTTPPostRequest.parseElement (str, "HDCPError") == ("200")) {

				return (int)toStateToken (HTTPPostRequest.parseElement (str, "mode"));
			}
			return 0;
		}

		public static String GetModelInfo (String paramString1, String paramString2)
		{
			HTTPGet localHTTPGet = new HTTPGet ();
			localHTTPGet.setURL (paramString1, "/hdcp/api/data?target=model_info&session=" + paramString2);
			return HTTPPostRequest.parseElement (localHTTPGet.execute (), "HDCPError");

		}

		public static int GetRegion (TVInfo paramDestInfo)
		{
			return GetRegion (paramDestInfo.m_strIP, paramDestInfo.m_strSessionID);
		}

		public static int GetRegion (String paramString1, String paramString2)
		{
			HTTPGet localHTTPGet = new HTTPGet ();
			localHTTPGet.setURL (paramString1, "/hdcp/api/data?target=model_region&session=" + paramString2);
			String str = localHTTPGet.execute ();
			if (HTTPPostRequest.parseElement (str, "HDCPError") == ("200")) {
				return getRegionCode (HTTPPostRequest.parseElement (str, "region"));
			}
			return 0;

		}

		private static int getRegionCode (string p)
		{
			throw new NotImplementedException ();
		}

		public static bool ParseChInfo (ChannelInfo paramChannelInfo, String paramString)
		{

			paramChannelInfo.m_strMajorCH = HTTPPostRequest.parseElement (paramString, "major");
			paramChannelInfo.m_strMinorCH = HTTPPostRequest.parseElement (paramString, "minor");
			paramChannelInfo.m_strSrcIndex = HTTPPostRequest.parseElement (paramString, "sourceIndex");
			paramChannelInfo.m_strPhyNum = HTTPPostRequest.parseElement (paramString, "physicalNum");
			paramChannelInfo.m_strCHType = HTTPPostRequest.parseElement (paramString, "type");
			paramChannelInfo.m_strName = HTTPPostRequest.parseElement (paramString, "name");
			paramChannelInfo.m_strDispName = paramChannelInfo.m_strName;
			return true;
		}

		public static List<String> getFAVGroupList ()
		{
			//int i = 0;
			//Object localObject;
			//if (m_strDNFAVChannel == null)
			//{
			//  localObject = null;
			//  return localObject;
			//}
			//List localList = new List();
			//Matcher localMatcher = Pattern.compile("<gname>(.*?)</gname>", 32).matcher(m_strDNFAVChannel);
			//while (true)
			//{
			//  if (!localMatcher.find())
			//  {
			//    localObject = localList;
			//    break;
			//  }
			//  if (localMatcher.groupCount() < 1)
			//    continue;
			//  String str = new String(localMatcher.group(1));
			//  if (str.length() <= 0)
			//    continue;
			//  i++;
			//  localList.add(str);
			//}
			return null;
		}

		public static bool getFavoriteChannelPacket (TVInfo paramDestInfo)
		{
			//bool  bool;
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
			return false;
		}

		public static bool getFavoriteChannelPacket (String paramString1, String paramString2)
		{
			//m_strDNFAVChannel = null;
			//HTTPGet localHTTPGet = new HTTPGet();
			//localHTTPGet.setURL(paramString1, "/hdcp/api/data?target=fav_list&session=" + paramString2);
			//String str = localHTTPGet.execute();
			//if (HTTPPostRequest.parseElement(str, "HDCPError")==("200"))
			//  m_strDNFAVChannel = new String(str);
			//for (int i = 1; ; i = 0)
			//  return i;
			throw new NotImplementedException ();
		}

		public enum ui_state_token
		{

			NOVALUE,
			VolCh,
			TouchPad,
			NavigationButton,

		}

		public static ui_state_token toStateToken (String paramString)
		{
			try {
				ui_state_token localui_state_token2 = (ui_state_token)Enum.Parse (typeof(ui_state_token), paramString);

				return localui_state_token2;
			} catch {

				return ui_state_token.NOVALUE;
			}
		}
	}
}
