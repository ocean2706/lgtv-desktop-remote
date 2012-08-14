.class public Ljavax/jmdns/impl/DNSCache;
.super Ljava/util/AbstractMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSCache$_CacheEntry;,
        Ljavax/jmdns/impl/DNSCache$_EmptyCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<+",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EmptyCache:Ljavax/jmdns/impl/DNSCache;


# instance fields
.field private transient _entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljavax/jmdns/impl/DNSCache$_EmptyCache;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSCache$_EmptyCache;);
    invoke-direct {v0}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;-><init>()V

    #v0=(Reference,Ljavax/jmdns/impl/DNSCache$_EmptyCache;);
    sput-object v0, Ljavax/jmdns/impl/DNSCache;->EmptyCache:Ljavax/jmdns/impl/DNSCache;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    const/16 v0, 0x400

    #v0=(PosShort);
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 307
    #p0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 51
    #p0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 329
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    #v0=(Reference,Ljava/util/HashSet;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 330
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 314
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    :goto_0
    #v0=(Integer);
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 315
    #p0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    .line 319
    :cond_0
    return-void

    .line 314
    :cond_1
    #v0=(Uninit);p0=(UninitThis,Ljavax/jmdns/impl/DNSCache;);
    const/16 v0, 0x400

    #v0=(PosShort);
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 6
    .parameter "dnsEntry"

    .prologue
    .line 496
    monitor-enter p0

    const/4 v2, 0x0

    .line 497
    .local v2, result:Z
    #v2=(Null);
    if-eqz p1, :cond_0

    .line 499
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 501
    .local v1, oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    #v1=(Reference,Ljava/util/Map$Entry;);
    const/4 v0, 0x0

    .line 502
    .local v0, aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Null);
    if-eqz v1, :cond_1

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 510
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_0
    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    if-eqz v1, :cond_2

    .line 514
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);
    const/4 v2, 0x1

    .line 523
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    monitor-exit p0

    return v2

    .line 508
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1       #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_1
    :try_start_1
    #v0=(Null);v1=(Reference,Ljava/util/Map$Entry;);v2=(Null);v3=(Reference,Ljava/lang/String;);v4=(Uninit);v5=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    #v4=(UninitRef,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5, v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    #v4=(Reference,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 496
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized allValues()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, allValues:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->values()Ljava/util/Collection;

    move-result-object v2

    #v2=(Reference,Ljava/util/Collection;);
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 421
    monitor-exit p0

    return-object v0

    .line 416
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/util/List;

    .line 418
    .local v1, entry:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_0

    .line 419
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    .end local v0           #allValues:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #entry:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSCache;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    #v0=(Reference,Ljava/util/Set;);
    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference,Ljava/util/HashSet;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 345
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;
    .locals 5
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"

    .prologue
    .line 472
    monitor-enter p0

    const/4 v1, 0x0

    .line 473
    .local v1, result:Ljavax/jmdns/impl/DNSEntry;
    :try_start_0
    #v1=(Null);
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 474
    .local v0, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/Collection;);
    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    #v2=(Conflicted);v3=(Reference,Ljava/util/Iterator;);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 485
    :cond_1
    :goto_0
    #v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);v3=(Conflicted);v4=(Conflicted);
    monitor-exit p0

    return-object v1

    .line 476
    :cond_2
    :try_start_1
    #v1=(Null);v3=(Reference,Ljava/util/Iterator;);v4=(Boolean);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 478
    .local v2, testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v4, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v4=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    if-eq v4, p3, :cond_3

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 480
    :cond_3
    #v4=(Conflicted);
    move-object v1, v2

    .line 481
    #v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    goto :goto_0

    .line 472
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2           #testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_0
    #v0=(Conflicted);v1=(Null);v2=(Conflicted);v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;
    .locals 5
    .parameter "dnsEntry"

    .prologue
    .line 443
    monitor-enter p0

    const/4 v1, 0x0

    .line 444
    .local v1, result:Ljavax/jmdns/impl/DNSEntry;
    #v1=(Null);
    if-eqz p1, :cond_1

    .line 446
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 447
    .local v0, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/Collection;);
    if-eqz v0, :cond_1

    .line 449
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    #v2=(Conflicted);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 459
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);v3=(Conflicted);v4=(Conflicted);
    monitor-exit p0

    return-object v1

    .line 449
    .restart local v0       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_2
    :try_start_1
    #v0=(Reference,Ljava/util/Collection;);v1=(Null);v3=(Reference,Ljava/util/Iterator;);v4=(Boolean);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 451
    .local v2, testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/DNSEntry;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 453
    move-object v1, v2

    .line 454
    #v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    goto :goto_0

    .line 443
    .end local v0           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2           #testDNSEntry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_0
    #v0=(Conflicted);v1=(Null);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method protected getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 354
    #v4=(Null);
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 355
    .local v1, stringKey:Ljava/lang/String;
    :goto_0
    #v1=(Reference,Ljava/lang/String;);v2=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    #v2=(Reference,Ljava/util/Set;);
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    #v0=(Conflicted);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    move-object v2, v4

    .line 368
    :goto_1
    #v3=(Conflicted);
    return-object v2

    .end local v1           #stringKey:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    move-object v1, v4

    .line 354
    #v1=(Null);
    goto :goto_0

    .line 355
    .restart local v1       #stringKey:Ljava/lang/String;
    :cond_2
    #v0=(Conflicted);v1=(Reference,Ljava/lang/String;);v2=(Reference,Ljava/util/Iterator;);v3=(Boolean);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_3

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    move-object v2, v0

    .line 360
    goto :goto_1

    .line 364
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    if-nez v3, :cond_0

    move-object v2, v0

    .line 365
    goto :goto_1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, value:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    monitor-enter p0

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, oldValue:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :try_start_0
    #v2=(Null);
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 383
    .local v1, oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    #v1=(Reference,Ljava/util/Map$Entry;);
    if-eqz v1, :cond_0

    .line 385
    invoke-interface {v1, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    move-object v0, v3

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 391
    :goto_0
    #v0=(Conflicted);v2=(Reference,Ljava/util/List;);v4=(Conflicted);
    monitor-exit p0

    return-object v2

    .line 389
    :cond_0
    #v0=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    #v3=(Reference,Ljava/util/Set;);
    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    #v4=(UninitRef,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-direct {v4, p1, p2}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    #v4=(Reference,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference,Ljava/util/List;);v3=(Conflicted);v4=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public declared-synchronized removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 3
    .parameter "dnsEntry"

    .prologue
    .line 534
    monitor-enter p0

    const/4 v1, 0x0

    .line 535
    .local v1, result:Z
    #v1=(Null);
    if-eqz p1, :cond_0

    .line 537
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 538
    .local v0, entry:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/Collection;);
    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 542
    #v1=(Boolean);
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_0

    .line 543
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v0           #entry:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    return v1

    .line 534
    :catchall_0
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 6
    .parameter "newDNSEntry"
    .parameter "existingDNSEntry"

    .prologue
    .line 559
    monitor-enter p0

    const/4 v2, 0x0

    .line 560
    .local v2, result:Z
    #v2=(Null);
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 562
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 564
    .local v1, oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    #v1=(Reference,Ljava/util/Map$Entry;);
    const/4 v0, 0x0

    .line 565
    .local v0, aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Null);
    if-eqz v1, :cond_1

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 573
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_0
    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 574
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    if-eqz v1, :cond_2

    .line 578
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :goto_1
    #v5=(Conflicted);
    const/4 v2, 0x1

    .line 587
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    monitor-exit p0

    return v2

    .line 571
    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1       #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_1
    :try_start_1
    #v0=(Null);v1=(Reference,Ljava/util/Map$Entry;);v2=(Null);v3=(Reference,Ljava/lang/String;);v4=(Reference,Ljava/lang/String;);v5=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    #v4=(UninitRef,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5, v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    #v4=(Reference,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 559
    .end local v0           #aNewValue:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1           #oldEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 599
    .local v0, aLog:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    const-string v2, "\t---- cache ----"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 600
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/util/Map$Entry;

    .line 602
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "\n\t\t"

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    .end local v0           #aLog:Ljava/lang/StringBuffer;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2
.end method
