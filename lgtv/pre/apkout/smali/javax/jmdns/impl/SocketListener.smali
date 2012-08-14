.class Ljavax/jmdns/impl/SocketListener;
.super Ljava/lang/Object;
.source "SocketListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Ljavax/jmdns/impl/SocketListener;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    .line 17
    return-void
.end method

.method constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .parameter "jmDNSImpl"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    #p0=(Reference,Ljavax/jmdns/impl/SocketListener;);
    iput-object p1, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 33
    return-void
.end method


# virtual methods
.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "SocketListener("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 39
    const/16 v4, 0x230c

    :try_start_0
    #v4=(PosShort);
    new-array v0, v4, [B

    .line 40
    .local v0, buf:[B
    #v0=(Reference,[B);
    new-instance v3, Ljava/net/DatagramPacket;

    #v3=(UninitRef,Ljava/net/DatagramPacket;);
    array-length v4, v0

    #v4=(Integer);
    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 41
    .local v3, packet:Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference,Ljava/net/DatagramPacket;);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 102
    .end local v0           #buf:[B
    .end local v3           #packet:Ljava/net/DatagramPacket;
    :cond_1
    :goto_1
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    monitor-enter v4

    .line 104
    :try_start_1
    iget-object v5, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v5=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    return-void

    .line 43
    .restart local v0       #buf:[B
    .restart local v3       #packet:Ljava/net/DatagramPacket;
    :cond_2
    :try_start_2
    #v0=(Reference,[B);v3=(Reference,Ljava/net/DatagramPacket;);v4=(Boolean);v5=(Conflicted);
    array-length v4, v0

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 44
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getSocket()Ljava/net/MulticastSocket;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 45
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 51
    :try_start_3
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/jmdns/impl/HostInfo;->shouldIgnorePacket(Ljava/net/DatagramPacket;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 56
    new-instance v2, Ljavax/jmdns/impl/DNSIncoming;

    #v2=(UninitRef,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-direct {v2, v3}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 57
    .local v2, msg:Ljavax/jmdns/impl/DNSIncoming;
    #v2=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #v5=(Reference,Ljava/util/logging/Level;);
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 59
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, ".run() JmDNS in:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v2, v6}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 61
    :cond_3
    #v4=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 64
    :try_start_4
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    .line 66
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    #v4=(Integer);
    sget v5, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    #v5=(Integer);
    if-eq v4, v5, :cond_4

    .line 68
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    #v5=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v4, v2, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V

    .line 70
    :cond_4
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    iget-object v5, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v5=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->getGroup()Ljava/net/InetAddress;

    move-result-object v5

    sget v6, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    #v6=(Integer);
    invoke-virtual {v4, v2, v5, v6}, Ljavax/jmdns/impl/JmDNSImpl;->handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :goto_2
    :try_start_5
    #v6=(Conflicted);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 82
    .end local v2           #msg:Ljavax/jmdns/impl/DNSIncoming;
    :catch_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/io/IOException;);
    move-object v1, v4

    .line 84
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    #v1=(Reference,Ljava/io/IOException;);
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v5=(Reference,Ljava/util/logging/Level;);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".run() exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 88
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #packet:Ljava/net/DatagramPacket;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/io/IOException;);
    move-object v1, v4

    .line 90
    .restart local v1       #e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 92
    sget-object v4, Ljavax/jmdns/impl/SocketListener;->logger:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v5=(Reference,Ljava/util/logging/Level;);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/SocketListener;->getName()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".run() exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    goto/16 :goto_1

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v2       #msg:Ljavax/jmdns/impl/DNSIncoming;
    .restart local v3       #packet:Ljava/net/DatagramPacket;
    :cond_5
    :try_start_7
    #v0=(Reference,[B);v1=(Conflicted);v2=(Reference,Ljavax/jmdns/impl/DNSIncoming;);v3=(Reference,Ljava/net/DatagramPacket;);v4=(Boolean);v6=(Conflicted);v7=(Conflicted);
    iget-object v4, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v4, v2}, Ljavax/jmdns/impl/JmDNSImpl;->handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 78
    :catchall_0
    #v4=(Conflicted);v5=(Conflicted);
    move-exception v4

    .line 79
    :try_start_8
    #v4=(Reference,Ljava/lang/Throwable;);
    iget-object v5, p0, Ljavax/jmdns/impl/SocketListener;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v5=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 80
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 102
    .end local v0           #buf:[B
    .end local v2           #msg:Ljavax/jmdns/impl/DNSIncoming;
    .end local v3           #packet:Ljava/net/DatagramPacket;
    :catchall_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    move-exception v5

    :try_start_9
    #v5=(Reference,Ljava/lang/Throwable;);
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v5
.end method
