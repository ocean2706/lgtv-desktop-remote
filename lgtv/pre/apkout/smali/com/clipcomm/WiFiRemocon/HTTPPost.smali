.class public Lcom/clipcomm/WiFiRemocon/HTTPPost;
.super Ljava/lang/Object;
.source "HTTPPost.java"


# instance fields
.field private m_httpClient:Lorg/apache/http/client/HttpClient;

.field private m_httpMethod:Lorg/apache/http/client/methods/HttpPost;

.field private m_strHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPost;);
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    #v1=(UninitRef,Lorg/apache/http/client/methods/HttpPost;);
    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    #v1=(Reference,Lorg/apache/http/client/methods/HttpPost;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpMethod:Lorg/apache/http/client/methods/HttpPost;

    .line 37
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #v0=(UninitRef,Lorg/apache/http/params/BasicHttpParams;);
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 39
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    #v0=(Reference,Lorg/apache/http/params/BasicHttpParams;);
    const/16 v1, 0xbb8

    #v1=(PosShort);
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    #v1=(UninitRef,Lorg/apache/http/impl/client/DefaultHttpClient;);
    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    #v1=(Reference,Lorg/apache/http/impl/client/DefaultHttpClient;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpClient:Lorg/apache/http/client/HttpClient;

    .line 45
    return-void
.end method


# virtual methods
.method public excute()Ljava/lang/String;
    .locals 9

    .prologue
    .line 83
    const/4 v4, 0x0

    .line 86
    .local v4, res:Lorg/apache/http/HttpResponse;
    :try_start_0
    #v4=(Null);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpClient:Lorg/apache/http/client/HttpClient;

    #v7=(Reference,Lorg/apache/http/client/HttpClient;);
    iget-object v8, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpMethod:Lorg/apache/http/client/methods/HttpPost;

    #v8=(Reference,Lorg/apache/http/client/methods/HttpPost;);
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 87
    #v4=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 89
    .local v5, status:Lorg/apache/http/StatusLine;
    #v5=(Reference,Lorg/apache/http/StatusLine;);
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    #v7=(Integer);
    const/16 v8, 0xc8

    #v8=(PosShort);
    if-eq v7, v8, :cond_0

    .line 91
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    const-string v8, "Unauthorized"
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #v8=(Reference,Ljava/lang/String;);
    if-ne v7, v8, :cond_0

    .line 93
    const-string v7, "<envelope><HDCPError>401</HDCPError><HDCPErrorDetail>Unauthorized</HDCPErrorDetail></envelope>"

    .line 142
    .end local v5           #status:Lorg/apache/http/StatusLine;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    return-object v7

    .line 97
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Lorg/apache/http/client/ClientProtocolException;);
    move-object v1, v7

    .line 100
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    #v1=(Reference,Lorg/apache/http/client/ClientProtocolException;);
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 101
    const-string v7, ""

    goto :goto_0

    .line 103
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    #v1=(Uninit);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    move-object v1, v7

    .line 105
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string v7, ""

    goto :goto_0

    .line 110
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #status:Lorg/apache/http/StatusLine;
    :cond_0
    #v1=(Uninit);v5=(Reference,Lorg/apache/http/StatusLine;);v7=(Conflicted);
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 111
    .local v2, entity:Lorg/apache/http/HttpEntity;
    #v2=(Reference,Lorg/apache/http/HttpEntity;);
    if-eqz v2, :cond_1

    .line 113
    const/4 v3, 0x0

    .line 116
    .local v3, instream:Ljava/io/InputStream;
    :try_start_1
    #v3=(Null);
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 127
    :goto_1
    #v1=(Conflicted);v3=(Reference,Ljava/io/InputStream;);
    const/16 v7, 0x4e20

    #v7=(PosShort);
    new-array v6, v7, [B

    .line 130
    .local v6, tmp:[B
    :try_start_2
    #v6=(Reference,[B);
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 137
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .local v0, contents:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    move-object v7, v0

    .line 139
    #v7=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 118
    .end local v0           #contents:Ljava/lang/String;
    .end local v6           #tmp:[B
    :catch_2
    #v0=(Uninit);v1=(Uninit);v3=(Null);v6=(Uninit);v7=(Conflicted);
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/IllegalStateException;
    #v1=(Reference,Ljava/lang/IllegalStateException;);
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    #v1=(Uninit);
    move-exception v1

    .line 124
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tmp:[B
    :catch_4
    #v1=(Conflicted);v3=(Reference,Ljava/io/InputStream;);v6=(Reference,[B);v7=(PosShort);
    move-exception v1

    .line 134
    .restart local v1       #e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    const-string v7, ""

    #v7=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 142
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #instream:Ljava/io/InputStream;
    .end local v6           #tmp:[B
    :cond_1
    #v1=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Conflicted);
    const-string v7, ""

    #v7=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 3
    .parameter "strEntity"

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 71
    .local v1, postBodyByte:[B
    #v1=(Reference,[B);
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    #v0=(UninitRef,Lorg/apache/http/entity/ByteArrayEntity;);
    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 73
    .local v0, httpBody:Lorg/apache/http/HttpEntity;
    #v0=(Reference,Lorg/apache/http/entity/ByteArrayEntity;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpMethod:Lorg/apache/http/client/methods/HttpPost;

    #v2=(Reference,Lorg/apache/http/client/methods/HttpPost;);
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 74
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .parameter "strHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_strHost:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpMethod:Lorg/apache/http/client/methods/HttpPost;

    #v0=(Reference,Lorg/apache/http/client/methods/HttpPost;);
    new-instance v1, Ljava/net/URI;

    #v1=(UninitRef,Ljava/net/URI;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_strHost:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/net/URI;);
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 57
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPost;->m_httpMethod:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-Type"

    const-string v2, "application/atom+xml"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
