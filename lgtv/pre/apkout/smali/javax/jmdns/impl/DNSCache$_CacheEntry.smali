.class public Ljavax/jmdns/impl/DNSCache$_CacheEntry;
.super Ljava/lang/Object;
.source "DNSCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "_CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<+",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _key:Ljava/lang/String;

.field private _value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, value:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    #p0=(Reference,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 204
    return-void

    .line 202
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    #p0=(Reference,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    instance-of v1, p1, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 214
    move-object v0, p1

    #v0=(Reference,Ljava/util/Map$Entry;);
    check-cast v0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    move-object v1, v0

    #v1=(Reference,Ljavax/jmdns/impl/DNSCache$_CacheEntry;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    .line 215
    check-cast p1, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    .end local p1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 217
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x0

    .line 260
    #v3=(Null);
    instance-of v1, p1, Ljava/util/Map$Entry;

    #v1=(Boolean);
    if-nez v1, :cond_0

    move v1, v3

    .line 262
    .end local p1
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return v1

    .restart local p1
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    move-object v0, p1

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    #v1=(Reference,Ljava/util/Map$Entry;);
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v1

    #v1=(Reference,Ljava/util/List;);
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    :cond_1
    #v1=(Boolean);
    move v1, v3

    #v1=(Null);
    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v0

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    #v2=(Null);
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    #v0=(Integer);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    #v1=(Integer);
    xor-int/2addr v0, v1

    return v0

    :cond_0
    #v0=(Reference,Ljava/lang/String;);v1=(Uninit);
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    goto :goto_0

    :cond_1
    #v1=(Reference,Ljava/util/List;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    #v1=(Integer);
    goto :goto_1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->setValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public setValue(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 246
    .local p1, value:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 247
    .local v0, oldValue:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    #v0=(Reference,Ljava/util/List;);
    iput-object p1, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 248
    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v0, aLog:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "\n\t\tname \'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    iget-object v2, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v1=(Conflicted);v4=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 297
    :goto_1
    #v3=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 288
    :cond_0
    :try_start_1
    #v3=(Boolean);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/DNSEntry;

    .line 290
    .local v1, entry:Ljavax/jmdns/impl/DNSEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "\n\t\t\t"

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    .end local v0           #aLog:Ljava/lang/StringBuffer;
    .end local v1           #entry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2

    .line 295
    .restart local v0       #aLog:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    #v0=(Reference,Ljava/lang/StringBuffer;);v1=(Uninit);v3=(Reference,Ljava/lang/String;);v4=(Uninit);
    const-string v2, " no entries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
