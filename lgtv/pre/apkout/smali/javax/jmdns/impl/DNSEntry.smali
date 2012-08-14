.class public abstract Ljavax/jmdns/impl/DNSEntry;
.super Ljava/lang/Object;
.source "DNSEntry.java"


# instance fields
.field private final _dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

.field private final _key:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field final _qualifiedNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _type:Ljavax/jmdns/impl/constants/DNSRecordType;

.field private final _unique:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 7
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    #p0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    iput-object p1, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljavax/jmdns/impl/constants/DNSRecordType;

    .line 46
    iput-object p3, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 47
    iput-boolean p4, p0, Ljavax/jmdns/impl/DNSEntry;->_unique:Z

    .line 48
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    .line 49
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v5=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, domain:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, protocol:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, application:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    sget-object v5, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, instance:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    #v5=(Integer);
    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    #v6=(Conflicted);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    #v5=(Integer);
    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "_"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    #v6=(Conflicted);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    #v5=(Integer);
    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "_"

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    #v6=(Conflicted);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/jmdns/impl/DNSEntry;->_key:Ljava/lang/String;

    .line 54
    return-void

    .line 53
    :cond_0
    #v4=(UninitRef,Ljava/lang/StringBuilder;);v5=(Integer);v6=(Uninit);
    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    goto :goto_0

    :cond_1
    #v4=(Reference,Ljava/lang/StringBuilder;);v5=(Integer);v6=(Conflicted);
    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    goto :goto_1

    :cond_2
    #v5=(Integer);
    const-string v5, ""

    #v5=(Reference,Ljava/lang/String;);
    goto :goto_2
.end method


# virtual methods
.method public compareTo(Ljavax/jmdns/impl/DNSEntry;)I
    .locals 6
    .parameter "that"

    .prologue
    .line 256
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->toByteArray()[B

    move-result-object v3

    .line 257
    .local v3, thisBytes:[B
    #v3=(Reference,[B);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->toByteArray()[B

    move-result-object v2

    .line 258
    .local v2, thatBytes:[B
    #v2=(Reference,[B);
    const/4 v0, 0x0

    .local v0, i:I
    #v0=(Null);
    array-length v4, v3

    #v4=(Integer);
    array-length v5, v2

    #v5=(Integer);
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, n:I
    :goto_0
    #v0=(Integer);v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 269
    array-length v4, v3

    array-length v5, v2

    sub-int/2addr v4, v5

    :goto_1
    return v4

    .line 260
    :cond_0
    aget-byte v4, v3, v0

    #v4=(Byte);
    aget-byte v5, v2, v0

    #v5=(Byte);
    if-le v4, v5, :cond_1

    .line 262
    const/4 v4, 0x1

    #v4=(One);
    goto :goto_1

    .line 264
    :cond_1
    #v4=(Byte);
    aget-byte v4, v3, v0

    aget-byte v5, v2, v0

    if-ge v4, v5, :cond_2

    .line 266
    const/4 v4, -0x1

    goto :goto_1

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, result:Z
    #v2=(Null);
    instance-of v3, p1, Ljavax/jmdns/impl/DNSEntry;

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 67
    move-object v0, p1

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    move-object v1, v0

    .line 68
    .local v1, other:Ljavax/jmdns/impl/DNSEntry;
    #v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    iget-object v3, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    #v3=(One);
    move v2, v3

    .line 70
    .end local v1           #other:Ljavax/jmdns/impl/DNSEntry;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Boolean);v4=(Conflicted);
    return v2

    .line 68
    .restart local v1       #other:Ljavax/jmdns/impl/DNSEntry;
    :cond_1
    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);v2=(Null);v3=(Conflicted);v4=(Reference,Ljava/lang/Object;);
    const/4 v3, 0x0

    #v3=(Null);
    move v2, v3

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_key:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getQualifiedNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v0=(Reference,Ljava/util/Map;);
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_dnsClass:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    goto :goto_0
.end method

.method public getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_type:Ljavax/jmdns/impl/constants/DNSRecordType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    goto :goto_0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    #v2=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, subtype:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    return v0
.end method

.method public isDomainDiscoveryQuery()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    #v3=(Null);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v1=(Reference,Ljava/util/Map;);
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    #v2=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "dns-sd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v1=(Reference,Ljava/util/Map;);
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, name:Ljava/lang/String;
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const-string v1, "db"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const-string v1, "r"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const-string v1, "dr"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const-string v1, "lb"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    move v1, v3

    .line 168
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);
    return v1

    .line 166
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    #v0=(Reference,Ljava/lang/String;);
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .end local v0           #name:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Boolean);
    move v1, v3

    .line 168
    #v1=(Null);
    goto :goto_0
.end method

.method public abstract isExpired(J)Z
.end method

.method public isReverseLookup()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v0=(Reference,Ljava/util/Map;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "in-addr.arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v0=(Reference,Ljava/util/Map;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v0, "ip6.arpa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2
    .parameter "entry"

    .prologue
    .line 82
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isSameRecordClass(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2
    .parameter "entry"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isSameType(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2
    .parameter "entry"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isServicesDiscoveryMetaQuery()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v0=(Reference,Ljava/util/Map;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    #v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dns-sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSEntry;->_qualifiedNameMap:Ljava/util/Map;

    #v0=(Reference,Ljava/util/Map;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v0, "_services"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public abstract isStale(J)Z
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSEntry;->_unique:Z

    #v0=(Boolean);
    return v0
.end method

.method public sameSubtype(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 87
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "dout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "UTF8"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 223
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 224
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 225
    return-void
.end method

.method protected toByteArray()[B
    .locals 4

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    #v0=(Reference,Ljava/io/ByteArrayOutputStream;);
    new-instance v1, Ljava/io/DataOutputStream;

    #v1=(UninitRef,Ljava/io/DataOutputStream;);
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 238
    .local v1, dout:Ljava/io/DataOutputStream;
    #v1=(Reference,Ljava/io/DataOutputStream;);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSEntry;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 239
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 240
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    #v3=(Reference,[B);
    return-object v3

    .line 242
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dout:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    #v3=(Reference,Ljava/io/IOException;);
    move-object v2, v3

    .line 244
    .local v2, e:Ljava/io/IOException;
    #v2=(Reference,Ljava/io/IOException;);
    new-instance v3, Ljava/lang/InternalError;

    #v3=(UninitRef,Ljava/lang/InternalError;);
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #v3=(Reference,Ljava/lang/InternalError;);
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, aLog:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "["

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, " type: "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, ", class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-boolean v1, p0, Ljavax/jmdns/impl/DNSEntry;->_unique:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const-string v1, "-unique,"

    :goto_0
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, " name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSEntry;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSEntry;->toString(Ljava/lang/StringBuilder;)V

    .line 296
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    :cond_0
    #v1=(Boolean);
    const-string v1, ","

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "aLog"

    .prologue
    .line 306
    return-void
.end method
