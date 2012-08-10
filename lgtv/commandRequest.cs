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
            requestTouchClick(destInfo.IP,destInfo.SESSIONID,touchCode.ToString());
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
    }
}
