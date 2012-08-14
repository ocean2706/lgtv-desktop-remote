.class public Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "DNSStatefulObject.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSStatefulObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImplementation"
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x2d4ed58bef601d03L


# instance fields
.field private volatile _dns:Ljavax/jmdns/impl/JmDNSImpl;

.field protected volatile _state:Ljavax/jmdns/impl/constants/DNSState;

.field protected volatile _task:Ljavax/jmdns/impl/tasks/DNSTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    #v0=(Null);
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 36
    #p0=(Reference,Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    .line 37
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    .line 38
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 39
    return-void
.end method


# virtual methods
.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 4
    .parameter "task"

    .prologue
    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, result:Z
    #v0=(One);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    #v1=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    if-ne v1, p1, :cond_0

    .line 141
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 144
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v1, p1, :cond_1

    .line 146
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 158
    :cond_0
    return v0

    .line 150
    :cond_1
    :try_start_1
    #v2=(Uninit);v3=(Uninit);
    sget-object v1, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "Trying to advance state whhen not the owner. owner: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " perpetrator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);
    move-exception v1

    .line 155
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 156
    throw v1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 64
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    #v0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    if-ne v0, p2, :cond_1

    .line 66
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 69
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    if-ne v0, p2, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 79
    :cond_1
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 77
    throw v0
.end method

.method public cancelState()Z
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, result:Z
    #v0=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceling()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 203
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceling()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 206
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    const/4 v0, 0x1

    .line 212
    :cond_0
    #v0=(Boolean);v1=(Boolean);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 215
    :cond_1
    return v0

    .line 211
    :catchall_0
    #v0=(Null);v1=(Conflicted);
    move-exception v1

    .line 212
    #v1=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 213
    throw v1
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnouncing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 114
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 117
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    #v0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    #v0=(Boolean);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 117
    return v0

    :cond_0
    #v0=(Reference,Ljava/lang/Object;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 120
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    .line 121
    #v0=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 122
    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isProbing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public recoverState()Z
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, result:Z
    #v0=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 230
    :try_start_0
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 231
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 237
    return v0

    .line 234
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    .line 235
    #v1=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 236
    throw v1
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 89
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    #v0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    if-ne v0, p1, :cond_1

    .line 91
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 94
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    if-ne v0, p1, :cond_0

    .line 96
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 104
    :cond_1
    return-void

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 102
    throw v0
.end method

.method public revertState()Z
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x1

    .line 170
    .local v0, result:Z
    #v0=(One);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceling()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->lock()V

    .line 175
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceling()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->revert()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 178
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    #v1=(Boolean);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 186
    :cond_1
    return v0

    .line 182
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    .line 183
    #v1=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 184
    throw v1
.end method

.method protected setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .parameter "dns"

    .prologue
    .line 53
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    .line 54
    return-void
.end method

.method protected setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 127
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "DNS: "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_dns:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    #v2=(Conflicted);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_state:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    #v0=(UninitRef,Ljava/lang/StringBuilder;);v2=(Uninit);
    const-string v1, "NO DNS"

    goto :goto_0
.end method

.method public waitForAnnounced(J)Z
    .locals 7
    .parameter "timeout"

    .prologue
    const/4 v6, 0x1

    .line 303
    #v6=(One);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, finished:Z
    #v2=(Null);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, p1, v3

    #v3=(Byte);
    if-lez v3, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    #v3=(LongLo);
    add-long/2addr v3, p1

    move-wide v0, v3

    .line 309
    .local v0, end:J
    :goto_0
    #v0=(LongLo);v1=(LongHi);v2=(Boolean);v3=(Conflicted);v5=(Conflicted);
    if-eqz v2, :cond_3

    .line 327
    .end local v0           #end:J
    .end local v2           #finished:Z
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 329
    sget-object v3, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Wait for announced timed out: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 331
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z

    move-result v3

    #v3=(Boolean);
    return v3

    .line 308
    .restart local v2       #finished:Z
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Byte);v4=(LongHi);v5=(Uninit);
    const-wide v3, 0x7fffffffffffffffL

    #v3=(LongLo);
    move-wide v0, v3

    #v0=(LongLo);v1=(LongHi);
    goto :goto_0

    .line 311
    .restart local v0       #end:J
    :cond_3
    #v2=(Boolean);v3=(Conflicted);v5=(Conflicted);
    const-wide/16 v3, 0x3e8

    :try_start_1
    #v3=(LongLo);
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #v5=(Reference,Ljava/util/concurrent/TimeUnit;);
    invoke-virtual {p0, v3, v4, v5}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isAnnounced()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    move v2, v6

    .line 318
    :goto_2
    :try_start_3
    #v3=(Byte);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 322
    .end local v0           #end:J
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_1

    .line 314
    .restart local v0       #end:J
    :cond_4
    :try_start_4
    #v0=(LongLo);v1=(LongHi);v3=(Boolean);v5=(Reference,Ljava/util/concurrent/TimeUnit;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v3

    #v3=(LongLo);
    cmp-long v3, v0, v3

    #v3=(Byte);
    if-gtz v3, :cond_5

    move v2, v6

    #v2=(One);
    goto :goto_2

    :cond_5
    #v2=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_2

    .line 317
    :catchall_0
    #v2=(Boolean);v3=(Conflicted);
    move-exception v3

    .line 318
    :try_start_5
    #v3=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 319
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public waitForCanceled(J)Z
    .locals 7
    .parameter "timeout"

    .prologue
    const/4 v6, 0x1

    .line 342
    #v6=(One);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, finished:Z
    #v2=(Null);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, p1, v3

    #v3=(Byte);
    if-lez v3, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    #v3=(LongLo);
    add-long/2addr v3, p1

    move-wide v0, v3

    .line 348
    .local v0, end:J
    :goto_0
    #v0=(LongLo);v1=(LongHi);v2=(Boolean);v3=(Conflicted);v5=(Conflicted);
    if-eqz v2, :cond_3

    .line 366
    .end local v0           #end:J
    .end local v2           #finished:Z
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 368
    sget-object v3, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Wait for canceled timed out: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 370
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z

    move-result v3

    #v3=(Boolean);
    return v3

    .line 347
    .restart local v2       #finished:Z
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Byte);v4=(LongHi);v5=(Uninit);
    const-wide v3, 0x7fffffffffffffffL

    #v3=(LongLo);
    move-wide v0, v3

    #v0=(LongLo);v1=(LongHi);
    goto :goto_0

    .line 350
    .restart local v0       #end:J
    :cond_3
    #v2=(Boolean);v3=(Conflicted);v5=(Conflicted);
    const-wide/16 v3, 0x3e8

    :try_start_1
    #v3=(LongLo);
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #v5=(Reference,Ljava/util/concurrent/TimeUnit;);
    invoke-virtual {p0, v3, v4, v5}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->isCanceled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    move v2, v6

    .line 357
    :goto_2
    :try_start_3
    #v3=(Byte);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 361
    .end local v0           #end:J
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_1

    .line 353
    .restart local v0       #end:J
    :cond_4
    :try_start_4
    #v0=(LongLo);v1=(LongHi);v3=(Boolean);v5=(Reference,Ljava/util/concurrent/TimeUnit;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v3

    #v3=(LongLo);
    cmp-long v3, v0, v3

    #v3=(Byte);
    if-gtz v3, :cond_5

    move v2, v6

    #v2=(One);
    goto :goto_2

    :cond_5
    #v2=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    move v2, v3

    #v2=(Null);
    goto :goto_2

    .line 356
    :catchall_0
    #v2=(Boolean);v3=(Conflicted);
    move-exception v3

    .line 357
    :try_start_5
    #v3=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->unlock()V

    .line 358
    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method
