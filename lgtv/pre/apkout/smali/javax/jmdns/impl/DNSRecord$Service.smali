.class public Ljavax/jmdns/impl/DNSRecord$Service;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _port:I

.field private _priority:I

.field private _server:Ljava/lang/String;

.field private _weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 688
    const-class v0, Ljavax/jmdns/impl/DNSRecord$Service;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    .line 686
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "priority"
    .parameter "weight"
    .parameter "port"
    .parameter "server"

    .prologue
    .line 696
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$Service;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 697
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    iput p5, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    .line 698
    iput p6, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    .line 699
    iput p7, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    .line 700
    iput-object p8, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    .line 701
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 10
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
    const/4 v3, 0x1

    .line 862
    #v3=(One);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference,Ljava/util/Map;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 863
    .local v9, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v9, :cond_1

    .line 865
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    #v0=(Integer);
    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v1

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    #v0=(Boolean);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eq v0, v1, :cond_1

    .line 867
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/16 v4, 0xe10

    #v4=(PosShort);
    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v7

    .line 868
    #v7=(Integer);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v8

    #v8=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    #v3=(Reference,Ljava/net/InetAddress;);
    move v4, p4

    #v4=(Integer);
    move-object v5, p5

    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    move-object v6, v0

    .line 867
    #v6=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual/range {v1 .. v6}, Ljavax/jmdns/impl/JmDNSImpl;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 871
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v0

    .line 865
    :cond_0
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(One);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-object v0, p5

    .line 871
    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    #v0=(Integer);
    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    #v0=(Integer);
    return v0
.end method

.method getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 5
    .parameter "dns"

    .prologue
    .line 893
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSRecord$Service;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 894
    .local v1, info:Ljavax/jmdns/ServiceInfo;
    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    move-object v0, v1

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 905
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    #v2=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v2, p1, v3, v4, v1}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v2=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    return-object v2
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .parameter "persistent"

    .prologue
    .line 882
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    #v2=(Integer);
    iget v3, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    #v3=(Integer);
    iget v4, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    #v4=(Integer);
    iget-object v6, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    move v5, p1

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    #v0=(Integer);
    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 13
    .parameter "dns"
    .parameter "expirationTime"

    .prologue
    .line 779
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    #v11=(Reference,Ljava/lang/Object;);
    check-cast v11, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 780
    .local v11, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v11, :cond_4

    iget v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    #v1=(Integer);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v2

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_4

    .line 782
    :cond_0
    #v1=(Integer);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    #v1=(Reference,Ljava/util/logging/Logger;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "handleQuery() Conflicting probe detected from: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getRecordSource()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v3, 0x1

    #v3=(One);
    const/16 v4, 0xe10

    #v4=(PosShort);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v8

    #v8=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v8}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 788
    .local v0, localService:Ljavax/jmdns/impl/DNSRecord$Service;
    :try_start_0
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getInterface()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getRecordSource()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 790
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    #v1=(Reference,Ljava/util/logging/Logger;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "Got conflicting probe from ourselves\nincoming: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "local   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSRecord$Service;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_1
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v10=(Conflicted);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord$Service;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result v9

    .line 800
    .local v9, comparison:I
    #v9=(Integer);
    if-nez v9, :cond_2

    .line 806
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    #v1=(Reference,Ljava/util/logging/Logger;);
    const-string v2, "handleQuery() Ignoring a identical service query"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 807
    const/4 v1, 0x0

    .line 833
    .end local v0           #localService:Ljavax/jmdns/impl/DNSRecord$Service;
    .end local v9           #comparison:I
    :goto_1
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v12=(Conflicted);
    return v1

    .line 793
    .restart local v0       #localService:Ljavax/jmdns/impl/DNSRecord$Service;
    :catch_0
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);v1=(Conflicted);v4=(PosShort);v5=(Integer);v6=(Integer);v7=(Integer);v8=(Reference,Ljava/lang/String;);v9=(Uninit);v10=(Uninit);v12=(Uninit);
    move-exception v1

    #v1=(Reference,Ljava/io/IOException;);
    move-object v10, v1

    .line 795
    .local v10, e:Ljava/io/IOException;
    #v10=(Reference,Ljava/io/IOException;);
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 811
    .end local v10           #e:Ljava/io/IOException;
    .restart local v9       #comparison:I
    :cond_2
    #v1=(Conflicted);v9=(Integer);v10=(Conflicted);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->isProbing()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    if-lez v9, :cond_3

    .line 814
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 815
    .local v12, oldName:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "handleQuery() Lost tie break: new unique name chosen:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    .line 830
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_1

    .line 827
    .end local v12           #oldName:Ljava/lang/String;
    :cond_3
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v12=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 833
    .end local v0           #localService:Ljavax/jmdns/impl/DNSRecord$Service;
    .end local v9           #comparison:I
    :cond_4
    #v0=(Uninit);v1=(Conflicted);v2=(Reference,Ljava/lang/String;);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 5
    .parameter "dns"

    .prologue
    .line 839
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    #v2=(Reference,Ljava/util/Map;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Service;->getKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 840
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_2

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    #v2=(Integer);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v3

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 842
    :cond_0
    #v2=(Integer);v3=(Conflicted);
    sget-object v2, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    #v2=(Reference,Ljava/util/logging/Logger;);
    const-string v3, "handleResponse() Denial detected"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isProbing()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 846
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, oldName:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v2, Ljavax/jmdns/impl/DNSRecord$Service;->logger1:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "handleResponse() New unique name chose:"

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 853
    .end local v1           #oldName:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    .line 854
    const/4 v2, 0x1

    .line 856
    :goto_0
    #v2=(Boolean);
    return v2

    :cond_2
    #v1=(Uninit);v2=(Conflicted);v4=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 772
    move-object v0, p1

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Service;

    move-object v1, v0

    .line 773
    .local v1, s:Ljavax/jmdns/impl/DNSRecord$Service;
    #v1=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    #v2=(Integer);
    iget v3, v1, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    iget v3, v1, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    iget v3, v1, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    iget-object v3, v1, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    #v3=(Conflicted);
    return v2

    :cond_0
    #v2=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "dout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 727
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 728
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 729
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 732
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "UTF-8"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 734
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/io/UnsupportedEncodingException;);
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "aLog"

    .prologue
    .line 917
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, " server: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    return-void
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 706
    #v2=(Null);
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_priority:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 707
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_weight:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 708
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_port:I

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 709
    sget-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;Z)V

    .line 721
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 715
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Service;->_server:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p1, v0, v2, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 719
    invoke-virtual {p1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_0
.end method
