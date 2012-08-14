.class public abstract Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSResolverTask.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field protected _count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->logger:Ljava/util/logging/Logger;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .parameter "jmDNSImpl"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 26
    #p0=(Reference,Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->_count:I

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract addQuestions(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract description()Ljava/lang/String;
.end method

.method public run()V
    .locals 6

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->cancel()Z

    .line 101
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 77
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget v2, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->_count:I

    #v2=(Integer);
    add-int/lit8 v3, v2, 0x1

    #v3=(Integer);
    iput v3, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->_count:I

    const/4 v3, 0x3

    #v3=(PosByte);
    if-ge v2, v3, :cond_4

    .line 79
    sget-object v2, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->logger:Ljava/util/logging/Logger;

    #v2=(Reference,Ljava/util/logging/Logger;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, ".run() JmDNS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    .line 81
    .local v1, out:Ljavax/jmdns/impl/DNSOutgoing;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->addQuestions(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->isAnnounced()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->addAnswers(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v1

    .line 86
    :cond_3
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v2, v1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1           #out:Ljavax/jmdns/impl/DNSOutgoing;
    :catch_0
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    move-object v0, v2

    .line 98
    .local v0, e:Ljava/lang/Throwable;
    #v0=(Reference,Ljava/lang/Throwable;);
    sget-object v2, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v3=(Reference,Ljava/util/logging/Level;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, ".run() exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(PosByte);v4=(Uninit);v5=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->cancel()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public start(Ljava/util/Timer;)V
    .locals 6
    .parameter "timer"

    .prologue
    const-wide/16 v2, 0xe1

    .line 55
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    move-object v0, p1

    #v0=(Reference,Ljava/util/Timer;);
    move-object v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;);
    move-wide v4, v2

    .line 57
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 59
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/jmdns/impl/tasks/resolver/DNSResolverTask;->_count:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
