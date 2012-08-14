package com.clipcomm.WiFiRemocon;

import android.os.Handler;
import android.os.Message;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;
import org.apache.http.HttpServerConnection;
import org.apache.http.entity.ContentProducer;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.impl.DefaultHttpServerConnection;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpRequestHandler;
import org.apache.http.protocol.HttpRequestHandlerRegistry;
import org.apache.http.protocol.HttpService;
import org.apache.http.protocol.ResponseConnControl;
import org.apache.http.protocol.ResponseContent;
import org.apache.http.protocol.ResponseDate;
import org.apache.http.protocol.ResponseServer;

public class HTTPPostServer
{
  public static final int ALIVE = 1;
  public static final int BYEBYE = 3;
  public static final int CHANNELCHANGED = 10;
  public static final int CURSORVISIBLE = 7;
  public static final int KEYBOARDHIDE = 5;
  public static final int KEYBOARDVISIBLE = 4;
  public static final int NAVIBTNVISIBLE = 9;
  public static final int TEXTEDITED = 8;
  public static final int UPDATE = 2;
  public static final int VOLCHVISIBLE = 6;
  private static volatile HTTPPostServer uniqueInstance;
  private RequestListenerThread m_thread = null;

  public static boolean ParseChInfo(ChannelInfo paramChannelInfo, String paramString)
  {
    if ((paramString == null) || (paramChannelInfo == null));
    for (int i = 0; ; i = 1)
    {
      return i;
      paramChannelInfo.m_strMajorCH = HTTPPostRequest.parseElement(paramString, "major");
      paramChannelInfo.m_strMinorCH = HTTPPostRequest.parseElement(paramString, "minor");
      paramChannelInfo.m_strSrcIndex = HTTPPostRequest.parseElement(paramString, "sourceIndex");
      paramChannelInfo.m_strPhyNum = HTTPPostRequest.parseElement(paramString, "physicalNum");
      paramChannelInfo.m_strCHType = HTTPPostRequest.parseElement(paramString, "chtype");
      paramChannelInfo.m_strName = HTTPPostRequest.parseElement(paramString, "chname");
      paramChannelInfo.m_strDispName = paramChannelInfo.m_strName;
    }
  }

  public static HTTPPostServer getInstance()
  {
    if (uniqueInstance == null)
      monitorenter;
    try
    {
      if (uniqueInstance == null)
        uniqueInstance = new HTTPPostServer();
      return uniqueInstance;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void start()
  {
    if (this.m_thread != null)
      stop();
    try
    {
      this.m_thread = new RequestListenerThread(8080);
      if (this.m_thread != null)
      {
        this.m_thread.setName("HTTPPostServer:RequestListenerThread");
        this.m_thread.setDaemon(false);
        this.m_thread.start();
      }
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public void stop()
  {
    this.m_thread.Quit();
    this.m_thread.interrupt();
    this.m_thread = null;
  }

  static class HttpServerHandler
    implements HttpRequestHandler
  {
    // ERROR //
    public void handle(org.apache.http.HttpRequest paramHttpRequest, org.apache.http.HttpResponse paramHttpResponse, org.apache.http.protocol.HttpContext paramHttpContext)
      throws org.apache.http.HttpException, IOException
    {
      // Byte code:
      //   0: aload_1
      //   1: invokeinterface 81 1 0
      //   6: invokeinterface 87 1 0
      //   11: getstatic 93	java/util/Locale:ENGLISH	Ljava/util/Locale;
      //   14: invokevirtual 99	java/lang/String:toUpperCase	(Ljava/util/Locale;)Ljava/lang/String;
      //   17: astore 4
      //   19: aload 4
      //   21: ldc 101
      //   23: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   26: ifne +41 -> 67
      //   29: aload 4
      //   31: ldc 107
      //   33: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   36: ifne +31 -> 67
      //   39: new 109	org/apache/http/MethodNotSupportedException
      //   42: dup
      //   43: new 111	java/lang/StringBuilder
      //   46: dup
      //   47: aload 4
      //   49: invokestatic 115	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   52: invokespecial 118	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   55: ldc 120
      //   57: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   60: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   63: invokespecial 128	org/apache/http/MethodNotSupportedException:<init>	(Ljava/lang/String;)V
      //   66: athrow
      //   67: aload_1
      //   68: instanceof 130
      //   71: ifeq +228 -> 299
      //   74: aload_1
      //   75: checkcast 130	org/apache/http/HttpEntityEnclosingRequest
      //   78: invokeinterface 134 1 0
      //   83: astore 5
      //   85: aload 5
      //   87: ifnull +212 -> 299
      //   90: aconst_null
      //   91: astore 6
      //   93: aload 5
      //   95: invokeinterface 140 1 0
      //   100: astore 22
      //   102: aload 22
      //   104: astore 6
      //   106: aload 5
      //   108: invokeinterface 144 1 0
      //   113: l2i
      //   114: newarray byte
      //   116: astore 8
      //   118: aload 6
      //   120: aload 8
      //   122: invokevirtual 150	java/io/InputStream:read	([B)I
      //   125: pop
      //   126: new 95	java/lang/String
      //   129: dup
      //   130: aload 8
      //   132: invokespecial 153	java/lang/String:<init>	([B)V
      //   135: astore 10
      //   137: aload 10
      //   139: ldc 155
      //   141: invokestatic 161	com/clipcomm/WiFiRemocon/HTTPPostRequest:parseElement	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      //   144: astore 11
      //   146: aload 10
      //   148: ldc 163
      //   150: invokestatic 161	com/clipcomm/WiFiRemocon/HTTPPostRequest:parseElement	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      //   153: astore 12
      //   155: aload_0
      //   156: aload 11
      //   158: aload 10
      //   160: invokevirtual 167	com/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler:process	(Ljava/lang/String;Ljava/lang/String;)I
      //   163: istore 13
      //   165: aconst_null
      //   166: astore 14
      //   168: aconst_null
      //   169: astore 15
      //   171: iload 13
      //   173: lookupswitch	default:+67->240, 200:+157->330, 400:+168->341, 401:+179->352, 406:+190->363, 409:+201->374, 500:+212->385, 503:+223->396
      //   241: dconst_0
      //   242: astore 16
      //   244: aload 15
      //   246: astore 17
      //   248: aload_2
      //   249: sipush 200
      //   252: invokeinterface 173 2 0
      //   257: new 8	com/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1
      //   260: dup
      //   261: aload_0
      //   262: aload 16
      //   264: aload 17
      //   266: aload 12
      //   268: invokespecial 176	com/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1:<init>	(Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
      //   271: astore 18
      //   273: new 178	org/apache/http/entity/EntityTemplate
      //   276: dup
      //   277: aload 18
      //   279: invokespecial 181	org/apache/http/entity/EntityTemplate:<init>	(Lorg/apache/http/entity/ContentProducer;)V
      //   282: astore 19
      //   284: aload 19
      //   286: ldc 183
      //   288: invokevirtual 186	org/apache/http/entity/EntityTemplate:setContentType	(Ljava/lang/String;)V
      //   291: aload_2
      //   292: aload 19
      //   294: invokeinterface 190 2 0
      //   299: return
      //   300: astore 21
      //   302: aload 21
      //   304: invokevirtual 193	java/lang/IllegalStateException:printStackTrace	()V
      //   307: goto -201 -> 106
      //   310: astore 7
      //   312: aload 7
      //   314: invokevirtual 194	java/io/IOException:printStackTrace	()V
      //   317: goto -211 -> 106
      //   320: astore 9
      //   322: aload 9
      //   324: invokevirtual 194	java/io/IOException:printStackTrace	()V
      //   327: goto -201 -> 126
      //   330: ldc 196
      //   332: astore 14
      //   334: ldc 198
      //   336: astore 15
      //   338: goto -98 -> 240
      //   341: ldc 200
      //   343: astore 14
      //   345: ldc 202
      //   347: astore 15
      //   349: goto -109 -> 240
      //   352: ldc 204
      //   354: astore 14
      //   356: ldc 206
      //   358: astore 15
      //   360: goto -120 -> 240
      //   363: ldc 208
      //   365: astore 14
      //   367: ldc 210
      //   369: astore 15
      //   371: goto -131 -> 240
      //   374: ldc 212
      //   376: astore 14
      //   378: ldc 214
      //   380: astore 15
      //   382: goto -142 -> 240
      //   385: ldc 216
      //   387: astore 14
      //   389: ldc 218
      //   391: astore 15
      //   393: goto -153 -> 240
      //   396: ldc 220
      //   398: astore 14
      //   400: ldc 222
      //   402: astore 15
      //   404: goto -164 -> 240
      //
      // Exception table:
      //   from	to	target	type
      //   93	102	300	java/lang/IllegalStateException
      //   93	102	310	java/io/IOException
      //   118	126	320	java/io/IOException
    }

    public int process(String paramString1, String paramString2)
    {
      int i = 0;
      Handler localHandler1 = LifeTime.getInstance().getActiveHandler();
      Handler localHandler2 = LifeTime.getInstance().getRecvCHInfoHandler();
      switch ($SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostServer$HttpServerHandler$req_name()[req_name.toReqName(paramString1).ordinal()])
      {
      case 3:
      default:
      case 2:
      case 4:
      case 9:
      case 5:
      case 7:
      case 6:
      case 8:
      case 10:
      case 1:
      }
      while (true)
      {
        return i;
        i = 200;
        continue;
        ByeByeReceiver.sendBroadcastByeBye(true);
        i = 200;
        continue;
        if (localHandler2 != null)
        {
          Message localMessage6 = new Message();
          localMessage6.arg1 = 10;
          if (paramString2 != null)
            localMessage6.obj = paramString2;
          localHandler2.sendMessage(localMessage6);
        }
        i = 200;
        continue;
        Message localMessage5;
        if ((localHandler1 != null) && (paramString2 != null))
        {
          localMessage5 = new Message();
          if (!HTTPPostRequest.parseElement(paramString2, "value").equals("true"))
            break label205;
        }
        label205: for (localMessage5.arg1 = 4; ; localMessage5.arg1 = 5)
        {
          localHandler1.sendMessage(localMessage5);
          i = 200;
          break;
        }
        if (localHandler1 != null)
        {
          Message localMessage4 = new Message();
          localMessage4.arg1 = 7;
          localMessage4.obj = null;
          localHandler1.sendMessage(localMessage4);
        }
        i = 200;
        continue;
        if (localHandler1 != null)
        {
          Message localMessage3 = new Message();
          localMessage3.arg1 = 6;
          localMessage3.obj = null;
          localHandler1.sendMessage(localMessage3);
        }
        i = 200;
        continue;
        try
        {
          label304: 
          do
            Thread.sleep(100L);
          while (!LifeTime.getInstance().isKBDActivated());
          Handler localHandler3 = LifeTime.getInstance().getActiveHandler();
          if (localHandler3 != null)
          {
            Message localMessage2 = new Message();
            localMessage2.arg1 = 8;
            localMessage2.obj = HTTPPostRequest.parseElement(paramString2, "value");
            localHandler3.sendMessage(localMessage2);
          }
          i = 400;
          continue;
          if (localHandler1 != null)
          {
            Message localMessage1 = new Message();
            localMessage1.arg1 = 9;
            localMessage1.obj = null;
            localHandler1.sendMessage(localMessage1);
          }
          i = 400;
        }
        catch (InterruptedException localInterruptedException)
        {
          break label304;
        }
      }
    }

    public class req_event
    {
      private HTTPPostServer.HttpServerHandler.req_name m_nNameCode;
      private String m_strName;
      private String m_strValue;

      req_event(String paramString1, String arg3)
      {
        this.m_strName = paramString1;
        Object localObject;
        this.m_strValue = localObject;
        this.m_nNameCode = HTTPPostServer.HttpServerHandler.req_name.toReqName(paramString1);
      }

      public String getName()
      {
        return this.m_strName;
      }

      public HTTPPostServer.HttpServerHandler.req_name getNameCode()
      {
        return this.m_nNameCode;
      }

      public String getValue()
      {
        return this.m_strValue;
      }
    }

    public static enum req_name
    {
      static
      {
        byebye = new req_name("byebye", 3);
        KeyboardVisible = new req_name("KeyboardVisible", 4);
        VolChVisible = new req_name("VolChVisible", 5);
        CursorVisible = new req_name("CursorVisible", 6);
        TextEdited = new req_name("TextEdited", 7);
        ChannelChanged = new req_name("ChannelChanged", 8);
        NavigationButtonVisible = new req_name("NavigationButtonVisible", 9);
        req_name[] arrayOfreq_name = new req_name[10];
        arrayOfreq_name[0] = NOVALUE;
        arrayOfreq_name[1] = alive;
        arrayOfreq_name[2] = update;
        arrayOfreq_name[3] = byebye;
        arrayOfreq_name[4] = KeyboardVisible;
        arrayOfreq_name[5] = VolChVisible;
        arrayOfreq_name[6] = CursorVisible;
        arrayOfreq_name[7] = TextEdited;
        arrayOfreq_name[8] = ChannelChanged;
        arrayOfreq_name[9] = NavigationButtonVisible;
        ENUM$VALUES = arrayOfreq_name;
      }

      public static req_name toReqName(String paramString)
      {
        try
        {
          req_name localreq_name2 = valueOf(paramString);
          localreq_name1 = localreq_name2;
          return localreq_name1;
        }
        catch (Exception localException)
        {
          while (true)
            req_name localreq_name1 = NOVALUE;
        }
      }
    }
  }

  static class RequestListenerThread extends Thread
  {
    private final HttpService httpService;
    private boolean m_bIsRunning = false;
    private final HttpParams params;
    private final ServerSocket serversocket;

    public RequestListenerThread(int paramInt)
      throws IOException
    {
      this.serversocket = new ServerSocket(paramInt);
      this.params = new BasicHttpParams();
      this.params.setIntParameter("http.socket.timeout", 5000).setIntParameter("http.socket.buffer-size", 8192).setBooleanParameter("http.connection.stalecheck", false).setBooleanParameter("http.tcp.nodelay", true).setParameter("http.origin-server", "HttpComponents/1.1");
      BasicHttpProcessor localBasicHttpProcessor = new BasicHttpProcessor();
      localBasicHttpProcessor.addInterceptor(new ResponseDate());
      localBasicHttpProcessor.addInterceptor(new ResponseServer());
      localBasicHttpProcessor.addInterceptor(new ResponseContent());
      localBasicHttpProcessor.addInterceptor(new ResponseConnControl());
      HttpRequestHandlerRegistry localHttpRequestHandlerRegistry = new HttpRequestHandlerRegistry();
      localHttpRequestHandlerRegistry.register("*", new HTTPPostServer.HttpServerHandler());
      this.httpService = new HttpService(localBasicHttpProcessor, new DefaultConnectionReuseStrategy(), new DefaultHttpResponseFactory());
      this.httpService.setParams(this.params);
      this.httpService.setHandlerResolver(localHttpRequestHandlerRegistry);
    }

    public void Quit()
    {
      this.m_bIsRunning = false;
      if (this.serversocket != null);
      try
      {
        this.serversocket.close();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
    }

    public void run()
    {
      this.m_bIsRunning = true;
      if ((Thread.interrupted()) || (!this.m_bIsRunning));
      while (true)
        while (true)
        {
          return;
          try
          {
            Socket localSocket = this.serversocket.accept();
            DefaultHttpServerConnection localDefaultHttpServerConnection = new DefaultHttpServerConnection();
            localDefaultHttpServerConnection.bind(localSocket, this.params);
            HTTPPostServer.WorkerThread localWorkerThread = new HTTPPostServer.WorkerThread(this.httpService, localDefaultHttpServerConnection);
            localWorkerThread.setName("HTTPPostServer:httpService");
            localWorkerThread.setDaemon(true);
            localWorkerThread.start();
          }
          catch (InterruptedIOException localInterruptedIOException)
          {
            continue;
          }
          catch (IOException localIOException)
          {
          }
        }
    }
  }

  static class WorkerThread extends Thread
  {
    private final HttpServerConnection conn;
    private final HttpService httpservice;

    public WorkerThread(HttpService paramHttpService, HttpServerConnection paramHttpServerConnection)
    {
      this.httpservice = paramHttpService;
      this.conn = paramHttpServerConnection;
    }

    // ERROR //
    public void run()
    {
      // Byte code:
      //   0: new 29	org/apache/http/protocol/BasicHttpContext
      //   3: dup
      //   4: aconst_null
      //   5: invokespecial 32	org/apache/http/protocol/BasicHttpContext:<init>	(Lorg/apache/http/protocol/HttpContext;)V
      //   8: astore_1
      //   9: invokestatic 36	java/lang/Thread:interrupted	()Z
      //   12: ifne +19 -> 31
      //   15: aload_0
      //   16: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   19: invokeinterface 41 1 0
      //   24: istore 11
      //   26: iload 11
      //   28: ifne +13 -> 41
      //   31: aload_0
      //   32: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   35: invokeinterface 44 1 0
      //   40: return
      //   41: aload_0
      //   42: getfield 18	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:httpservice	Lorg/apache/http/protocol/HttpService;
      //   45: aload_0
      //   46: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   49: aload_1
      //   50: invokevirtual 50	org/apache/http/protocol/HttpService:handleRequest	(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
      //   53: goto -44 -> 9
      //   56: astore 8
      //   58: aload_0
      //   59: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   62: invokeinterface 44 1 0
      //   67: goto -27 -> 40
      //   70: astore 9
      //   72: goto -32 -> 40
      //   75: astore 6
      //   77: aload_0
      //   78: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   81: invokeinterface 44 1 0
      //   86: goto -46 -> 40
      //   89: astore 7
      //   91: goto -51 -> 40
      //   94: astore 4
      //   96: aload_0
      //   97: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   100: invokeinterface 44 1 0
      //   105: goto -65 -> 40
      //   108: astore 5
      //   110: goto -70 -> 40
      //   113: astore_2
      //   114: aload_0
      //   115: getfield 20	com/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread:conn	Lorg/apache/http/HttpServerConnection;
      //   118: invokeinterface 44 1 0
      //   123: aload_2
      //   124: athrow
      //   125: astore 10
      //   127: goto -87 -> 40
      //   130: astore_3
      //   131: goto -8 -> 123
      //
      // Exception table:
      //   from	to	target	type
      //   9	26	56	org/apache/http/ConnectionClosedException
      //   41	53	56	org/apache/http/ConnectionClosedException
      //   58	67	70	java/io/IOException
      //   9	26	75	java/io/IOException
      //   41	53	75	java/io/IOException
      //   77	86	89	java/io/IOException
      //   9	26	94	org/apache/http/HttpException
      //   41	53	94	org/apache/http/HttpException
      //   96	105	108	java/io/IOException
      //   9	26	113	finally
      //   41	53	113	finally
      //   31	40	125	java/io/IOException
      //   114	123	130	java/io/IOException
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.HTTPPostServer
 * JD-Core Version:    0.6.0
 */