.class public Ljavax/jmdns/impl/DNSRecord$Pointer;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pointer"
.end annotation


# instance fields
.field _alias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "alias"

    .prologue
    .line 474
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 475
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    .line 476
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .parameter "dns"
    .parameter "in"
    .parameter "addr"
    .parameter "port"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    return-object p5
.end method

.method getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 5
    .parameter "dns"

    .prologue
    .line 564
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    .line 565
    .local v2, info:Ljavax/jmdns/ServiceInfo;
    #v2=(Reference,Ljavax/jmdns/ServiceInfo;);
    move-object v0, v2

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v4, v0

    #v4=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v4, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 566
    invoke-virtual {v2}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, domainName:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljavax/jmdns/impl/JmDNSImpl;->toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, serviceName:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v4, Ljavax/jmdns/impl/ServiceEventImpl;

    #v4=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-direct {v4, p1, v1, v3, v2}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v4=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    return-object v4
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 14
    .parameter "persistent"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v2, 0x0

    .line 536
    #v2=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->isServicesDiscoveryMetaQuery()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 540
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v1=(Reference,Ljava/util/Map;);
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, p1

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 553
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference,Ljava/lang/String;);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    return-object v0

    .line 542
    :cond_0
    #v0=(Boolean);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Null);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->isDomainDiscoveryQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v7=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v8

    #v8=(Reference,Ljava/util/Map;);
    move v9, v2

    #v9=(Null);
    move v10, v2

    #v10=(Null);
    move v11, v2

    #v11=(Null);
    move v12, p1

    #v12=(Boolean);
    move-object v13, v6

    #v13=(Null);
    invoke-direct/range {v7 .. v13}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    #v7=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v0, v7

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    goto :goto_0

    .line 547
    :cond_1
    #v0=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->isReverseLookup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v7=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v8

    #v8=(Reference,Ljava/util/Map;);
    move v9, v2

    #v9=(Null);
    move v10, v2

    #v10=(Null);
    move v11, v2

    #v11=(Null);
    move v12, p1

    #v12=(Boolean);
    move-object v13, v6

    #v13=(Null);
    invoke-direct/range {v7 .. v13}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    #v7=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v0, v7

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    goto :goto_0

    .line 551
    :cond_2
    #v0=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 552
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v1=(Reference,Ljava/util/Map;);
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    #v3=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v0

    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    #v4=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, p1

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    goto :goto_0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 1
    .parameter "dns"
    .parameter "expirationTime"

    .prologue
    .line 506
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .parameter "dns"

    .prologue
    .line 514
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 486
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local p1
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Pointer;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 498
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local p1
    iget-object v1, p1, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "aLog"

    .prologue
    .line 579
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, " alias: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    return-void

    .line 580
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 492
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Pointer;->_alias:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;Z)V

    .line 493
    return-void
.end method
