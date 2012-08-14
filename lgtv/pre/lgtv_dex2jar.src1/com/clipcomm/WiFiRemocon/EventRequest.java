package com.clipcomm.WiFiRemocon;

import java.net.URISyntaxException;

public class EventRequest
{
  public static String requestAlive(String paramString1, String paramString2)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>alive</name>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestByebye(String paramString1, String paramString2)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>byebye</name>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestCallStateChanged(LifeTime.DestInfo paramDestInfo, String paramString)
  {
    if (paramDestInfo == null);
    for (String str = ""; ; str = requestCallStateChanged(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString))
      return str;
  }

  public static String requestCallStateChanged(String paramString1, String paramString2, String paramString3)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>CallStateChanged</name>" + "<value>" + paramString3 + "</value>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestCursorVisible(LifeTime.DestInfo paramDestInfo, String paramString)
  {
    if (paramDestInfo == null);
    for (String str = ""; ; str = requestCursorVisible(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString))
      return str;
  }

  public static String requestCursorVisible(String paramString1, String paramString2, String paramString3)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>CursorVisible</name>" + "<value>" + paramString3 + "</value>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestDragMode(LifeTime.DestInfo paramDestInfo, String paramString)
  {
    if (paramDestInfo == null);
    for (String str = ""; ; str = requestDragMode(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString))
      return str;
  }

  public static String requestDragMode(String paramString1, String paramString2, String paramString3)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>DragMode</name>" + "<value>" + paramString3 + "</value>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestTextEdited(LifeTime.DestInfo paramDestInfo, String paramString)
  {
    if (paramDestInfo == null);
    for (String str = ""; ; str = requestTextEdited(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString))
      return str;
  }

  public static String requestTextEdited(String paramString1, String paramString2, String paramString3)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>TextEdited</name>" + "<value>" + paramString3 + "</value>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }

  public static String requestUpdate(LifeTime.DestInfo paramDestInfo, String paramString1, String paramString2)
  {
    if (paramDestInfo == null);
    for (String str = ""; ; str = requestUpdate(paramDestInfo.m_strIP, paramDestInfo.m_strSessionID, paramString1, paramString2))
      return str;
  }

  public static String requestUpdate(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    String str1 = "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>" + paramString2 + "</session>" + "<name>update</name>" + "<value>" + paramString4 + "</value>" + "<expire>" + paramString3 + "</expire>" + "</event>";
    HTTPPostRequest localHTTPPostRequest = new HTTPPostRequest();
    localHTTPPostRequest.setRequestType("event");
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
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.EventRequest
 * JD-Core Version:    0.6.0
 */