.class public Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;
.super Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;
.source "ServiceResolver.java"


# instance fields
.field private _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "jmDNSImpl"
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 31
    #p0=(Reference,Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;);
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->_type:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 11
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v7, p1

    .line 54
    .local v7, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v7=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 55
    .local v8, now:J
    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v10=(Reference,Ljava/util/Iterator;);
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 61
    return-object v7

    .line 55
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Ljavax/jmdns/ServiceInfo;

    .line 57
    .local v6, info:Ljavax/jmdns/ServiceInfo;
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const/4 v3, 0x0

    #v3=(Null);
    const/16 v4, 0xe10

    #v4=(PosShort);
    invoke-virtual {v6}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-virtual {p0, v7, v0, v8, v9}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v7

    goto :goto_0
.end method

.method protected addQuestions(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p1

    .line 73
    .local v0, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->_type:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method protected description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "querying service"

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "ServiceResolver("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
