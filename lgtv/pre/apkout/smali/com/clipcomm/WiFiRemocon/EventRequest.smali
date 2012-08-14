.class public Lcom/clipcomm/WiFiRemocon/EventRequest;
.super Ljava/lang/Object;
.source "EventRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/EventRequest;);
    return-void
.end method

.method public static requestAlive(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"

    .prologue
    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 11
    const-string v6, "<name>alive</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 12
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 15
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 19
    const/4 v4, 0x0

    .line 22
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 29
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 24
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 26
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestByebye(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"

    .prologue
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    const-string v6, "<name>byebye</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 74
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 77
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 81
    const/4 v4, 0x0

    .line 84
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 91
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 86
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 88
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestCallStateChanged(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strValue"

    .prologue
    .line 132
    if-nez p0, :cond_0

    const-string v0, ""

    .line 133
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestCallStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestCallStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strValue"

    .prologue
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 140
    const-string v6, "<name>CallStateChanged</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 141
    const-string v6, "<value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 142
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 145
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x0

    .line 152
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 159
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 154
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 156
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestCursorVisible(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strValue"

    .prologue
    .line 98
    if-nez p0, :cond_0

    const-string v0, ""

    .line 99
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestCursorVisible(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestCursorVisible(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strValue"

    .prologue
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    const-string v6, "<name>CursorVisible</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 107
    const-string v6, "<value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 111
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 115
    const/4 v4, 0x0

    .line 118
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 125
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 120
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 122
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestDragMode(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strValue"

    .prologue
    .line 200
    if-nez p0, :cond_0

    const-string v0, ""

    .line 201
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestDragMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestDragMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strValue"

    .prologue
    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 208
    const-string v6, "<name>DragMode</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 209
    const-string v6, "<value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 213
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 217
    const/4 v4, 0x0

    .line 220
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 227
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 222
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 224
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestTextEdited(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strValue"

    .prologue
    .line 166
    if-nez p0, :cond_0

    const-string v0, ""

    .line 167
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestTextEdited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestTextEdited(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strValue"

    .prologue
    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 174
    const-string v6, "<name>TextEdited</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    const-string v6, "<value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 176
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 179
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 183
    const/4 v4, 0x0

    .line 186
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 193
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 188
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 190
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestUpdate(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "info"
    .parameter "strOldIP"
    .parameter "strNewIP"

    .prologue
    .line 36
    if-nez p0, :cond_0

    const-string v0, ""

    .line 37
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1, p2}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "strOldIP"
    .parameter "strNewIP"

    .prologue
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?><event><session>"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</session>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 44
    const-string v6, "<name>update</name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    const-string v6, "<value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</value>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 46
    const-string v6, "<expire>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</expire>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 47
    const-string v6, "</event>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 50
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "event"

    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 54
    const/4 v4, 0x0

    .line 57
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 64
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 59
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 61
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
