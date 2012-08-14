.class public Lcom/clipcomm/WiFiRemocon/ClipmDNS;
.super Ljava/lang/Object;
.source "ClipmDNS.java"


# static fields
.field private static final SERVICE_TYPE:Ljava/lang/String; = "_lg_dtv_wifirc._tcp.local."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ClipmDNS;);
    return-void
.end method


# virtual methods
.method public execute(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "nTimeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/TVInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 36
    .local v5, jmdns:Ljavax/jmdns/JmDNS;
    #v5=(Reference,Ljavax/jmdns/JmDNS;);
    const-string v6, "_lg_dtv_wifirc._tcp.local."

    #v6=(Reference,Ljava/lang/String;);
    int-to-long v7, p1

    #v7=(LongLo);v8=(LongHi);
    invoke-virtual {v5, v6, v7, v8}, Ljavax/jmdns/JmDNS;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    .line 37
    .local v4, infos:[Ljavax/jmdns/ServiceInfo;
    #v4=(Reference,[Ljavax/jmdns/ServiceInfo;);
    invoke-virtual {v5}, Ljavax/jmdns/JmDNS;->close()V

    .line 39
    if-eqz v4, :cond_1

    array-length v6, v4

    #v6=(Integer);
    if-lez v6, :cond_1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v1=(Conflicted);v3=(Integer);v6=(Conflicted);v7=(Conflicted);
    array-length v6, v4

    #v6=(Integer);
    if-lt v3, v6, :cond_0

    move-object v6, v0

    .line 55
    .end local v0           #Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    .end local v3           #i:I
    .end local v4           #infos:[Ljavax/jmdns/ServiceInfo;
    .end local v5           #jmdns:Ljavax/jmdns/JmDNS;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference,Ljava/util/ArrayList;);v8=(Conflicted);
    return-object v6

    .line 30
    :catch_0
    move-exception v2

    .line 32
    .local v2, e1:Ljava/io/IOException;
    #v2=(Reference,Ljava/io/IOException;);
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    #v6=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #v6=(Reference,Ljava/util/ArrayList;);
    goto :goto_1

    .line 44
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v0       #Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    .restart local v3       #i:I
    .restart local v4       #infos:[Ljavax/jmdns/ServiceInfo;
    .restart local v5       #jmdns:Ljavax/jmdns/JmDNS;
    :cond_0
    #v0=(Reference,Ljava/util/ArrayList;);v1=(Conflicted);v2=(Uninit);v3=(Integer);v4=(Reference,[Ljavax/jmdns/ServiceInfo;);v5=(Reference,Ljavax/jmdns/JmDNS;);v6=(Integer);v7=(Conflicted);v8=(LongHi);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>()V

    .line 46
    .local v1, detail:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    aget-object v6, v4, v3

    #v6=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 47
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 48
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v6

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 49
    new-instance v6, Ljava/lang/String;

    #v6=(UninitRef,Ljava/lang/String;);
    aget-object v7, v4, v3

    #v7=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    #v6=(Reference,Ljava/lang/String;);
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v0           #Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    .end local v1           #detail:Lcom/clipcomm/WiFiRemocon/TVInfo;
    .end local v3           #i:I
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v6=(Conflicted);v7=(LongLo);
    new-instance v6, Ljava/util/ArrayList;

    #v6=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #v6=(Reference,Ljava/util/ArrayList;);
    goto :goto_1
.end method
