.class public Ljavax/jmdns/impl/DNSRecord$Text;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Text"
.end annotation


# instance fields
.field _text:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 6
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "text"

    .prologue
    .line 592
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$Text;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 593
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    .line 594
    return-void
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
    .line 642
    return-object p5
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 5
    .parameter "dns"

    .prologue
    .line 664
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSRecord$Text;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 665
    .local v1, info:Ljavax/jmdns/ServiceInfo;
    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    move-object v0, v1

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 666
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

    .line 653
    #v2=(Null);
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$Text;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    iget-object v6, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v6=(Reference,[B);
    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, p1

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 1
    .parameter "dns"
    .parameter "expirationTime"

    .prologue
    .line 625
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .parameter "dns"

    .prologue
    .line 636
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 605
    #v6=(Null);
    move-object v0, p1

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Text;

    move-object v3, v0

    .line 606
    .local v3, txt:Ljavax/jmdns/impl/DNSRecord$Text;
    #v3=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);
    iget-object v4, v3, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v4=(Reference,[B);
    array-length v4, v4

    #v4=(Integer);
    iget-object v5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v5=(Reference,[B);
    array-length v5, v5

    #v5=(Integer);
    if-eq v4, v5, :cond_0

    move v4, v6

    .line 617
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);
    return v4

    .line 610
    :cond_0
    #v1=(Uninit);v2=(Uninit);v4=(Integer);
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v4=(Reference,[B);
    array-length v1, v4

    .local v1, i:I
    #v1=(Integer);
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    #v2=(Integer);v4=(Conflicted);
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-gtz v2, :cond_1

    .line 617
    const/4 v4, 0x1

    #v4=(One);
    goto :goto_0

    .line 612
    :cond_1
    #v4=(Conflicted);
    iget-object v4, v3, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v4=(Reference,[B);
    aget-byte v4, v4, v1

    #v4=(Byte);
    iget-object v5, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v5=(Reference,[B);
    aget-byte v5, v5, v1

    #v5=(Byte);
    if-eq v4, v5, :cond_2

    move v4, v6

    .line 614
    #v4=(Null);
    goto :goto_0

    :cond_2
    #v4=(Byte);
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "aLog"

    .prologue
    .line 677
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, " text: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    array-length v1, v1

    #v1=(Integer);
    const/16 v2, 0x14

    #v2=(PosByte);
    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    new-instance v2, Ljava/lang/String;

    #v2=(UninitRef,Ljava/lang/String;);
    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v3=(Reference,[B);
    const/4 v4, 0x0

    #v4=(Null);
    const/16 v5, 0x11

    #v5=(PosByte);
    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    return-void

    .line 678
    :cond_0
    #v1=(Integer);v2=(PosByte);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v1, Ljava/lang/String;

    #v1=(UninitRef,Ljava/lang/String;);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v2=(Reference,[B);
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 599
    iget-object v0, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v0=(Reference,[B);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v2=(Reference,[B);
    array-length v2, v2

    #v2=(Integer);
    invoke-virtual {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 600
    return-void
.end method
