.class public Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
.super Ljava/lang/Object;
.source "HTTPPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostRequest$req_type:[I


# instance fields
.field private m_httpPost:Lcom/clipcomm/WiFiRemocon/HTTPPost;

.field private m_strEntity:Ljava/lang/String;

.field private m_strTargetIP:Ljava/lang/String;

.field private m_strURI:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostRequest$req_type()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostRequest$req_type:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->values()[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->auth:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->command:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->event:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostRequest$req_type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_4

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPost;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPost;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPPost;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPost;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_httpPost:Lcom/clipcomm/WiFiRemocon/HTTPPost;

    .line 24
    return-void
.end method

.method public static parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strSource"
    .parameter "strElement"

    .prologue
    const/4 v6, -0x1

    .line 118
    #v6=(Byte);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "<"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, strBegin:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "</"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, strEnd:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, nFirst:I
    #v1=(Integer);
    if-ne v1, v6, :cond_0

    .line 124
    const-string v4, ""

    .line 134
    :goto_0
    #v0=(Conflicted);
    return-object v4

    .line 126
    :cond_0
    #v0=(Uninit);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    add-int/2addr v1, v4

    .line 128
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, nEnd:I
    #v0=(Integer);
    if-ne v0, v6, :cond_1

    .line 131
    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 134
    :cond_1
    #v4=(Integer);
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_httpPost:Lcom/clipcomm/WiFiRemocon/HTTPPost;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPost;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "http://"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strTargetIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":8080"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strURI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/HTTPPost;->setHost(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_httpPost:Lcom/clipcomm/WiFiRemocon/HTTPPost;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/HTTPPost;->setEntity(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_httpPost:Lcom/clipcomm/WiFiRemocon/HTTPPost;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPPost;->excute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "strEntity"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strEntity:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setRequestType(Ljava/lang/String;)V
    .locals 2
    .parameter "strType"

    .prologue
    .line 58
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostRequest$req_type()[I

    move-result-object v0

    #v0=(Reference,[I);
    invoke-static {p1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->toReqType(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 61
    :pswitch_0
    #v0=(Integer);
    const-string v0, "/hdcp/api/dtv_wifirc"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strURI:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_1
    #v0=(Integer);
    const-string v0, "/hdcp/api/event"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strURI:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_2
    #v0=(Integer);
    const-string v0, "/hdcp/api/auth"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strURI:Ljava/lang/String;

    goto :goto_0

    .line 58
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTargetIP(Ljava/lang/String;)V
    .locals 0
    .parameter "strTargetIP"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->m_strTargetIP:Ljava/lang/String;

    .line 82
    return-void
.end method
