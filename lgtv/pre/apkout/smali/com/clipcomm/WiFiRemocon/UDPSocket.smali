.class public Lcom/clipcomm/WiFiRemocon/UDPSocket;
.super Ljava/lang/Object;
.source "UDPSocket.java"


# instance fields
.field private m_buf:[B

.field private m_inetIP:Ljava/net/InetAddress;

.field private m_nPort:I

.field private m_socket:Ljava/net/DatagramSocket;

.field private m_strIP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    return-void
.end method

.method private loadCRC32()Z
    .locals 7

    .prologue
    .line 178
    new-instance v0, Ljava/util/zip/CRC32;

    #v0=(UninitRef,Ljava/util/zip/CRC32;);
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 180
    .local v0, crc:Ljava/util/zip/Checksum;
    #v0=(Reference,Ljava/util/zip/CRC32;);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v4=(Reference,[B);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v6=(Reference,[B);
    array-length v6, v6

    #v6=(Integer);
    invoke-interface {v0, v4, v5, v6}, Ljava/util/zip/Checksum;->update([BII)V

    .line 181
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    .line 183
    .local v2, lCRC:J
    #v2=(LongLo);v3=(LongHi);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v5=(Byte);v6=(Conflicted);
    const/4 v4, 0x4

    #v4=(PosByte);
    if-lt v1, v4, :cond_0

    .line 188
    const/4 v4, 0x1

    #v4=(One);
    return v4

    .line 186
    :cond_0
    #v4=(PosByte);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v4=(Reference,[B);
    mul-int/lit8 v5, v1, 0x8

    #v5=(Integer);
    ushr-long v5, v2, v5

    #v5=(LongLo);v6=(LongHi);
    long-to-int v5, v5

    #v5=(Integer);
    int-to-byte v5, v5

    #v5=(Byte);
    aput-byte v5, v4, v1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_inetIP:Ljava/net/InetAddress;

    .line 40
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_socket:Ljava/net/DatagramSocket;

    .line 41
    return-void
.end method

.method public create(Ljava/lang/String;I)Z
    .locals 3
    .parameter "strIP"
    .parameter "nPort"

    .prologue
    const/4 v2, 0x0

    .line 52
    #v2=(Null);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->close()V

    .line 53
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_strIP:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_nPort:I

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_strIP:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_inetIP:Ljava/net/InetAddress;

    .line 58
    new-instance v1, Ljava/net/DatagramSocket;

    #v1=(UninitRef,Ljava/net/DatagramSocket;);
    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    #v1=(Reference,Ljava/net/DatagramSocket;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    const/4 v1, 0x1

    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 60
    :catch_0
    #v0=(Uninit);v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/net/UnknownHostException;);
    move-object v0, v1

    .line 62
    .local v0, e:Ljava/net/UnknownHostException;
    #v0=(Reference,Ljava/net/UnknownHostException;);
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    move v1, v2

    .line 63
    #v1=(Null);
    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    #v0=(Uninit);v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/net/SocketException;);
    move-object v0, v1

    .line 67
    .local v0, e:Ljava/net/SocketException;
    #v0=(Reference,Ljava/net/SocketException;);
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    move v1, v2

    .line 68
    #v1=(Null);
    goto :goto_0
.end method

.method public makePacket(Ljava/lang/String;III[B)Z
    .locals 10
    .parameter "strSession"
    .parameter "nType"
    .parameter "nState"
    .parameter "nDataLength"
    .parameter "arData"

    .prologue
    const/4 v9, 0x4

    .line 132
    #v9=(PosByte);
    add-int/lit8 v5, p4, 0x12

    #v5=(Integer);
    new-array v5, v5, [B

    #v5=(Reference,[B);
    iput-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    .line 135
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 136
    .local v3, lSession:J
    #v3=(LongLo);v4=(LongHi);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-lt v0, v9, :cond_0

    .line 142
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x2

    #v5=(PosByte);
    if-lt v0, v5, :cond_1

    .line 148
    add-int/lit8 v5, p4, 0x4

    #v5=(Integer);
    int-to-long v1, v5

    .line 149
    .local v1, lDataLength:J
    #v1=(LongLo);v2=(LongHi);
    const/4 v0, 0x0

    :goto_2
    #v5=(Conflicted);
    if-lt v0, v9, :cond_2

    .line 155
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v9, :cond_3

    .line 161
    const/4 v0, 0x0

    :goto_4
    array-length v5, p5

    #v5=(Integer);
    if-lt v0, v5, :cond_4

    .line 166
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->loadCRC32()Z

    .line 168
    const/4 v5, 0x1

    #v5=(One);
    return v5

    .line 138
    .end local v1           #lDataLength:J
    :cond_0
    #v1=(Uninit);v2=(Uninit);v5=(Reference,[B);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    add-int/lit8 v6, v0, 0x4

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-long v7, v3, v7

    #v7=(LongLo);v8=(LongHi);
    long-to-int v7, v7

    #v7=(Integer);
    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    #v5=(PosByte);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0x8

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-int v7, p2, v7

    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .restart local v1       #lDataLength:J
    :cond_2
    #v1=(LongLo);v2=(LongHi);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0xa

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-long v7, v1, v7

    #v7=(LongLo);v8=(LongHi);
    long-to-int v7, v7

    #v7=(Integer);
    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_3
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0xe

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-int v7, p3, v7

    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 163
    :cond_4
    #v5=(Integer);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0x12

    #v6=(Integer);
    aget-byte v7, p5, v0

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public makePacket(Ljava/lang/String;II[B)Z
    .locals 10
    .parameter "strSession"
    .parameter "nType"
    .parameter "nDataLength"
    .parameter "arData"

    .prologue
    const/4 v9, 0x4

    .line 84
    #v9=(PosByte);
    add-int/lit8 v5, p3, 0xe

    #v5=(Integer);
    new-array v5, v5, [B

    #v5=(Reference,[B);
    iput-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    .line 87
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 88
    .local v3, lSession:J
    #v3=(LongLo);v4=(LongHi);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-lt v0, v9, :cond_0

    .line 95
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x2

    #v5=(PosByte);
    if-lt v0, v5, :cond_1

    .line 102
    int-to-long v1, p3

    .line 103
    .local v1, lDataLength:J
    #v1=(LongLo);v2=(LongHi);
    const/4 v0, 0x0

    :goto_2
    #v5=(Conflicted);
    if-lt v0, v9, :cond_2

    .line 110
    const/4 v0, 0x0

    :goto_3
    array-length v5, p4

    #v5=(Integer);
    if-lt v0, v5, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->loadCRC32()Z

    .line 117
    const/4 v5, 0x1

    #v5=(One);
    return v5

    .line 91
    .end local v1           #lDataLength:J
    :cond_0
    #v1=(Uninit);v2=(Uninit);v5=(Reference,[B);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    add-int/lit8 v6, v0, 0x4

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-long v7, v3, v7

    #v7=(LongLo);v8=(LongHi);
    long-to-int v7, v7

    #v7=(Integer);
    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    #v5=(PosByte);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0x8

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-int v7, p2, v7

    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .restart local v1       #lDataLength:J
    :cond_2
    #v1=(LongLo);v2=(LongHi);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0xa

    #v6=(Integer);
    mul-int/lit8 v7, v0, 0x8

    #v7=(Integer);
    ushr-long v7, v1, v7

    #v7=(LongLo);v8=(LongHi);
    long-to-int v7, v7

    #v7=(Integer);
    int-to-byte v7, v7

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_3
    #v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v5=(Reference,[B);
    add-int/lit8 v6, v0, 0xe

    #v6=(Integer);
    aget-byte v7, p4, v0

    #v7=(Byte);
    aput-byte v7, v5, v6

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public sendData()Z
    .locals 6

    .prologue
    .line 200
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    #v1=(UninitRef,Ljava/net/DatagramPacket;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v2=(Reference,[B);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_buf:[B

    #v3=(Reference,[B);
    array-length v3, v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_inetIP:Ljava/net/InetAddress;

    #v4=(Reference,Ljava/net/InetAddress;);
    iget v5, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_nPort:I

    #v5=(Integer);
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 201
    .local v1, packet:Ljava/net/DatagramPacket;
    #v1=(Reference,Ljava/net/DatagramPacket;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPSocket;->m_socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v2, 0x1

    .end local v1           #packet:Ljava/net/DatagramPacket;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 203
    :catch_0
    move-exception v2

    #v2=(Reference,Ljava/io/IOException;);
    move-object v0, v2

    .line 205
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method
