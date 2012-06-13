package com.clipcomm.WiFiRemocon;

import java.net.URISyntaxException;

public class AuthRequest
{
  private static String m_strSession = null;
  private static String m_strTimeout = null;

  public static String cancelRequestAuthKey(TVInfo paramTVInfo)
  {
    return cancelRequestAuthKey(paramTVInfo.m_strIP);
  }

  public static String cancelRequestAuthKey(String paramString)
  {
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("auth");
    localHTTPPostRequest.setTargetIP(paramString);
    localHTTPPostRequest.setEntity("<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>CancelAuthKeyReq</type></auth>");
    Object localObject = null;
    try
    {
      String str = localHTTPPostRequest.execute();
      localObject = str;
      return HTTPPostRequest.parseElement(localObject, "HDCPError");
    }
    catch (URISyntaxException localURISyntaxException)
    {
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String getSession()
  {
    return m_strSession;
  }

  public static String getTimeout()
  {
    return m_strTimeout;
  }

  public static String requestAuthKey(TVInfo paramTVInfo)
  {
    return requestAuthKey(paramTVInfo.m_strIP);
  }

  public static String requestAuthKey(String paramString)
  {
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("auth");
    localHTTPPostRequest.setTargetIP(paramString);
    localHTTPPostRequest.setEntity("<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthKeyReq</type></auth>");
    Object localObject = null;
    try
    {
      String str = localHTTPPostRequest.execute();
      localObject = str;
      return HTTPPostRequest.parseElement(localObject, "HDCPError");
    }
    catch (URISyntaxException localURISyntaxException)
    {
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestAuthSession(TVInfo paramTVInfo)
  {
    return requestAuthSession(paramTVInfo.m_strIP, paramTVInfo.m_strAuthKey);
  }

  public static String requestAuthSession(String paramString1, String paramString2)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthReq</type><value>" + paramString2 + "</value>" + "</auth>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("auth");
    localHTTPPostRequest.setTargetIP(paramString1);
    localHTTPPostRequest.setEntity(str1);
    Object localObject = null;
    try
    {
      String str3 = localHTTPPostRequest.execute();
      localObject = str3;
      String str2 = HTTPPostRequest.parseElement(localObject, "HDCPError");
      HTTPPostRequest.parseElement(localObject, "HDCPErrorDetail");
      m_strSession = HTTPPostRequest.parseElement(localObject, "session");
      m_strTimeout = HTTPPostRequest.parseElement(localObject, "timeout");
      return str2;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.AuthRequest
 * JD-Core Version:    0.6.0
 */