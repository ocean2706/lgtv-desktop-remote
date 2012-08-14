.class public Lcom/clipcomm/WiFiRemocon/commandRequest;
.super Ljava/lang/Object;
.source "commandRequest.java"


# static fields
.field private static final TIME_GAP:I = 0x32

.field protected static prev_key_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/clipcomm/WiFiRemocon/commandRequest;->prev_key_time:J

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/commandRequest;);
    return-void
.end method

.method public static requestHandleChannelChange(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "chInfo"

    .prologue
    .line 287
    if-nez p0, :cond_0

    const-string v0, ""

    .line 288
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestHandleChannelChange(Ljava/lang/String;Ljava/lang/String;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestHandleChannelChange(Ljava/lang/String;Ljava/lang/String;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "chInfo"

    .prologue
    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    const-string v6, "<type>HandleChannelChange</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 305
    const-string v6, "<major>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</major>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 306
    const-string v6, "<minor>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</minor>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 307
    const-string v6, "<sourceIndex>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</sourceIndex>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    const-string v6, "<physicalNum>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</physicalNum>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 309
    const-string v6, "</command>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 312
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "command"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 316
    const/4 v4, 0x0

    .line 319
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 326
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 321
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 323
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestKeyInput(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strValue"

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-string v0, ""

    .line 24
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestKeyInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static requestKeyInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strValue"

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    .local v0, cur_time:J
    #v0=(LongLo);v1=(LongHi);
    sget-wide v7, Lcom/clipcomm/WiFiRemocon/commandRequest;->prev_key_time:J

    #v7=(LongLo);v8=(LongHi);
    sub-long v7, v0, v7

    const-wide/16 v9, 0x32

    #v9=(LongLo);v10=(LongHi);
    cmp-long v7, v7, v9

    #v7=(Byte);
    if-gez v7, :cond_0

    .line 42
    const-string v7, "200"

    .line 70
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference,Ljava/lang/String;);v8=(Conflicted);
    return-object v7

    .line 44
    :cond_0
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Byte);v8=(LongHi);
    sput-wide v0, Lcom/clipcomm/WiFiRemocon/commandRequest;->prev_key_time:J

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v8, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    #v7=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</session>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 50
    const-string v8, "<type>HandleKeyInput</type>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 51
    const-string v8, "<value>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</value>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 52
    const-string v8, "</command>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 47
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, strEntity:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    new-instance v3, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 55
    .local v3, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v7, "command"

    invoke-virtual {v3, v7}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v3, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 59
    const/4 v6, 0x0

    .line 62
    .local v6, strResult:Ljava/lang/String;
    :try_start_0
    #v6=(Null);
    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 69
    :goto_1
    #v2=(Conflicted);v6=(Reference,Ljava/lang/String;);
    const-string v7, "HDCPError"

    invoke-static {v6, v7}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, strErrorCode:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    move-object v7, v5

    .line 70
    goto :goto_0

    .line 64
    .end local v5           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v2=(Uninit);v5=(Uninit);v6=(Null);
    move-exception v2

    .line 66
    .local v2, e:Ljava/net/URISyntaxException;
    #v2=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method public static requestSetFavoriteChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strMajor"
    .parameter "strMinor"

    .prologue
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 177
    const-string v6, "<type>SetFavoriteChannel</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    const-string v6, "<major>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</major>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    const-string v6, "<minor>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</minor>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    const-string v6, "</command>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 183
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "command"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 187
    const/4 v4, 0x0

    .line 190
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 197
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 192
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 194
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestSetLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strRegion"
    .parameter "strLanguage"

    .prologue
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 216
    const-string v6, "<type>locale</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    const-string v6, "<region>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</region>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 218
    const-string v6, "<language>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</language>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 219
    const-string v6, "</command>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 213
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 222
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "command"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 226
    const/4 v4, 0x0

    .line 229
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 236
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 231
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 233
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestSetServiceName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strServiceName"

    .prologue
    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    const-string v6, "<type>SetServiceName</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    const-string v6, "<serviceName>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</serviceName>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 256
    const-string v6, "</command>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 259
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "command"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x0

    .line 266
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 273
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 268
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 270
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestTouchClick(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strValue"

    .prologue
    .line 122
    if-nez p0, :cond_0

    const-string v0, ""

    .line 123
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestTouchClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static requestTouchClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strValue"

    .prologue
    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 139
    const-string v6, "<type>HandleTouchClick</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 140
    const-string v6, "<value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 141
    const-string v6, "</command>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 144
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "command"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 148
    const/4 v4, 0x0

    .line 151
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 158
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 153
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 155
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestTouchMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strX"
    .parameter "strY"

    .prologue
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><command><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 88
    const-string v6, "<type>HandleMouseMove</type>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    const-string v6, "<x>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</x>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 90
    const-string v6, "<y>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</y>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 91
    const-string v6, "</command>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 94
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "command"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x0

    .line 101
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 108
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 103
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 105
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
