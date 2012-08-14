.class public abstract Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSStateTask.java"


# static fields
.field private static _defaultTTL:I


# instance fields
.field private final _ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xe10

    #v0=(PosShort);
    sput v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .locals 0
    .parameter "jmDNSImpl"
    .parameter "ttl"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 48
    #p0=(Reference,Ljavax/jmdns/impl/tasks/state/DNSStateTask;);
    iput p2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    .line 49
    return-void
.end method

.method public static defaultTTL()I
    .locals 1

    .prologue
    .line 28
    sget v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    #v0=(Integer);
    return v0
.end method

.method public static setDefaultTTL(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    sput p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    .line 39
    return-void
.end method


# virtual methods
.method protected associate(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 67
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    monitor-enter v1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v2, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 75
    return-void

    .line 67
    :catchall_0
    #v0=(Uninit);v2=(Conflicted);
    move-exception v2

    :try_start_1
    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 71
    :cond_0
    #v0=(Conflicted);v2=(Boolean);
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 73
    .local v0, serviceInfo:Ljavax/jmdns/ServiceInfo;
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v0           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0, p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_0
.end method

.method public getTTL()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    #v0=(Integer);
    return v0
.end method

.method protected removeAssociation()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    monitor-enter v1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v2, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 93
    return-void

    .line 83
    :catchall_0
    #v0=(Uninit);v2=(Conflicted);
    move-exception v2

    :try_start_1
    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 89
    :cond_0
    #v0=(Conflicted);v2=(Boolean);
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 91
    .local v0, serviceInfo:Ljavax/jmdns/ServiceInfo;
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v0           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    goto :goto_0
.end method
