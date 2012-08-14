.class Ljavax/jmdns/impl/DNSCache$_EmptyCache;
.super Ljavax/jmdns/impl/DNSCache;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "_EmptyCache"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSCache;-><init>()V

    #p0=(Reference,Ljavax/jmdns/impl/DNSCache$_EmptyCache;);
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 91
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    const/4 v0, 0x0

    #v0=(Null);
    return v0
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
    .line 146
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference,Ljava/util/Set;);
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 158
    instance-of v0, p1, Ljava/util/Map;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference,Ljava/util/Set;);
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
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
            ">;)",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, value:Ljava/util/List;,"Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference,Ljava/util/Set;);
    return-object v0
.end method
