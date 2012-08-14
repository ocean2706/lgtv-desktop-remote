package com.clipcomm.WiFiRemocon;

import java.net.URISyntaxException;

public class HTTPPostRequest
{
  private HTTPPost m_httpPost = new HTTPPost();
  private String m_strEntity;
  private String m_strTargetIP;
  private String m_strURI;

  public static String parseElement(String paramString1, String paramString2)
  {
    String str1 = "<" + paramString2 + ">";
    String str2 = "</" + paramString2 + ">";
    int i = paramString1.indexOf(str1);
    String str3;
    if (i == -1)
      str3 = "";
    while (true)
    {
      return str3;
      int j = i + str1.length();
      int k = paramString1.indexOf(str2, j);
      if (k == -1)
      {
        str3 = "";
        continue;
      }
      str3 = paramString1.substring(j, k);
    }
  }

  public String execute()
    throws URISyntaxException
  {
    this.m_httpPost.setHost("http://" + this.m_strTargetIP + ":8080" + this.m_strURI);
    this.m_httpPost.setEntity(this.m_strEntity);
    return this.m_httpPost.excute();
  }

  public void setEntity(String paramString)
  {
    this.m_strEntity = paramString;
  }

  public void setRequestType(String paramString)
  {
    switch ($SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostRequest$req_type()[req_type.toReqType(paramString).ordinal()])
    {
    default:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      this.m_strURI = "/hdcp/api/dtv_wifirc";
      continue;
      this.m_strURI = "/hdcp/api/event";
      continue;
      this.m_strURI = "/hdcp/api/auth";
    }
  }

  public void setTargetIP(String paramString)
  {
    this.m_strTargetIP = paramString;
  }

  public static enum req_type
  {
    static
    {
      auth = new req_type("auth", 3);
      req_type[] arrayOfreq_type = new req_type[4];
      arrayOfreq_type[0] = NOVALUE;
      arrayOfreq_type[1] = command;
      arrayOfreq_type[2] = event;
      arrayOfreq_type[3] = auth;
      ENUM$VALUES = arrayOfreq_type;
    }

    public static req_type toReqType(String paramString)
    {
      try
      {
        req_type localreq_type2 = valueOf(paramString);
        localreq_type1 = localreq_type2;
        return localreq_type1;
      }
      catch (Exception localException)
      {
        while (true)
          req_type localreq_type1 = NOVALUE;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.HTTPPostRequest
 * JD-Core Version:    0.6.0
 */