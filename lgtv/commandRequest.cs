using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace com.lg.tv
{
    public partial class commandRequest
    {
        internal static void requestTouchClick(TVInfo destInfo, Object touchCode)
        {
            requestTouchClick(destInfo.IP, destInfo.SESSIONID, touchCode.ToString());
        }
        internal static void requestTouchClick(TVInfo destInfo, int touchCode)
        {
            requestTouchClick(destInfo.IP, destInfo.SESSIONID, touchCode.ToString());
        }
        private static String requestTouchClick(String paramString1, String paramString2, String paramString3)
        {
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>HandleTouchClick</type>" + "<value>" + paramString3 + "</value>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new LGHTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str2 = localHTTPPostRequest.execute();
                localObject = str2;
                return HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {

                localURISyntaxException.printStackTrace();
            }
            return "";

        }

        internal static void requestKeyInput(Object destInfo, int touchCode)
        {
            throw new NotImplementedException();
        }
        private static const int TIME_GAP = 50;
        protected static long prev_key_time = DateTime.Now.Ticks;

        public static String requestHandleChannelChange(TVInfo paramDestInfo, ChannelInfo paramChannelInfo)
  {
   return  requestHandleChannelChange(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramChannelInfo))
    //  return str;
  }

        public static String requestHandleChannelChange(String paramString1, String paramString2, ChannelInfo paramChannelInfo)
        {
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>HandleChannelChange</type>" + "<major>" + paramChannelInfo.m_strMajorCH + "</major>" + "<minor>" + paramChannelInfo.m_strMinorCH + "</minor>" + "<sourceIndex>" + paramChannelInfo.m_strSrcIndex + "</sourceIndex>" + "<physicalNum>" + paramChannelInfo.m_strPhyNum + "</physicalNum>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str2 = localHTTPPostRequest.execute();
                localObject = str2;
                return HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {
                localURISyntaxException.printStackTrace();


            }
            return "-1";
        }

        public static String requestKeyInput(TVInfo paramDestInfo, String paramString)
        {
            return requestKeyInput(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString);

        }

        private static String requestKeyInput(String paramString1, String paramString2, String paramString3)
        {
            long l = DateTime.Now.Ticks;
            String str2;
            if (l - prev_key_time < 50L)
            {
                str2 = "200";
                return str2;
            }

            prev_key_time = l;
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>HandleKeyInput</type>" + "<value>" + paramString3 + "</value>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str3 = localHTTPPostRequest.execute();
                localObject = str3;
                str2 = HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {

                localURISyntaxException.printStackTrace();
            }
            return "-1";
        }

        public static String requestSetFavoriteChannel(String paramString1, String paramString2, String paramString3, String paramString4)
        {
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>SetFavoriteChannel</type>" + "<major>" + paramString3 + "</major>" + "<minor>" + paramString4 + "</minor>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str2 = localHTTPPostRequest.execute();
                localObject = str2;
                return HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {

                localURISyntaxException.printStackTrace();
            }
            return "-1";
        }

        public static String requestSetLocal(String paramString1, String paramString2, String paramString3, String paramString4)
        {
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>locale</type>" + "<region>" + paramString3 + "</region>" + "<language>" + paramString4 + "</language>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str2 = localHTTPPostRequest.execute();
                localObject = str2;
                return HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {

                localURISyntaxException.printStackTrace();
            }
            return "-1";
        }

        public static String requestSetServiceName(String paramString1, String paramString2, String paramString3)
        {
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>SetServiceName</type>" + "<serviceName>" + paramString3 + "</serviceName>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str2 = localHTTPPostRequest.execute();
                localObject = str2;
                return HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {

                localURISyntaxException.printStackTrace();
            }
            return "-1";
        }

        public static String requestTouchClick(TVInfo paramDestInfo, String paramString)
        {
            return requestTouchClick(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString);

        }

        public static String requestTouchMove(String paramString1, String paramString2, String paramString3, String paramString4)
        {
            String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>" + paramString2 + "</session>" + "<type>HandleMouseMove</type>" + "<x>" + paramString3 + "</x>" + "<y>" + paramString4 + "</y>" + "</command>";
            HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
            localHTTPPostRequest.setRequestType("command");
            localHTTPPostRequest.setTargetIP(paramString1);
            localHTTPPostRequest.setEntity(str1);
            Object localObject = null;
            try
            {
                String str2 = localHTTPPostRequest.execute();
                localObject = str2;
                return HTTPPostRequest.parseElement(localObject, "HDCPError");
            }
            catch (URISyntaxException localURISyntaxException)
            {

                localURISyntaxException.printStackTrace();
            }
            return "-1";

        }
    }
}
