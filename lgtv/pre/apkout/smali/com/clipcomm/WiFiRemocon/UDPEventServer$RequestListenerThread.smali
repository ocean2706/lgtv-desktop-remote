.class Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;
.super Ljava/lang/Thread;
.source "UDPEventServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/UDPEventServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestListenerThread"
.end annotation


# instance fields
.field private m_bIsRunning:Z

.field private final receiveData:[B

.field private serversocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "port"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 70
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;);
    const/16 v0, 0x400

    #v0=(PosShort);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->receiveData:[B

    .line 71
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->m_bIsRunning:Z

    .line 77
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    #v0=(UninitRef,Ljava/net/DatagramSocket;);
    const/16 v1, 0x1b9e

    #v1=(PosShort);
    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    #v0=(Reference,Ljava/net/DatagramSocket;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->serversocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 79
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/net/SocketException;);
    goto :goto_0
.end method


# virtual methods
.method public Quit()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->m_bIsRunning:Z

    .line 88
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->serversocket:Ljava/net/DatagramSocket;

    #v0=(Reference,Ljava/net/DatagramSocket;);
    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->serversocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 92
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 96
    #v5=(One);
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->m_bIsRunning:Z

    .line 97
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->m_bIsRunning:Z

    if-nez v5, :cond_1

    .line 122
    :cond_0
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return-void

    .line 101
    :cond_1
    :try_start_0
    #v1=(Uninit);v2=(Uninit);v5=(Boolean);
    new-instance v3, Ljava/net/DatagramPacket;

    #v3=(UninitRef,Ljava/net/DatagramPacket;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->receiveData:[B

    #v5=(Reference,[B);
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->receiveData:[B

    #v6=(Reference,[B);
    array-length v6, v6

    #v6=(Integer);
    invoke-direct {v3, v5, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 102
    .local v3, packet:Ljava/net/DatagramPacket;
    #v3=(Reference,Ljava/net/DatagramPacket;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->serversocket:Ljava/net/DatagramSocket;

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->serversocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 104
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 107
    .local v0, client:Ljava/net/InetAddress;
    #v0=(Reference,Ljava/net/InetAddress;);
    new-instance v4, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;

    #v4=(UninitRef,Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->receiveData:[B

    invoke-direct {v4, v5}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;-><init>([B)V

    .line 108
    .local v4, t:Ljava/lang/Thread;
    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;);
    const-string v5, "UDPEventServer:receiveData"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 109
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 110
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    .end local v0           #client:Ljava/net/InetAddress;
    .end local v3           #packet:Ljava/net/DatagramPacket;
    .end local v4           #t:Ljava/lang/Thread;
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/io/InterruptedIOException;);
    move-object v2, v5

    .line 114
    .local v2, ex:Ljava/io/InterruptedIOException;
    #v2=(Reference,Ljava/io/InterruptedIOException;);
    goto :goto_1

    .line 116
    .end local v2           #ex:Ljava/io/InterruptedIOException;
    :catch_1
    #v2=(Uninit);v5=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/io/IOException;);
    move-object v1, v5

    .line 119
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    goto :goto_1
.end method
