.class public Lcom/clipcomm/WiFiRemocon/UDPRequest;
.super Ljava/lang/Object;
.source "UDPRequest.java"


# static fields
.field private static final TIME_GAP:I = 0xfa

.field protected static prev_click_time:J


# instance fields
.field m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

.field m_strSession:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->prev_click_time:J

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    return-void
.end method


# virtual methods
.method public HandleChannelChange(II)Z
    .locals 6
    .parameter "nMajor"
    .parameter "nMinor"

    .prologue
    const/16 v5, 0x8

    #v5=(PosByte);
    const/4 v4, 0x4

    .line 202
    #v4=(PosByte);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 220
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 204
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);v3=(Uninit);
    new-array v0, v5, [B

    .line 206
    .local v0, buf:[B
    #v0=(Reference,[B);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v2=(Conflicted);
    if-lt v1, v4, :cond_1

    .line 212
    const/4 v1, 0x0

    :goto_2
    #v3=(Conflicted);
    if-lt v1, v4, :cond_2

    .line 218
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->makePacket(Ljava/lang/String;II[B)Z

    .line 220
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->sendData()Z

    move-result v2

    #v2=(Boolean);
    goto :goto_0

    .line 209
    :cond_1
    #v2=(Conflicted);v3=(Uninit);
    mul-int/lit8 v2, v1, 0x8

    #v2=(Integer);
    ushr-int v2, p1, v2

    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    add-int/lit8 v2, v1, 0x4

    #v2=(Integer);
    mul-int/lit8 v3, v1, 0x8

    #v3=(Integer);
    ushr-int v3, p2, v3

    int-to-byte v3, v3

    #v3=(Byte);
    aput-byte v3, v0, v2

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public HandleTextInput(Ljava/lang/String;)Z
    .locals 6
    .parameter "strText"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v0

    .line 92
    :cond_1
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 93
    .local v5, content:[B
    #v5=(Reference,[B);
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 95
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    const/16 v2, 0x9

    #v2=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    array-length v4, v5

    #v4=(Integer);
    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->makePacket(Ljava/lang/String;III[B)Z

    .line 96
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->sendData()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public HandleTouchClick(I)Z
    .locals 10
    .parameter "nValue"

    .prologue
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v8, 0x4

    .line 137
    #v8=(PosByte);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-nez v4, :cond_0

    move v4, v9

    .line 160
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return v4

    .line 140
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 142
    .local v1, cur_time:J
    #v1=(LongLo);v2=(LongHi);
    sget-wide v4, Lcom/clipcomm/WiFiRemocon/UDPRequest;->prev_click_time:J

    #v4=(LongLo);v5=(LongHi);
    sub-long v4, v1, v4

    const-wide/16 v6, 0xfa

    #v6=(LongLo);v7=(LongHi);
    cmp-long v4, v4, v6

    #v4=(Byte);
    if-gez v4, :cond_1

    move v4, v9

    .line 143
    #v4=(Null);
    goto :goto_0

    .line 147
    :cond_1
    #v4=(Byte);
    sput-wide v1, Lcom/clipcomm/WiFiRemocon/UDPRequest;->prev_click_time:J

    .line 150
    new-array v0, v8, [B

    .line 152
    .local v0, buf:[B
    #v0=(Reference,[B);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    #v3=(Integer);
    if-lt v3, v8, :cond_2

    .line 158
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x3

    #v6=(PosByte);
    invoke-virtual {v4, v5, v6, v8, v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->makePacket(Ljava/lang/String;II[B)Z

    .line 160
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->sendData()Z

    move-result v4

    #v4=(Boolean);
    goto :goto_0

    .line 155
    :cond_2
    #v4=(Byte);v5=(LongHi);v6=(LongLo);
    mul-int/lit8 v4, v3, 0x8

    #v4=(Integer);
    ushr-int v4, p1, v4

    int-to-byte v4, v4

    #v4=(Byte);
    aput-byte v4, v0, v3

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public HandleTouchMove(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0x8

    #v5=(PosByte);
    const/4 v4, 0x4

    .line 108
    #v4=(PosByte);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 126
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 110
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);v3=(Uninit);
    new-array v0, v5, [B

    .line 112
    .local v0, buf:[B
    #v0=(Reference,[B);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v2=(Conflicted);
    if-lt v1, v4, :cond_1

    .line 118
    const/4 v1, 0x0

    :goto_2
    #v3=(Conflicted);
    if-lt v1, v4, :cond_2

    .line 124
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->makePacket(Ljava/lang/String;II[B)Z

    .line 126
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->sendData()Z

    move-result v2

    #v2=(Boolean);
    goto :goto_0

    .line 115
    :cond_1
    #v2=(Conflicted);v3=(Uninit);
    mul-int/lit8 v2, v1, 0x8

    #v2=(Integer);
    ushr-int v2, p1, v2

    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    add-int/lit8 v2, v1, 0x4

    #v2=(Integer);
    mul-int/lit8 v3, v1, 0x8

    #v3=(Integer);
    ushr-int v3, p2, v3

    int-to-byte v3, v3

    #v3=(Byte);
    aput-byte v3, v0, v2

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public HandlekeyInput(I)Z
    .locals 6
    .parameter "nValue"

    .prologue
    const/4 v5, 0x4

    .line 67
    #v5=(PosByte);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 80
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 70
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);v3=(Uninit);v4=(Uninit);
    new-array v0, v5, [B

    .line 72
    .local v0, buf:[B
    #v0=(Reference,[B);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v2=(Conflicted);
    if-lt v1, v5, :cond_1

    .line 78
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->makePacket(Ljava/lang/String;II[B)Z

    .line 80
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->sendData()Z

    move-result v2

    #v2=(Boolean);
    goto :goto_0

    .line 75
    :cond_1
    #v2=(Conflicted);v3=(Uninit);v4=(Uninit);
    mul-int/lit8 v2, v1, 0x8

    #v2=(Integer);
    ushr-int v2, p1, v2

    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public SetFavoriteChannel(II)Z
    .locals 6
    .parameter "nMajor"
    .parameter "nMinor"

    .prologue
    const/16 v5, 0x8

    #v5=(PosByte);
    const/4 v4, 0x4

    .line 172
    #v4=(PosByte);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 190
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 174
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);v3=(Uninit);
    new-array v0, v5, [B

    .line 176
    .local v0, buf:[B
    #v0=(Reference,[B);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v2=(Conflicted);
    if-lt v1, v4, :cond_1

    .line 182
    const/4 v1, 0x0

    :goto_2
    #v3=(Conflicted);
    if-lt v1, v4, :cond_2

    .line 188
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->makePacket(Ljava/lang/String;II[B)Z

    .line 190
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->sendData()Z

    move-result v2

    #v2=(Boolean);
    goto :goto_0

    .line 179
    :cond_1
    #v2=(Conflicted);v3=(Uninit);
    mul-int/lit8 v2, v1, 0x8

    #v2=(Integer);
    ushr-int v2, p1, v2

    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    add-int/lit8 v2, v1, 0x4

    #v2=(Integer);
    mul-int/lit8 v3, v1, 0x8

    #v3=(Integer);
    ushr-int v3, p2, v3

    int-to-byte v3, v3

    #v3=(Byte);
    aput-byte v3, v0, v2

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->close()V

    .line 55
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    .line 57
    :cond_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    return-void
.end method

.method public create(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 26
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 27
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const/16 v1, 0x1b9e

    #v1=(PosShort);
    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->create(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public create(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "strIP"
    .parameter "nPort"
    .parameter "strSession"

    .prologue
    .line 40
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_strSession:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/UDPSocket;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->prev_click_time:J

    .line 44
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPRequest;->m_socket:Lcom/clipcomm/WiFiRemocon/UDPSocket;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPSocket;);
    invoke-virtual {v0, p1, p2}, Lcom/clipcomm/WiFiRemocon/UDPSocket;->create(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
