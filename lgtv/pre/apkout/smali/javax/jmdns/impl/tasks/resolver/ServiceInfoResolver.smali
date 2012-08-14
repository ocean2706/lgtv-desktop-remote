.class public Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;
.super Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;
.source "ServiceInfoResolver.java"


# instance fields
.field private final _info:Ljavax/jmdns/impl/ServiceInfoImpl;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 5
    .parameter "jmDNSImpl"
    .parameter "info"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 30
    #p0=(Reference,Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;);
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 31
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {p2, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 32
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljavax/jmdns/impl/JmDNSImpl;->addListener(Ljavax/jmdns/impl/DNSListener;Ljavax/jmdns/impl/DNSQuestion;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p1

    .line 72
    .local v0, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v3=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 75
    .local v1, now:J
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v4=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v5=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v6=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v3, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v3, v1, v2}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v3, v1, v2}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 77
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_0

    .line 79
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v3, v1, v2}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    invoke-virtual {p0, v0, v3, v1, v2}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 83
    .end local v1           #now:J
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v0
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
    const/4 v4, 0x0

    .line 94
    #v4=(Null);
    move-object v0, p1

    .line 95
    .local v0, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 98
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 99
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 102
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    .line 105
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->cancel()Z

    move-result v0

    .line 56
    .local v0, result:Z
    #v0=(Boolean);
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    iget-object v2, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->removeListener(Ljavax/jmdns/impl/DNSListener;)V

    .line 60
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return v0
.end method

.method protected description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "querying service info: "

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "ServiceInfoResolver("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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
