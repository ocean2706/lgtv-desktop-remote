.class final Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;
.super Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;
.source "ServiceInfoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/ServiceInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceInfoState"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf52a9538bcf62d4L


# instance fields
.field private final _info:Ljavax/jmdns/impl/ServiceInfoImpl;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 74
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;-><init>()V

    .line 75
    #p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 76
    return-void
.end method


# virtual methods
.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .parameter "dns"

    .prologue
    .line 108
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 109
    return-void
.end method

.method protected setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 81
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 82
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    #v0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->needTextAnnouncing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 84
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_task:Ljavax/jmdns/impl/tasks/DNSTask;

    #v0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->needTextAnnouncing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_state:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_state:Ljavax/jmdns/impl/constants/DNSState;

    .line 91
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->startAnnouncer()V

    .line 84
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    monitor-exit p0

    .line 103
    :cond_1
    return-void

    .line 98
    :cond_2
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->_info:Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    goto :goto_0

    .line 84
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
