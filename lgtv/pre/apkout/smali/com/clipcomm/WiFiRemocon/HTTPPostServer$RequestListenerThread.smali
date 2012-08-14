.class Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;
.super Ljava/lang/Thread;
.source "HTTPPostServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestListenerThread"
.end annotation


# instance fields
.field private final httpService:Lorg/apache/http/protocol/HttpService;

.field private m_bIsRunning:Z

.field private final params:Lorg/apache/http/params/HttpParams;

.field private final serversocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 165
    #v5=(Null);
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 157
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;);
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->m_bIsRunning:Z

    .line 167
    new-instance v2, Ljava/net/ServerSocket;

    #v2=(UninitRef,Ljava/net/ServerSocket;);
    invoke-direct {v2, p1}, Ljava/net/ServerSocket;-><init>(I)V

    #v2=(Reference,Ljava/net/ServerSocket;);
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    .line 168
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    #v2=(UninitRef,Lorg/apache/http/params/BasicHttpParams;);
    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #v2=(Reference,Lorg/apache/http/params/BasicHttpParams;);
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    .line 169
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    .line 170
    const-string v3, "http.socket.timeout"

    #v3=(Reference,Ljava/lang/String;);
    const/16 v4, 0x1388

    #v4=(PosShort);
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 171
    const-string v3, "http.socket.buffer-size"

    const/16 v4, 0x2000

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 172
    const-string v3, "http.connection.stalecheck"

    invoke-interface {v2, v3, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 173
    const-string v3, "http.tcp.nodelay"

    const/4 v4, 0x1

    #v4=(One);
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 174
    const-string v3, "http.origin-server"

    const-string v4, "HttpComponents/1.1"

    #v4=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 177
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    #v0=(UninitRef,Lorg/apache/http/protocol/BasicHttpProcessor;);
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 178
    .local v0, httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;
    #v0=(Reference,Lorg/apache/http/protocol/BasicHttpProcessor;);
    new-instance v2, Lorg/apache/http/protocol/ResponseDate;

    #v2=(UninitRef,Lorg/apache/http/protocol/ResponseDate;);
    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    #v2=(Reference,Lorg/apache/http/protocol/ResponseDate;);
    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 179
    new-instance v2, Lorg/apache/http/protocol/ResponseServer;

    #v2=(UninitRef,Lorg/apache/http/protocol/ResponseServer;);
    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    #v2=(Reference,Lorg/apache/http/protocol/ResponseServer;);
    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 180
    new-instance v2, Lorg/apache/http/protocol/ResponseContent;

    #v2=(UninitRef,Lorg/apache/http/protocol/ResponseContent;);
    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    #v2=(Reference,Lorg/apache/http/protocol/ResponseContent;);
    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 181
    new-instance v2, Lorg/apache/http/protocol/ResponseConnControl;

    #v2=(UninitRef,Lorg/apache/http/protocol/ResponseConnControl;);
    invoke-direct {v2}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    #v2=(Reference,Lorg/apache/http/protocol/ResponseConnControl;);
    invoke-virtual {v0, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 184
    new-instance v1, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    #v1=(UninitRef,Lorg/apache/http/protocol/HttpRequestHandlerRegistry;);
    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 185
    .local v1, reqistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    #v1=(Reference,Lorg/apache/http/protocol/HttpRequestHandlerRegistry;);
    const-string v2, "*"

    new-instance v3, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;-><init>()V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;);
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 188
    new-instance v2, Lorg/apache/http/protocol/HttpService;

    .line 189
    #v2=(UninitRef,Lorg/apache/http/protocol/HttpService;);
    new-instance v3, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    #v3=(UninitRef,Lorg/apache/http/impl/DefaultConnectionReuseStrategy;);
    invoke-direct {v3}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 190
    #v3=(Reference,Lorg/apache/http/impl/DefaultConnectionReuseStrategy;);
    new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    #v4=(UninitRef,Lorg/apache/http/impl/DefaultHttpResponseFactory;);
    invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    #v4=(Reference,Lorg/apache/http/impl/DefaultHttpResponseFactory;);
    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 188
    #v2=(Reference,Lorg/apache/http/protocol/HttpService;);
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 191
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v2, v3}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 192
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v2, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 193
    return-void
.end method


# virtual methods
.method public Quit()V
    .locals 2

    .prologue
    .line 200
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->m_bIsRunning:Z

    .line 201
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    #v1=(Reference,Ljava/net/ServerSocket;);
    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 206
    :catch_0
    #v0=(Uninit);
    move-exception v1

    move-object v0, v1

    .line 208
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 215
    #v5=(One);
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->m_bIsRunning:Z

    .line 216
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->m_bIsRunning:Z

    if-nez v5, :cond_1

    .line 242
    :cond_0
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return-void

    .line 222
    :cond_1
    :try_start_0
    #v1=(Uninit);v2=(Uninit);v5=(Boolean);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->serversocket:Ljava/net/ServerSocket;

    #v5=(Reference,Ljava/net/ServerSocket;);
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 223
    .local v3, socket:Ljava/net/Socket;
    #v3=(Reference,Ljava/net/Socket;);
    new-instance v0, Lorg/apache/http/impl/DefaultHttpServerConnection;

    #v0=(UninitRef,Lorg/apache/http/impl/DefaultHttpServerConnection;);
    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 225
    .local v0, conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    #v0=(Reference,Lorg/apache/http/impl/DefaultHttpServerConnection;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v3, v5}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 228
    new-instance v4, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;

    #v4=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->httpService:Lorg/apache/http/protocol/HttpService;

    invoke-direct {v4, v5, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;-><init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V

    .line 229
    .local v4, t:Ljava/lang/Thread;
    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;);
    const-string v5, "HTTPPostServer:httpService"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 230
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 231
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 233
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v3           #socket:Ljava/net/Socket;
    .end local v4           #t:Ljava/lang/Thread;
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/io/InterruptedIOException;);
    move-object v2, v5

    .line 235
    .local v2, ex:Ljava/io/InterruptedIOException;
    #v2=(Reference,Ljava/io/InterruptedIOException;);
    goto :goto_1

    .line 237
    .end local v2           #ex:Ljava/io/InterruptedIOException;
    :catch_1
    #v2=(Uninit);v5=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/io/IOException;);
    move-object v1, v5

    .line 239
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    goto :goto_1
.end method
