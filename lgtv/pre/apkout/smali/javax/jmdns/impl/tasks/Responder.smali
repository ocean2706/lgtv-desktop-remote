.class public Ljavax/jmdns/impl/tasks/Responder;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "Responder.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# instance fields
.field private _in:Ljavax/jmdns/impl/DNSIncoming;

.field private _unicast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljavax/jmdns/impl/tasks/Responder;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;I)V
    .locals 1
    .parameter "jmDNSImpl"
    .parameter "in"
    .parameter "port"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 40
    #p0=(Reference,Ljavax/jmdns/impl/tasks/Responder;);
    iput-object p2, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    .line 41
    sget v0, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    #v0=(Integer);
    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    .line 42
    return-void

    .line 41
    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, "Responder("

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

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
    .locals 12

    .prologue
    .line 106
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->ioLock()V

    .line 109
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->getPlannedAnswer()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v7

    iget-object v8, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    #v8=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    if-ne v7, v8, :cond_0

    .line 111
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v7, v8}, Ljavax/jmdns/impl/JmDNSImpl;->setPlannedAnswer(Ljavax/jmdns/impl/DNSIncoming;)V

    .line 116
    :cond_0
    #v8=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    new-instance v6, Ljava/util/HashSet;

    #v6=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 117
    .local v6, questions:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSQuestion;>;"
    #v6=(Reference,Ljava/util/HashSet;);
    new-instance v1, Ljava/util/HashSet;

    #v1=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v1, answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    #v1=(Reference,Ljava/util/HashSet;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 124
    :try_start_1
    iget-object v7, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    #v7=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    #v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_3

    .line 138
    iget-object v7, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    #v3=(Conflicted);v8=(Conflicted);v11=(Conflicted);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_5

    .line 147
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    #v7=(Integer);
    if-eqz v7, :cond_2

    .line 149
    sget-object v7, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    #v7=(Reference,Ljava/util/logging/Logger;);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/StringBuilder;);
    const-string v9, "run() JmDNS responding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    new-instance v4, Ljavax/jmdns/impl/DNSOutgoing;

    #v4=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    const v7, 0x8400

    #v7=(Char);
    iget-boolean v8, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    #v8=(Boolean);
    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_2
    iget-object v9, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v9

    #v9=(Integer);
    invoke-direct {v4, v7, v8, v9}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 151
    .local v4, out:Ljavax/jmdns/impl/DNSOutgoing;
    #v4=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    iget-object v7, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    #v7=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {v4, v7}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 152
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    #v7=(Reference,Ljava/util/Iterator;);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 156
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    #v0=(Conflicted);v8=(Conflicted);
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_8

    .line 160
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_2

    .line 161
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v7, v4}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .end local v4           #out:Ljavax/jmdns/impl/DNSOutgoing;
    :cond_2
    :goto_5
    #v2=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 176
    return-void

    .line 124
    :cond_3
    :try_start_2
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v8=(Boolean);v11=(Uninit);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Ljavax/jmdns/impl/DNSQuestion;

    .line 126
    .local v5, question:Ljavax/jmdns/impl/DNSQuestion;
    sget-object v8, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    #v8=(Reference,Ljava/util/logging/Logger;);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    const-string v10, "run() JmDNS responding to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 128
    iget-boolean v8, p0, Ljavax/jmdns/impl/tasks/Responder;->_unicast:Z

    #v8=(Boolean);
    if-eqz v8, :cond_4

    .line 131
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    #v8=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v5, v8, v1}, Ljavax/jmdns/impl/DNSQuestion;->addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 165
    .end local v5           #question:Ljavax/jmdns/impl/DNSQuestion;
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Throwable;);
    move-object v2, v7

    .line 167
    .local v2, e:Ljava/lang/Throwable;
    :try_start_3
    #v2=(Reference,Ljava/lang/Throwable;);
    sget-object v7, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v8=(Reference,Ljava/util/logging/Level;);
    const-string v9, "run() exception "

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/jmdns/impl/JmDNSImpl;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 173
    .end local v1           #answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    .end local v2           #e:Ljava/lang/Throwable;
    .end local v6           #questions:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSQuestion;>;"
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v7

    .line 174
    #v7=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v8

    #v8=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v8}, Ljavax/jmdns/impl/JmDNSImpl;->ioUnlock()V

    .line 175
    throw v7

    .line 138
    .restart local v1       #answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    .restart local v6       #questions:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSQuestion;>;"
    :cond_5
    :try_start_4
    #v0=(Uninit);v1=(Reference,Ljava/util/HashSet;);v2=(Uninit);v4=(Uninit);v6=(Reference,Ljava/util/HashSet;);v8=(Boolean);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 140
    .local v3, knownAnswer:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v8

    #v8=(Integer);
    const/16 v9, 0x708

    #v9=(PosShort);
    if-le v8, v9, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 142
    sget-object v8, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    #v8=(Reference,Ljava/util/logging/Logger;);
    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #v9=(Reference,Ljava/util/logging/Level;);
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v11

    #v11=(Reference,Ljava/lang/String;);
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    const-string v11, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .end local v3           #knownAnswer:Ljavax/jmdns/impl/DNSRecord;
    :cond_6
    #v3=(Conflicted);v4=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);v7=(Char);v8=(Boolean);v10=(Conflicted);v11=(Conflicted);
    const/4 v8, 0x1

    #v8=(One);
    goto/16 :goto_2

    .line 152
    .restart local v4       #out:Ljavax/jmdns/impl/DNSOutgoing;
    :cond_7
    #v4=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);v7=(Reference,Ljava/util/Iterator;);v8=(Boolean);v9=(Integer);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Ljavax/jmdns/impl/DNSQuestion;

    .line 154
    .restart local v5       #question:Ljavax/jmdns/impl/DNSQuestion;
    invoke-virtual {p0, v4, v5}, Ljavax/jmdns/impl/tasks/Responder;->addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v4

    goto/16 :goto_3

    .line 156
    .end local v5           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_8
    #v0=(Conflicted);v5=(Conflicted);
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 158
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    iget-object v8, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    #v8=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-virtual {p0, v4, v8, v0}, Ljavax/jmdns/impl/tasks/Responder;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto/16 :goto_4
.end method

.method public start(Ljava/util/Timer;)V
    .locals 7
    .parameter "timer"

    .prologue
    .line 81
    const/4 v1, 0x1

    .line 82
    .local v1, iAmTheOnlyOne:Z
    #v1=(One);
    iget-object v3, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    #v3=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    #v1=(Boolean);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 91
    :goto_0
    #v4=(Conflicted);
    if-eqz v1, :cond_4

    iget-object v3, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    const/4 v3, 0x0

    #v3=(Null);
    move v0, v3

    .line 92
    .local v0, delay:I
    :goto_1
    #v0=(Integer);v3=(Integer);
    if-gez v0, :cond_1

    .line 94
    const/4 v0, 0x0

    .line 96
    :cond_1
    sget-object v3, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, "start() Responder chosen delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 99
    int-to-long v3, v0

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p1, p0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 101
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 82
    .end local v0           #delay:I
    :cond_3
    #v0=(Uninit);v3=(Reference,Ljava/util/Iterator;);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 84
    .local v2, question:Ljavax/jmdns/impl/DNSQuestion;
    sget-object v4, Ljavax/jmdns/impl/tasks/Responder;->logger:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, "start() question="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/Responder;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/jmdns/impl/DNSQuestion;->iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v1

    .line 86
    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    .end local v2           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_4
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->getRandom()Ljava/util/Random;

    move-result-object v3

    #v3=(Reference,Ljava/util/Random;);
    const/16 v4, 0x60

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    #v3=(Integer);
    add-int/lit8 v3, v3, 0x14

    iget-object v4, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    #v4=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSIncoming;->elapseSinceArrival()I

    move-result v4

    #v4=(Integer);
    sub-int/2addr v3, v4

    move v0, v3

    #v0=(Integer);
    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/tasks/Responder;->_in:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
