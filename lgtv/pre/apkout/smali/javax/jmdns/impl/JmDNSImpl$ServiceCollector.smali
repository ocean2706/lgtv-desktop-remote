.class Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCollector"
.end annotation


# instance fields
.field private final _events:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final _infos:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _needToWaitForInfos:Z

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    #p0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef,Ljava/util/concurrent/ConcurrentHashMap;);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/ConcurrentHashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    .line 1755
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef,Ljava/util/concurrent/ConcurrentHashMap;);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/ConcurrentHashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    .line 1756
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_type:Ljava/lang/String;

    .line 1757
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    .line 1758
    return-void
.end method


# virtual methods
.method public list(J)[Ljavax/jmdns/ServiceInfo;
    .locals 6
    .parameter "timeout"

    .prologue
    const-wide/16 v4, 0xc8

    .line 1831
    #v4=(LongLo);v5=(LongHi);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    iget-boolean v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    if-eqz v3, :cond_2

    .line 1833
    :cond_0
    div-long v1, p1, v4

    .line 1834
    .local v1, loops:J
    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x1

    #v3=(LongLo);v4=(LongHi);
    cmp-long v3, v1, v3

    #v3=(Byte);
    if-gez v3, :cond_1

    .line 1836
    const-wide/16 v1, 0x1

    .line 1838
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);
    int-to-long v3, v0

    #v3=(LongLo);
    cmp-long v3, v3, v1

    #v3=(Byte);
    if-ltz v3, :cond_3

    .line 1854
    .end local v0           #i:I
    .end local v1           #loops:J
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    iput-boolean v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    .line 1855
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    #v4=(Integer);
    new-array v4, v4, [Ljavax/jmdns/ServiceInfo;

    #v4=(Reference,[Ljavax/jmdns/ServiceInfo;);
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljavax/jmdns/ServiceInfo;

    return-object p0

    .line 1842
    .restart local v0       #i:I
    .restart local v1       #loops:J
    .restart local p0
    :cond_3
    #v0=(Integer);v1=(LongLo);v2=(LongHi);v3=(Byte);v4=(LongHi);
    const-wide/16 v3, 0xc8

    :try_start_0
    #v3=(LongLo);
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :goto_1
    #v3=(Conflicted);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_4

    iget-boolean v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    if-eqz v3, :cond_2

    .line 1838
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1844
    :catch_0
    #v3=(LongLo);
    move-exception v3

    #v3=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_1
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 1768
    monitor-enter p0

    .line 1770
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 1771
    .local v0, info:Ljavax/jmdns/ServiceInfo;
    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1773
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v2=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    monitor-exit p0

    .line 1789
    return-void

    .line 1777
    :cond_0
    #v1=(Uninit);v2=(Conflicted);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    move-object v1, v2

    .line 1778
    .local v1, subtype:Ljava/lang/String;
    :goto_1
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual {v2, v3, v4, v1, v5}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 1779
    if-eqz v0, :cond_2

    .line 1781
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1768
    .end local v0           #info:Ljavax/jmdns/ServiceInfo;
    .end local v1           #subtype:Ljava/lang/String;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1777
    .restart local v0       #info:Ljavax/jmdns/ServiceInfo;
    :cond_1
    :try_start_1
    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);v1=(Uninit);v2=(Conflicted);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    move-object v1, v2

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_1

    .line 1785
    .restart local v1       #subtype:Ljava/lang/String;
    :cond_2
    #v3=(Reference,Ljava/lang/String;);v4=(Reference,Ljava/lang/String;);v5=(One);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1799
    monitor-enter p0

    .line 1801
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    monitor-exit p0

    .line 1804
    return-void

    .line 1799
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1814
    monitor-enter p0

    .line 1816
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    monitor-exit p0

    .line 1819
    return-void

    .line 1814
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1861
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1862
    .local v0, aLog:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "\n\tType: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 1865
    const-string v2, "\n\tNo services collected."

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1875
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    .line 1877
    const-string v2, "\n\tNo event queued."

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1887
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1869
    :cond_2
    #v1=(Uninit);v2=(Boolean);v3=(Reference,Ljava/lang/String;);v4=(Uninit);
    const-string v2, "\n\tServices"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1870
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v1=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1872
    .local v1, key:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "\n\t\tService: "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1881
    .end local v1           #key:Ljava/lang/String;
    :cond_3
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "\n\tEvents"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1882
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1884
    .restart local v1       #key:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "\n\t\tEvent: "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
