.class public Ljavax/jmdns/impl/tasks/state/Renewer;
.super Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.source "Renewer.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field taskState:Ljavax/jmdns/impl/constants/DNSState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Ljavax/jmdns/impl/tasks/state/Renewer;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/Renewer;->logger:Ljava/util/logging/Logger;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .parameter "jmDNSImpl"

    .prologue
    .line 33
    invoke-static {}, Ljavax/jmdns/impl/tasks/state/Renewer;->defaultTTL()I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 29
    #p0=(Reference,Ljavax/jmdns/impl/tasks/state/Renewer;);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object v0, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 35
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Renewer;->associate(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 36
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->removeAssociation()V

    .line 79
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "Renewer("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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
    .locals 10

    .prologue
    .line 85
    new-instance v4, Ljavax/jmdns/impl/DNSOutgoing;

    #v4=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    const v6, 0x8400

    #v6=(Char);
    invoke-direct {v4, v6}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    .line 88
    .local v4, out:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v4=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->cancel()Z

    .line 146
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 95
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    iget-object v8, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    #v8=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v7, p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 99
    sget-object v7, Ljavax/jmdns/impl/tasks/state/Renewer;->logger:Ljava/util/logging/Logger;

    #v7=(Reference,Ljava/util/logging/Logger;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".run() JmDNS renewing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTTL()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v7, v8}, Ljavax/jmdns/impl/HostInfo;->answers(I)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    #v1=(Conflicted);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_4

    .line 104
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljavax/jmdns/impl/JmDNSImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 95
    :cond_3
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_5

    .line 124
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_8

    .line 126
    sget-object v6, Ljavax/jmdns/impl/tasks/state/Renewer;->logger:Ljava/util/logging/Logger;

    #v6=(Reference,Ljava/util/logging/Logger;);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    const-string v8, ".run() JmDNS renewing #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    :goto_3
    #v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    #v6=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v6}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 142
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v6}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 144
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->cancel()Z

    goto/16 :goto_0

    .line 100
    :cond_4
    :try_start_3
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);v7=(Reference,Ljava/util/Iterator;);v8=(Boolean);v9=(Reference,Ljava/lang/String;);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    .line 102
    .local v1, answer:Ljavax/jmdns/impl/DNSRecord;
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0, v4, v8, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v4

    goto :goto_1

    .line 95
    .end local v1           #answer:Ljavax/jmdns/impl/DNSRecord;
    :catchall_0
    #v1=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Throwable;);
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    #v6=(Reference,Ljava/lang/Throwable;);
    move-object v2, v6

    .line 137
    .local v2, e:Ljava/lang/Throwable;
    #v2=(Reference,Ljava/lang/Throwable;);
    sget-object v6, Ljavax/jmdns/impl/tasks/state/Renewer;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v7=(Reference,Ljava/util/logging/Level;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".run() exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    goto :goto_3

    .line 108
    .end local v2           #e:Ljava/lang/Throwable;
    :cond_5
    :try_start_5
    #v2=(Uninit);v7=(Boolean);v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Ljavax/jmdns/ServiceInfo;

    .line 110
    .local v5, serviceInfo:Ljavax/jmdns/ServiceInfo;
    move-object v0, v5

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v3, v0

    .line 111
    .local v3, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v3=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    monitor-enter v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 113
    :try_start_6
    iget-object v7, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    #v7=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v3, p0, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_6

    .line 115
    sget-object v7, Ljavax/jmdns/impl/tasks/state/Renewer;->logger:Ljava/util/logging/Logger;

    #v7=(Reference,Ljava/util/logging/Logger;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, ".run() JmDNS renewing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTTL()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->answers(ILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;

    move-result-object v7

    #v7=(Reference,Ljava/util/Collection;);
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_7

    .line 120
    invoke-virtual {v3, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 111
    :cond_6
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    monitor-exit v3

    goto/16 :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 116
    :cond_7
    :try_start_8
    #v7=(Reference,Ljava/util/Iterator;);v8=(Boolean);v9=(Reference,Ljava/lang/String;);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    .line 118
    .restart local v1       #answer:Ljavax/jmdns/impl/DNSRecord;
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p0, v4, v8, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v4

    goto :goto_4

    .line 132
    .end local v1           #answer:Ljavax/jmdns/impl/DNSRecord;
    .end local v3           #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v5           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    :cond_8
    :try_start_9
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Boolean);v7=(Boolean);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->cancel()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3
.end method

.method public start(Ljava/util/Timer;)V
    .locals 6
    .parameter "timer"

    .prologue
    const-wide/32 v2, 0x1b7740

    .line 68
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    move-object v0, p1

    #v0=(Reference,Ljava/util/Timer;);
    move-object v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/state/Renewer;);
    move-wide v4, v2

    .line 70
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 72
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/state/Renewer;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
