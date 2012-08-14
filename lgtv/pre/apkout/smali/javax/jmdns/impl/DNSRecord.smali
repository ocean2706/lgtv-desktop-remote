.class public abstract Ljavax/jmdns/impl/DNSRecord;
.super Ljavax/jmdns/impl/DNSEntry;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSRecord$Address;,
        Ljavax/jmdns/impl/DNSRecord$HostInformation;,
        Ljavax/jmdns/impl/DNSRecord$IPv4Address;,
        Ljavax/jmdns/impl/DNSRecord$IPv6Address;,
        Ljavax/jmdns/impl/DNSRecord$Pointer;,
        Ljavax/jmdns/impl/DNSRecord$Service;,
        Ljavax/jmdns/impl/DNSRecord$Text;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _created:J

.field private _source:Ljava/net/InetAddress;

.field private _ttl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Ljavax/jmdns/impl/DNSRecord;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSRecord;->logger:Ljava/util/logging/Logger;

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSEntry;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 50
    #p0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    iput p5, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Ljavax/jmdns/impl/DNSRecord;->_created:J

    .line 52
    return-void
.end method


# virtual methods
.method abstract addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 62
    instance-of v0, p1, Ljavax/jmdns/impl/DNSRecord;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/jmdns/impl/DNSRecord;

    .end local p1
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

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

.method getExpirationTime(I)J
    .locals 6
    .parameter "percent"

    .prologue
    .line 138
    iget-wide v0, p0, Ljavax/jmdns/impl/DNSRecord;->_created:J

    #v0=(LongLo);v1=(LongHi);
    iget v2, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    #v2=(Integer);
    mul-int/2addr v2, p1

    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v4, 0xa

    #v4=(LongLo);v5=(LongHi);
    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRecordSource()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord;->_source:Ljava/net/InetAddress;

    #v0=(Reference,Ljava/net/InetAddress;);
    return-object v0
.end method

.method getRemainingTTL(J)I
    .locals 6
    .parameter "now"

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    const/16 v2, 0x64

    #v2=(PosByte);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSRecord;->getExpirationTime(I)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    #v4=(LongLo);v5=(LongHi);
    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method public abstract getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
.end method

.method public getServiceInfo()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    return-object v0
.end method

.method public abstract getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
.end method

.method public getTTL()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    #v0=(Integer);
    return v0
.end method

.method abstract handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
.end method

.method abstract handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
.end method

.method public isExpired(J)Z
    .locals 2
    .parameter "now"

    .prologue
    .line 157
    const/16 v0, 0x64

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord;->getExpirationTime(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v0, p1

    #v0=(Byte);
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isStale(J)Z
    .locals 2
    .parameter "now"

    .prologue
    .line 168
    const/16 v0, 0x32

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord;->getExpirationTime(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, v0, p1

    #v0=(Byte);
    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method resetTTL(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 176
    iget-wide v0, p1, Ljavax/jmdns/impl/DNSRecord;->_created:J

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Ljavax/jmdns/impl/DNSRecord;->_created:J

    .line 177
    iget v0, p1, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    #v0=(Integer);
    iput v0, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    .line 178
    return-void
.end method

.method sameType(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 75
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method abstract sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
.end method

.method public setRecordSource(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1075
    iput-object p1, p0, Ljavax/jmdns/impl/DNSRecord;->_source:Ljava/net/InetAddress;

    .line 1076
    return-void
.end method

.method public setTTL(I)V
    .locals 0
    .parameter "ttl"

    .prologue
    .line 1097
    iput p1, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    .line 1098
    return-void
.end method

.method suppressedBy(Ljavax/jmdns/impl/DNSIncoming;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 104
    :try_start_0
    #v6=(Null);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v2

    #v2=(Reference,Ljava/util/Collection;);
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    #v0=(Conflicted);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    move v2, v6

    .line 117
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 104
    :cond_1
    #v1=(Uninit);v2=(Reference,Ljava/util/Iterator;);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 106
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSRecord;->suppressedBy(Ljavax/jmdns/impl/DNSRecord;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 113
    .end local v0           #answer:Ljavax/jmdns/impl/DNSRecord;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/ArrayIndexOutOfBoundsException;);
    move-object v1, v2

    .line 115
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    #v1=(Reference,Ljava/lang/ArrayIndexOutOfBoundsException;);
    sget-object v2, Ljavax/jmdns/impl/DNSRecord;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v3=(Reference,Ljava/util/logging/Level;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "suppressedBy() message "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v6

    .line 117
    #v2=(Null);
    goto :goto_0
.end method

.method suppressedBy(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget v0, p1, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    #v0=(Integer);
    iget v1, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    #v1=(Integer);
    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "aLog"

    .prologue
    .line 1091
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSEntry;->toString(Ljava/lang/StringBuilder;)V

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, " ttl: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/DNSRecord;->getRemainingTTL(J)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/jmdns/impl/DNSRecord;->_ttl:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    return-void
.end method

.method abstract write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
.end method
