.class Ljavax/jmdns/impl/DNSQuestion$Pointer;
.super Ljavax/jmdns/impl/DNSQuestion;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pointer"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSQuestion;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 102
    #p0=(Reference,Ljavax/jmdns/impl/DNSQuestion$Pointer;);
    return-void
.end method


# virtual methods
.method public addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 8
    .parameter "jmDNSImpl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference,Ljava/util/Map;);
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    #v1=(Conflicted);v6=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 112
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->isServicesDiscoveryMetaQuery()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceTypes()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference,Ljava/util/Map;);
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Reference,Ljava/util/Iterator;);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 119
    :cond_0
    #v7=(Conflicted);
    return-void

    .line 108
    :cond_1
    #v0=(Reference,Ljava/util/Iterator;);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Ljavax/jmdns/ServiceInfo;

    .line 110
    .local v6, serviceInfo:Ljavax/jmdns/ServiceInfo;
    check-cast v6, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v6           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {p0, p1, p2, v6}, Ljavax/jmdns/impl/DNSQuestion$Pointer;->addAnswersForServiceInfo(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/ServiceInfoImpl;)V

    goto :goto_0

    .line 114
    :cond_2
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference,Ljava/util/Iterator;);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Ljava/lang/String;

    .line 116
    .local v5, serviceType:Ljava/lang/String;
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    const-string v1, "_services._dns-sd._udp.local."

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const/4 v3, 0x0

    #v3=(Null);
    const/16 v4, 0xe10

    #v4=(PosShort);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
