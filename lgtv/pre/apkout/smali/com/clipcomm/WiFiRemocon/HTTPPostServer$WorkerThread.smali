.class Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;
.super Ljava/lang/Thread;
.source "HTTPPostServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkerThread"
.end annotation


# instance fields
.field private final conn:Lorg/apache/http/HttpServerConnection;

.field private final httpservice:Lorg/apache/http/protocol/HttpService;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .locals 0
    .parameter "httpservice"
    .parameter "conn"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 264
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;);
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    .line 265
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    .line 266
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    #v0=(UninitRef,Lorg/apache/http/protocol/BasicHttpContext;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 273
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    :goto_0
    :try_start_0
    #v0=(Reference,Lorg/apache/http/protocol/BasicHttpContext;);v1=(Reference,Lorg/apache/http/protocol/HttpService;);v2=(Conflicted);
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    #v1=(Reference,Lorg/apache/http/HttpServerConnection;);
    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 291
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    #v1=(Reference,Lorg/apache/http/HttpServerConnection;);
    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 297
    :goto_1
    return-void

    .line 275
    :cond_1
    :try_start_2
    #v1=(Boolean);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->httpservice:Lorg/apache/http/protocol/HttpService;

    #v1=(Reference,Lorg/apache/http/protocol/HttpService;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    #v2=(Reference,Lorg/apache/http/HttpServerConnection;);
    invoke-virtual {v1, v2, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 278
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    .line 291
    :try_start_3
    #v1=(Reference,Lorg/apache/http/ConnectionClosedException;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 293
    :catch_1
    move-exception v1

    goto :goto_1

    .line 281
    :catch_2
    #v1=(Conflicted);
    move-exception v1

    .line 291
    :try_start_4
    #v1=(Reference,Ljava/io/IOException;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 293
    :catch_3
    move-exception v1

    goto :goto_1

    .line 284
    :catch_4
    #v1=(Conflicted);
    move-exception v1

    .line 291
    :try_start_5
    #v1=(Reference,Lorg/apache/http/HttpException;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 293
    :catch_5
    move-exception v1

    goto :goto_1

    .line 288
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    .line 291
    :try_start_6
    #v1=(Reference,Ljava/lang/Throwable;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;->conn:Lorg/apache/http/HttpServerConnection;

    #v2=(Reference,Lorg/apache/http/HttpServerConnection;);
    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 296
    :goto_2
    throw v1

    .line 293
    :catch_6
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/io/IOException;);
    goto :goto_1

    :catch_7
    move-exception v2

    #v2=(Reference,Ljava/io/IOException;);
    goto :goto_2
.end method
