.class public Lcom/clipcomm/WiFiRemocon/AuthRequest;
.super Ljava/lang/Object;
.source "AuthRequest.java"


# static fields
.field private static m_strSession:Ljava/lang/String;

.field private static m_strTimeout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    #v0=(Null);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/AuthRequest;->m_strSession:Ljava/lang/String;

    .line 112
    sput-object v0, Lcom/clipcomm/WiFiRemocon/AuthRequest;->m_strTimeout:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/AuthRequest;);
    return-void
.end method

.method public static cancelRequestAuthKey(Lcom/clipcomm/WiFiRemocon/TVInfo;)Ljava/lang/String;
    .locals 1
    .parameter "TargetTVInfo"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->cancelRequestAuthKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cancelRequestAuthKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strTargetIP"

    .prologue
    .line 81
    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>CancelAuthKeyReq</type></auth>"

    .line 86
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 87
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "auth"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    .line 94
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 102
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 96
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 99
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/clipcomm/WiFiRemocon/AuthRequest;->m_strSession:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public static getTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/clipcomm/WiFiRemocon/AuthRequest;->m_strTimeout:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public static requestAuthKey(Lcom/clipcomm/WiFiRemocon/TVInfo;)Ljava/lang/String;
    .locals 1
    .parameter "destTVInfo"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->requestAuthKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestAuthKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "strTargetIP"

    .prologue
    .line 31
    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthKeyReq</type></auth>"

    .line 36
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 37
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v5, "auth"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x0

    .line 44
    .local v4, strResult:Ljava/lang/String;
    :try_start_0
    #v4=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 52
    :goto_0
    #v0=(Conflicted);v4=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v4, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 46
    .end local v3           #strErrorCode:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);
    move-exception v0

    .line 49
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestAuthSession(Lcom/clipcomm/WiFiRemocon/TVInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->requestAuthSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestAuthSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "strTargetIP"
    .parameter "strAuthKey"

    .prologue
    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\"?><auth><type>AuthReq</type><value>"

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    #v6=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</value>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 158
    const-string v7, "</auth>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, strEntity:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;-><init>()V

    .line 161
    .local v1, request:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    const-string v6, "auth"

    invoke-virtual {v1, v6}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setRequestType(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setTargetIP(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->setEntity(Ljava/lang/String;)V

    .line 165
    const/4 v5, 0x0

    .line 168
    .local v5, strResult:Ljava/lang/String;
    :try_start_0
    #v5=(Null);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->execute()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 177
    :goto_0
    #v0=(Conflicted);v5=(Reference,Ljava/lang/String;);
    const-string v6, "HDCPError"

    invoke-static {v5, v6}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, strErrorCode:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-string v6, "HDCPErrorDetail"

    invoke-static {v5, v6}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, strErrorDetail:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    const-string v6, "session"

    invoke-static {v5, v6}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/clipcomm/WiFiRemocon/AuthRequest;->m_strSession:Ljava/lang/String;

    .line 180
    const-string v6, "timeout"

    invoke-static {v5, v6}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/clipcomm/WiFiRemocon/AuthRequest;->m_strTimeout:Ljava/lang/String;

    .line 187
    return-object v3

    .line 171
    .end local v3           #strErrorCode:Ljava/lang/String;
    .end local v4           #strErrorDetail:Ljava/lang/String;
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);
    move-exception v0

    .line 174
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
