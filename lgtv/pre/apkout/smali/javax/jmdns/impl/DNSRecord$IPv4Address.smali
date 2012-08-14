.class public Ljavax/jmdns/impl/DNSRecord$IPv4Address;
.super Ljavax/jmdns/impl/DNSRecord$Address;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4Address"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V
    .locals 7
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "addr"

    .prologue
    .line 190
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Integer);
    move-object v6, p5

    #v6=(Reference,Ljava/net/InetAddress;);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSRecord$Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 191
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V
    .locals 7
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "rawAddress"

    .prologue
    .line 195
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Integer);
    move-object v6, p5

    #v6=(Reference,[B);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/DNSRecord$Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 196
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    return-void
.end method


# virtual methods
.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 1
    .parameter "persistent"

    .prologue
    .line 230
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 231
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    iget-object p0, p0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;->_addr:Ljava/net/InetAddress;

    .end local p0
    check-cast p0, Ljava/net/Inet4Address;

    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setAddress(Ljava/net/Inet4Address;)V

    .line 232
    return-object v0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 6
    .parameter "out"

    .prologue
    const/4 v5, 0x4

    #v5=(PosByte);
    const/4 v4, 0x0

    .line 201
    #v4=(Null);
    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;->_addr:Ljava/net/InetAddress;

    #v3=(Reference,Ljava/net/InetAddress;);
    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;->_addr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 205
    .local v0, buffer:[B
    #v0=(Reference,[B);
    iget-object v3, p0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;->_addr:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 212
    move-object v2, v0

    .line 213
    .local v2, tempbuffer:[B
    #v2=(Reference,[B);
    new-array v0, v5, [B

    .line 214
    const/16 v3, 0xc

    #v3=(PosByte);
    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    .end local v2           #tempbuffer:[B
    :cond_0
    #v2=(Conflicted);
    array-length v1, v0

    .line 217
    .local v1, length:I
    #v1=(Integer);
    invoke-virtual {p1, v0, v4, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 219
    .end local v0           #buffer:[B
    .end local v1           #length:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void
.end method
