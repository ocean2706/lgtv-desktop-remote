using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
	public partial class EventRequest
	{
		public static String requestAlive (String paramString1, String paramString2)
		{
			String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>alive</name>" + "</event>";
			HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest ();
			localHTTPPostRequest.setRequestType ("event");
			localHTTPPostRequest.setTargetIP (paramString1);
			localHTTPPostRequest.setEntity (str1);
			Object localObject = null;
			try {
				String str2 = localHTTPPostRequest.execute ();
				localObject = str2;
				return HTTPPostRequest.parseElement (localObject, "HDCPError");
			} catch (URISyntaxException localURISyntaxException) {
      
				localURISyntaxException.printStackTrace ();
			}
			return "";
		}
		public static String requestCursorVisible (TVInfo paramDestInfo, String paramString)
		{
			if (paramDestInfo == null) {
				return "";
			}

			return requestCursorVisible (paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString);

		}

		public static String requestCursorVisible (String paramString1, String paramString2, String paramString3)
		{
			String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>CursorVisible</name>" + "<value>" + paramString3 + "</value>" + "</event>";
			HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest ();
			localHTTPPostRequest.setRequestType ("event");
			localHTTPPostRequest.setTargetIP (paramString1);
			localHTTPPostRequest.setEntity (str1);
			Object localObject = null;
			try {
				String str2 = localHTTPPostRequest.execute ();
				localObject = str2;
				return HTTPPostRequest.parseElement (localObject, "HDCPError");
			} catch (URISyntaxException localURISyntaxException) {

				localURISyntaxException.printStackTrace ();
			}
			return "";
		}

		/// <summary>
		/// do update connection to keep in touch with the tv ?
		/// </summary>
		/// <param name="destInfo"></param>
		/// <param name="iPAddress"></param>
		/// <param name="iPAddress_2"></param>
		internal static void requestUpdate (TVInfo  destInfo, String iPAddress, String iPAddress_2)
		{
			requestUpdate (destInfo.IP, destInfo.SESSIONID, iPAddress, iPAddress_2);
		}
		public static String requestUpdate (String ip, String sessionid, String ip1Old, String ip2New)
		{
			String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + sessionid + "</session>" + "<name>update</name>" + "<value>" + ip2New + "</value>" + "<expire>" + ip1Old + "</expire>" + "</event>";
			HTTPPostRequest localHTTPPostRequest = new LGTVHTTPPostRequest ();
			localHTTPPostRequest.setRequestType ("event");
			localHTTPPostRequest.setTargetIP (ip);
			localHTTPPostRequest.setEntity (str1);
			Object localObject = null;
			try {
				String str2 = localHTTPPostRequest.execute ();
				localObject = str2;
				return HTTPPostRequest.parseElement (localObject, "HDCPError");
			} catch (URISyntaxException localURISyntaxException) {

				localURISyntaxException.printStackTrace ();

			}
			return "";
		}
	}
}
