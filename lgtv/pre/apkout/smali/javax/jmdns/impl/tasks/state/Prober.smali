.class public Ljavax/jmdns/impl/tasks/state/Prober;
.super Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.source "Prober.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field taskState:Ljavax/jmdns/impl/constants/DNSState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Ljavax/jmdns/impl/tasks/state/Prober;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .parameter "jmDNSImpl"

    .prologue
    .line 39
    invoke-static {}, Ljavax/jmdns/impl/tasks/state/Prober;->defaultTTL()I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 35
    #p0=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object v0, p0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 41
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Prober;->associate(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 42
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->removeAssociation()V

    .line 100
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "Prober("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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
    .locals 18

    .prologue
    const/4 v3, 0x0

    .line 106
    #v3=(Null);
    new-instance v15, Ljavax/jmdns/impl/DNSOutgoing;

    #v15=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v15, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    .line 109
    .local v15, out:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v15=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->cancel()Z

    .line 172
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    return-void

    .line 115
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    iget-object v0, v0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    move-object v5, v0

    #v5=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    move-object v0, v4

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    move-object v2, v5

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 119
    sget-object v4, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, ".run() JmDNS probing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v6, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v7, 0x0

    #v7=(Null);
    invoke-static {v4, v5, v6, v7}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTTL()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljavax/jmdns/impl/HostInfo;->answers(I)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    #v12=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_4

    .line 125
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 115
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    #v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Reference,Ljava/util/Iterator;);
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_5

    .line 147
    invoke-virtual {v15}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 149
    sget-object v3, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, ".run() JmDNS probing #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v13=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    iget-object v0, v0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    iput-object v0, v1, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 168
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->cancel()Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->startAnnouncer()V

    goto/16 :goto_0

    .line 121
    :cond_4
    :try_start_3
    #v2=(Reference,Ljava/lang/Object;);v5=(Boolean);v6=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    #v12=(Reference,Ljava/lang/Object;);
    check-cast v12, Ljavax/jmdns/impl/DNSRecord;

    .line 123
    .local v12, answer:Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/tasks/state/Prober;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v15

    goto/16 :goto_1

    .line 115
    .end local v12           #answer:Ljavax/jmdns/impl/DNSRecord;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v12=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    move-object v13, v3

    .line 161
    .local v13, e:Ljava/lang/Throwable;
    #v13=(Reference,Ljava/lang/Throwable;);
    sget-object v3, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v4=(Reference,Ljava/util/logging/Level;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, ".run() exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    goto :goto_3

    .line 129
    .end local v13           #e:Ljava/lang/Throwable;
    :cond_5
    :try_start_5
    #v0=(Reference,Ljava/lang/Object;);v1=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);v2=(Reference,Ljava/lang/Object;);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v13=(Uninit);v17=(Reference,Ljava/util/Iterator;);
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    #v16=(Reference,Ljava/lang/Object;);
    check-cast v16, Ljavax/jmdns/ServiceInfo;

    .line 131
    .local v16, serviceInfo:Ljavax/jmdns/ServiceInfo;
    move-object/from16 v0, v16

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v14, v0

    .line 133
    .local v14, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v14=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    monitor-enter v14
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 135
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    move-object v3, v0

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_6

    .line 137
    sget-object v3, Ljavax/jmdns/impl/tasks/state/Prober;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, ".run() JmDNS probing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v14}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v3, v4, v5, v6}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/tasks/state/Prober;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v15

    .line 141
    new-instance v3, Ljavax/jmdns/impl/DNSRecord$Service;

    #v3=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual {v14}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getTTL()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {v14}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPriority()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v14}, Ljavax/jmdns/impl/ServiceInfoImpl;->getWeight()I

    move-result v9

    #v9=(Integer);
    invoke-virtual {v14}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v10

    #v10=(Integer);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v11

    .line 142
    #v11=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v11}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v3 .. v11}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 141
    #v3=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/tasks/state/Prober;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v15

    .line 143
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 133
    :cond_6
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    monitor-exit v14

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 155
    .end local v14           #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v16           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    :cond_7
    #v3=(Boolean);v14=(Conflicted);v16=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/tasks/state/Prober;->cancel()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method public start(Ljava/util/Timer;)V
    .locals 8
    .parameter "timer"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 74
    #v2=(LongLo);v3=(LongHi);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 75
    .local v6, now:J
    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getLastThrottleIncrement()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    sub-long v0, v6, v0

    const-wide/16 v4, 0x1388

    #v4=(LongLo);v5=(LongHi);
    cmp-long v0, v0, v4

    #v0=(Byte);
    if-gez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getThrottle()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->setThrottle(I)V

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljavax/jmdns/impl/JmDNSImpl;->setLastThrottleIncrement(J)V

    .line 85
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getThrottle()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0xa

    #v1=(PosByte);
    if-ge v0, v1, :cond_2

    .line 87
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v0

    #v0=(Reference,Ljava/util/Random;);
    const/16 v1, 0xfb

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    #v0=(Integer);
    int-to-long v2, v0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    #v0=(Reference,Ljava/util/Timer;);
    move-object v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 93
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 81
    :cond_1
    #v0=(Byte);v1=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->setThrottle(I)V

    goto :goto_0

    .line 89
    :cond_2
    #v0=(Integer);v1=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Prober;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    move-object v0, p1

    #v0=(Reference,Ljava/util/Timer;);
    move-object v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    move-wide v4, v2

    .line 91
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
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

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/state/Prober;->taskState:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
