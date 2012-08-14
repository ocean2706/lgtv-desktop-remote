.class public abstract Ljavax/jmdns/impl/DNSRecord$Address;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Address"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field _addr:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    const-class v0, Ljavax/jmdns/impl/DNSRecord$Address;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    .line 297
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "addr"

    .prologue
    .line 305
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 306
    #p0=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    iput-object p6, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    .line 307
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 4
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "rawAddress"

    .prologue
    .line 311
    invoke-direct/range {p0 .. p5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 314
    :try_start_0
    #p0=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    invoke-static {p6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    #v1=(Reference,Ljava/net/InetAddress;);
    iput-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 316
    :catch_0
    #v0=(Uninit);v1=(Conflicted);v2=(Uninit);v3=(Uninit);
    move-exception v1

    #v1=(Reference,Ljava/net/UnknownHostException;);
    move-object v0, v1

    .line 318
    .local v0, exception:Ljava/net/UnknownHostException;
    #v0=(Reference,Ljava/net/UnknownHostException;);
    sget-object v1, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v2=(Reference,Ljava/util/logging/Level;);
    const-string v3, "Address() exception "

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .parameter "dns"
    .parameter "in"
    .parameter "addr"
    .parameter "port"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    return-object p5
.end method

.method getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Address;->_addr:Ljava/net/InetAddress;

    #v0=(Reference,Ljava/net/InetAddress;);
    return-object v0
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 5
    .parameter "dns"

    .prologue
    .line 445
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 446
    .local v1, info:Ljavax/jmdns/ServiceInfo;
    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    move-object v0, v1

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 447
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    #v2=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v2, p1, v3, v4, v1}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v2=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    return-object v2
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .parameter "persistent"

    .prologue
    const/4 v2, 0x0

    .line 432
    #v2=(Null);
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    const/4 v6, 0x0

    #v6=(Null);
    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, p1

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 434
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 7
    .parameter "dns"
    .parameter "expirationTime"

    .prologue
    .line 363
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v5

    #v5=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    const/16 v6, 0xe10

    #v6=(PosShort);
    invoke-virtual {v4, v5, v6}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;I)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v1

    .line 364
    .local v1, dnsAddress:Ljavax/jmdns/impl/DNSRecord$Address;
    #v1=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/DNSRecord$Address;->sameType(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    sget-object v4, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "handleQuery() Conflicting probe detected. lex compare "

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSRecord$Address;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSRecord$Address;->compareTo(Ljavax/jmdns/impl/DNSEntry;)I

    move-result v4

    #v4=(Integer);
    if-ltz v4, :cond_0

    .line 373
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 375
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 381
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    .line 382
    const/4 v4, 0x1

    .line 385
    :goto_1
    #v4=(Boolean);
    return v4

    .line 375
    :cond_1
    #v4=(Reference,Ljava/util/Iterator;);v5=(Boolean);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljavax/jmdns/ServiceInfo;

    .line 377
    .local v3, serviceInfo:Ljavax/jmdns/ServiceInfo;
    move-object v0, v3

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    .line 378
    .local v2, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 385
    .end local v2           #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v3           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    :cond_2
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Conflicted);v5=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);v6=(PosShort);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 7
    .parameter "dns"

    .prologue
    .line 394
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v5

    #v5=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    const/16 v6, 0xe10

    #v6=(PosShort);
    invoke-virtual {v4, v5, v6}, Ljavax/jmdns/impl/HostInfo;->getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;I)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v1

    .line 395
    .local v1, dnsAddress:Ljavax/jmdns/impl/DNSRecord$Address;
    #v1=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/DNSRecord$Address;->sameType(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 399
    sget-object v4, Ljavax/jmdns/impl/DNSRecord$Address;->logger1:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    const-string v5, "handleResponse() Denial detected"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->isProbing()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 403
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/HostInfo;->incrementHostName()Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 405
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 411
    :cond_0
    #v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->revertState()Z

    .line 412
    const/4 v4, 0x1

    .line 415
    :goto_1
    #v4=(Boolean);
    return v4

    .line 405
    :cond_1
    #v4=(Reference,Ljava/util/Iterator;);v5=(Boolean);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljavax/jmdns/ServiceInfo;

    .line 407
    .local v3, serviceInfo:Ljavax/jmdns/ServiceInfo;
    move-object v0, v3

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    .line 408
    .local v2, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->revertState()Z

    goto :goto_0

    .line 415
    .end local v2           #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v3           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    :cond_2
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Conflicted);v5=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method same(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameName(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method sameName(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 329
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Address;

    .end local p1
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 335
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    check-cast p1, Ljavax/jmdns/impl/DNSRecord$Address;

    .end local p1
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    #v1=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected toByteArray(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "dout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toByteArray(Ljava/io/DataOutputStream;)V

    .line 350
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    #v2=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 351
    .local v0, buffer:[B
    #v0=(Reference,[B);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    array-length v2, v0

    #v2=(Integer);
    if-lt v1, v2, :cond_0

    .line 355
    return-void

    .line 353
    :cond_0
    aget-byte v2, v0, v1

    #v2=(Byte);
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "aLog"

    .prologue
    .line 458
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, " address: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    return-void

    .line 459
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method
