.class public Lcom/clipcomm/WiFiRemocon/HTTPGet;
.super Ljava/lang/Object;
.source "HTTPGet.java"


# instance fields
.field private m_httpClient:Lorg/apache/http/client/HttpClient;

.field private m_httpMethod:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    #v1=(UninitRef,Lorg/apache/http/client/methods/HttpGet;);
    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    #v1=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPGet;->m_httpMethod:Lorg/apache/http/client/methods/HttpGet;

    .line 35
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #v0=(UninitRef,Lorg/apache/http/params/BasicHttpParams;);
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 37
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    #v0=(Reference,Lorg/apache/http/params/BasicHttpParams;);
    const/16 v1, 0xbb8

    #v1=(PosShort);
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 40
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    #v1=(UninitRef,Lorg/apache/http/impl/client/DefaultHttpClient;);
    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    #v1=(Reference,Lorg/apache/http/impl/client/DefaultHttpClient;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPGet;->m_httpClient:Lorg/apache/http/client/HttpClient;

    .line 43
    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 9

    .prologue
    .line 75
    const/4 v4, 0x0

    .line 78
    .local v4, res:Lorg/apache/http/HttpResponse;
    :try_start_0
    #v4=(Null);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/HTTPGet;->m_httpClient:Lorg/apache/http/client/HttpClient;

    #v7=(Reference,Lorg/apache/http/client/HttpClient;);
    iget-object v8, p0, Lcom/clipcomm/WiFiRemocon/HTTPGet;->m_httpMethod:Lorg/apache/http/client/methods/HttpGet;

    #v8=(Reference,Lorg/apache/http/client/methods/HttpGet;);
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 79
    #v4=(Reference,Lorg/apache/http/HttpResponse;);
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 81
    .local v5, status:Lorg/apache/http/StatusLine;
    #v5=(Reference,Lorg/apache/http/StatusLine;);
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    #v7=(Integer);
    const/16 v8, 0xc8

    #v8=(PosShort);
    if-eq v7, v8, :cond_0

    .line 83
    const-string v7, ""

    .line 130
    .end local v5           #status:Lorg/apache/http/StatusLine;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference,Ljava/lang/String;);v8=(Conflicted);
    return-object v7

    .line 86
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Lorg/apache/http/client/ClientProtocolException;);
    move-object v1, v7

    .line 88
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    #v1=(Reference,Lorg/apache/http/client/ClientProtocolException;);
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 99
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    #v1=(Conflicted);v7=(Conflicted);
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 100
    .local v2, entity:Lorg/apache/http/HttpEntity;
    #v2=(Reference,Lorg/apache/http/HttpEntity;);
    if-eqz v2, :cond_1

    .line 102
    const/4 v3, 0x0

    .line 105
    .local v3, instream:Ljava/io/InputStream;
    :try_start_1
    #v3=(Null);
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 116
    :goto_1
    #v3=(Reference,Ljava/io/InputStream;);
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    long-to-int v7, v7

    #v7=(Integer);
    new-array v6, v7, [B

    .line 119
    .local v6, tmp:[B
    :try_start_2
    #v6=(Reference,[B);
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 126
    :goto_2
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .local v0, contents:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    move-object v7, v0

    .line 128
    #v7=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 90
    .end local v0           #contents:Ljava/lang/String;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #instream:Ljava/io/InputStream;
    .end local v6           #tmp:[B
    :catch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);v7=(Conflicted);v8=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/io/IOException;);
    move-object v1, v7

    .line 92
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    const-string v7, ""

    goto :goto_0

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #instream:Ljava/io/InputStream;
    :catch_2
    #v1=(Conflicted);v2=(Reference,Lorg/apache/http/HttpEntity;);v3=(Null);v7=(Conflicted);
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/IllegalStateException;
    #v1=(Reference,Ljava/lang/IllegalStateException;);
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    #v1=(Conflicted);
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tmp:[B
    :catch_4
    #v1=(Conflicted);v3=(Reference,Ljava/io/InputStream;);v6=(Reference,[B);v7=(Integer);v8=(LongHi);
    move-exception v1

    .line 123
    .restart local v1       #e:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 130
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #instream:Ljava/io/InputStream;
    .end local v6           #tmp:[B
    :cond_1
    #v1=(Conflicted);v3=(Uninit);v6=(Uninit);v7=(Conflicted);v8=(Conflicted);
    const-string v7, ""

    #v7=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "strTargetIP"
    .parameter "strURI"

    .prologue
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "http://"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":8080"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, strURL:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    .line 58
    .local v2, uri:Ljava/net/URI;
    :try_start_0
    #v2=(Null);
    new-instance v3, Ljava/net/URI;

    #v3=(UninitRef,Ljava/net/URI;);
    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #uri:Ljava/net/URI;
    .local v3, uri:Ljava/net/URI;
    #v3=(Reference,Ljava/net/URI;);
    move-object v2, v3

    .line 65
    .end local v3           #uri:Ljava/net/URI;
    .restart local v2       #uri:Ljava/net/URI;
    :goto_0
    #v0=(Conflicted);v2=(Reference,Ljava/net/URI;);v3=(Conflicted);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/HTTPGet;->m_httpMethod:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 66
    return-void

    .line 60
    :catch_0
    #v0=(Uninit);v2=(Null);
    move-exception v4

    move-object v0, v4

    .line 62
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference,Ljava/net/URISyntaxException;);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
