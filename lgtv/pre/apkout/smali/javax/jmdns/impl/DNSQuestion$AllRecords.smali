.class Ljavax/jmdns/impl/DNSQuestion$AllRecords;
.super Ljavax/jmdns/impl/DNSQuestion;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllRecords"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSQuestion;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 196
    #p0=(Reference,Ljavax/jmdns/impl/DNSQuestion$AllRecords;);
    return-void
.end method


# virtual methods
.method public addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 6
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
    .line 208
    .local p2, answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, name:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/HostInfo;);
    const/16 v3, 0xe10

    #v3=(PosShort);
    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/HostInfo;->answers(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 224
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 216
    :cond_0
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceTypes()Ljava/util/Map;

    move-result-object v2

    #v2=(Reference,Ljava/util/Map;);
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 218
    new-instance v1, Ljavax/jmdns/impl/DNSQuestion$Pointer;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$Pointer;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;->isUnique()Z

    move-result v5

    #v5=(Boolean);
    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/jmdns/impl/DNSQuestion$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 219
    .local v1, question:Ljavax/jmdns/impl/DNSQuestion;
    #v1=(Reference,Ljavax/jmdns/impl/DNSQuestion$Pointer;);
    invoke-virtual {v1, p1, p2}, Ljavax/jmdns/impl/DNSQuestion;->addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V

    goto :goto_0

    .line 223
    .end local v1           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_1
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    #v2=(Reference,Ljava/util/Map;);
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0, p1, p2, v2}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;->addAnswersForServiceInfo(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/ServiceInfoImpl;)V

    goto :goto_0
.end method

.method public iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 2
    .parameter "jmDNSImpl"

    .prologue
    .line 229
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, name:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public isSameType(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
