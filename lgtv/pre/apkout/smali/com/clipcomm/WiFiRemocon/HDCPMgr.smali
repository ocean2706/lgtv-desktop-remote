.class public Lcom/clipcomm/WiFiRemocon/HDCPMgr;
.super Ljava/lang/Object;
.source "HDCPMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HDCPMgr;);
    return-void
.end method


# virtual methods
.method public FindTV(Ljava/util/ArrayList;Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;)V
    .locals 8
    .parameter
    .parameter "hDBAdapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/TVInfo;",
            ">;",
            "Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, tvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    new-instance v4, Lcom/clipcomm/WiFiRemocon/ClipmDNS;

    #v4=(UninitRef,Lcom/clipcomm/WiFiRemocon/ClipmDNS;);
    invoke-direct {v4}, Lcom/clipcomm/WiFiRemocon/ClipmDNS;-><init>()V

    .line 40
    .local v4, mDNS:Lcom/clipcomm/WiFiRemocon/ClipmDNS;
    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/ClipmDNS;);
    const/16 v6, 0x1f40

    #v6=(PosShort);
    invoke-virtual {v4, v6}, Lcom/clipcomm/WiFiRemocon/ClipmDNS;->execute(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 41
    .local v1, dnsResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    #v1=(Reference,Ljava/util/ArrayList;);
    if-nez v1, :cond_1

    .line 66
    .end local p0
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);
    return-void

    .line 43
    .restart local p0
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(PosShort);v7=(Uninit);
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    #v6=(Integer);
    if-ge v2, v6, :cond_0

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 46
    .local v5, strIP:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->CheckVersion(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 49
    new-instance v3, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>()V

    .line 50
    .local v3, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    iput-object v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    iput-object v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    iput-object v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 54
    if-eqz p2, :cond_2

    .line 56
    iget-object v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->getTVInfo(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v0

    .line 57
    .local v0, dbResInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    if-eqz v0, :cond_2

    .line 59
    iget-object v6, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    iput-object v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 60
    iget-wide v6, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    #v6=(LongLo);v7=(LongHi);
    iput-wide v6, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 63
    .end local v0           #dbResInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :cond_2
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v3           #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :cond_3
    #v3=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public FindTVIPAddrFromMACAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strMac"

    .prologue
    .line 17
    new-instance v2, Lcom/clipcomm/WiFiRemocon/ClipmDNS;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/ClipmDNS;);
    invoke-direct {v2}, Lcom/clipcomm/WiFiRemocon/ClipmDNS;-><init>()V

    .line 18
    .local v2, mDNS:Lcom/clipcomm/WiFiRemocon/ClipmDNS;
    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/ClipmDNS;);
    const/16 v3, 0xfa0

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/ClipmDNS;->execute(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 19
    .local v0, dnsResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    #v1=(Integer);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-lt v1, v3, :cond_0

    .line 26
    const/4 v3, 0x0

    :goto_1
    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 21
    :cond_0
    #v3=(Integer);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    goto :goto_1

    .line 19
    :cond_1
    #v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
