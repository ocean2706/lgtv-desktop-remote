.class public Ljavax/jmdns/impl/tasks/RecordReaper;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "RecordReaper.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ljavax/jmdns/impl/tasks/RecordReaper;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/RecordReaper;->logger:Ljava/util/logging/Logger;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .parameter "jmDNSImpl"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 30
    #p0=(Reference,Ljavax/jmdns/impl/tasks/RecordReaper;);
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "RecordReaper("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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

.method public run()V
    .locals 11

    .prologue
    .line 60
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 91
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 64
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);
    sget-object v6, Ljavax/jmdns/impl/tasks/RecordReaper;->logger:Ljava/util/logging/Logger;

    #v6=(Reference,Ljava/util/logging/Logger;);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    const-string v8, ".run() JmDNS reaping cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 69
    .local v3, now:J
    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/DNSEntry;

    .line 73
    .local v1, entry:Ljavax/jmdns/impl/DNSEntry;
    :try_start_0
    move-object v0, v1

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    move-object v5, v0

    .line 74
    .local v5, record:Ljavax/jmdns/impl/DNSRecord;
    #v5=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    invoke-virtual {v5, v3, v4}, Ljavax/jmdns/impl/DNSRecord;->isStale(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v7, v5}, Ljavax/jmdns/impl/JmDNSImpl;->renewServiceCollector(Ljavax/jmdns/impl/DNSRecord;)V

    .line 79
    :cond_3
    #v7=(Conflicted);
    invoke-virtual {v5, v3, v4}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    sget-object v8, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    invoke-virtual {v7, v3, v4, v5, v8}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    .line 82
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v5           #record:Ljavax/jmdns/impl/DNSRecord;
    :catch_0
    #v5=(Conflicted);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    move-object v2, v7

    .line 87
    .local v2, exception:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    sget-object v7, Ljavax/jmdns/impl/tasks/RecordReaper;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getName()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, ".Error while reaping records: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    sget-object v7, Ljavax/jmdns/impl/tasks/RecordReaper;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(Ljava/util/Timer;)V
    .locals 6
    .parameter "timer"

    .prologue
    const-wide/16 v2, 0x2710

    .line 51
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/RecordReaper;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    move-object v0, p1

    #v0=(Reference,Ljava/util/Timer;);
    move-object v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/RecordReaper;);
    move-wide v4, v2

    .line 53
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 55
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method
