package com.clipcomm.WiFiRemocon;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class HTTPPost
{
  private HttpClient m_httpClient;
  private HttpPost m_httpMethod = new HttpPost();
  private String m_strHost;

  public HTTPPost()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 3000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 5000);
    this.m_httpClient = new DefaultHttpClient(localBasicHttpParams);
  }

  // ERROR //
  public String excute()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 38	com/clipcomm/WiFiRemocon/HTTPPost:m_httpClient	Lorg/apache/http/client/HttpClient;
    //   4: aload_0
    //   5: getfield 19	com/clipcomm/WiFiRemocon/HTTPPost:m_httpMethod	Lorg/apache/http/client/methods/HttpPost;
    //   8: invokeinterface 54 2 0
    //   13: astore 4
    //   15: aload 4
    //   17: invokeinterface 60 1 0
    //   22: astore 5
    //   24: aload 5
    //   26: invokeinterface 66 1 0
    //   31: sipush 200
    //   34: if_icmpeq +46 -> 80
    //   37: aload 5
    //   39: invokeinterface 69 1 0
    //   44: astore 14
    //   46: aload 14
    //   48: ldc 71
    //   50: if_acmpne +30 -> 80
    //   53: ldc 73
    //   55: astore_2
    //   56: aload_2
    //   57: areturn
    //   58: astore_3
    //   59: aload_3
    //   60: invokevirtual 76	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   63: ldc 78
    //   65: astore_2
    //   66: goto -10 -> 56
    //   69: astore_1
    //   70: aload_1
    //   71: invokevirtual 79	java/lang/Exception:printStackTrace	()V
    //   74: ldc 78
    //   76: astore_2
    //   77: goto -21 -> 56
    //   80: aload 4
    //   82: invokeinterface 83 1 0
    //   87: astore 6
    //   89: aload 6
    //   91: ifnull +80 -> 171
    //   94: aconst_null
    //   95: astore 7
    //   97: aload 6
    //   99: invokeinterface 89 1 0
    //   104: astore 13
    //   106: aload 13
    //   108: astore 7
    //   110: sipush 20000
    //   113: newarray byte
    //   115: astore 9
    //   117: aload 7
    //   119: aload 9
    //   121: invokevirtual 95	java/io/InputStream:read	([B)I
    //   124: pop
    //   125: new 97	java/lang/String
    //   128: dup
    //   129: aload 9
    //   131: invokespecial 100	java/lang/String:<init>	([B)V
    //   134: astore_2
    //   135: goto -79 -> 56
    //   138: astore 12
    //   140: aload 12
    //   142: invokevirtual 101	java/lang/IllegalStateException:printStackTrace	()V
    //   145: goto -35 -> 110
    //   148: astore 8
    //   150: aload 8
    //   152: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   155: goto -45 -> 110
    //   158: astore 10
    //   160: aload 10
    //   162: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   165: ldc 78
    //   167: astore_2
    //   168: goto -112 -> 56
    //   171: ldc 78
    //   173: astore_2
    //   174: goto -118 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   0	46	58	org/apache/http/client/ClientProtocolException
    //   0	46	69	java/lang/Exception
    //   97	106	138	java/lang/IllegalStateException
    //   97	106	148	java/io/IOException
    //   117	125	158	java/io/IOException
  }

  public void setEntity(String paramString)
  {
    ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(paramString.getBytes());
    this.m_httpMethod.setEntity(localByteArrayEntity);
  }

  public void setHost(String paramString)
    throws URISyntaxException
  {
    this.m_strHost = paramString;
    this.m_httpMethod.setURI(new URI(this.m_strHost));
    this.m_httpMethod.setHeader("Content-Type", "application/atom+xml");
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.HTTPPost
 * JD-Core Version:    0.6.0
 */