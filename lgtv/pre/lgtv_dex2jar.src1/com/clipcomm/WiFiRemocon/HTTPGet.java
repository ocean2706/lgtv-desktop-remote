package com.clipcomm.WiFiRemocon;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class HTTPGet
{
  private HttpClient m_httpClient;
  private HttpGet m_httpMethod = new HttpGet();

  public HTTPGet()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 3000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 5000);
    this.m_httpClient = new DefaultHttpClient(localBasicHttpParams);
  }

  // ERROR //
  public String execute()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 36	com/clipcomm/WiFiRemocon/HTTPGet:m_httpClient	Lorg/apache/http/client/HttpClient;
    //   6: aload_0
    //   7: getfield 17	com/clipcomm/WiFiRemocon/HTTPGet:m_httpMethod	Lorg/apache/http/client/methods/HttpGet;
    //   10: invokeinterface 49 2 0
    //   15: astore_1
    //   16: aload_1
    //   17: invokeinterface 55 1 0
    //   22: invokeinterface 61 1 0
    //   27: istore 13
    //   29: iload 13
    //   31: sipush 200
    //   34: if_icmpeq +15 -> 49
    //   37: ldc 63
    //   39: astore_3
    //   40: aload_3
    //   41: areturn
    //   42: astore 4
    //   44: aload 4
    //   46: invokevirtual 66	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   49: aload_1
    //   50: invokeinterface 70 1 0
    //   55: astore 5
    //   57: aload 5
    //   59: ifnull +93 -> 152
    //   62: aconst_null
    //   63: astore 6
    //   65: aload 5
    //   67: invokeinterface 76 1 0
    //   72: astore 12
    //   74: aload 12
    //   76: astore 6
    //   78: aload 5
    //   80: invokeinterface 80 1 0
    //   85: l2i
    //   86: newarray byte
    //   88: astore 8
    //   90: aload 6
    //   92: aload 8
    //   94: invokevirtual 86	java/io/InputStream:read	([B)I
    //   97: pop
    //   98: new 88	java/lang/String
    //   101: dup
    //   102: aload 8
    //   104: invokespecial 91	java/lang/String:<init>	([B)V
    //   107: astore_3
    //   108: goto -68 -> 40
    //   111: astore_2
    //   112: aload_2
    //   113: invokevirtual 92	java/io/IOException:printStackTrace	()V
    //   116: ldc 63
    //   118: astore_3
    //   119: goto -79 -> 40
    //   122: astore 11
    //   124: aload 11
    //   126: invokevirtual 93	java/lang/IllegalStateException:printStackTrace	()V
    //   129: goto -51 -> 78
    //   132: astore 7
    //   134: aload 7
    //   136: invokevirtual 92	java/io/IOException:printStackTrace	()V
    //   139: goto -61 -> 78
    //   142: astore 9
    //   144: aload 9
    //   146: invokevirtual 92	java/io/IOException:printStackTrace	()V
    //   149: goto -51 -> 98
    //   152: ldc 63
    //   154: astore_3
    //   155: goto -115 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   2	29	42	org/apache/http/client/ClientProtocolException
    //   2	29	111	java/io/IOException
    //   65	74	122	java/lang/IllegalStateException
    //   65	74	132	java/io/IOException
    //   90	98	142	java/io/IOException
  }

  public void setURL(String paramString1, String paramString2)
  {
    String str = "http://" + paramString1 + ":8080" + paramString2;
    Object localObject = null;
    try
    {
      URI localURI = new URI(str);
      localObject = localURI;
      this.m_httpMethod.setURI(localObject);
      return;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      while (true)
        localURISyntaxException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.HTTPGet
 * JD-Core Version:    0.6.0
 */