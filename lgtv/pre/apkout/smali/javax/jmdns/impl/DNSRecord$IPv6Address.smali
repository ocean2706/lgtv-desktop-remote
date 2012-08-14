.class public Ljavax/jmdns/impl/DNSRecord$IPv6Address;
.super Ljavax/jmdns/impl/DNSRecord$Address;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6Address"
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
    .line 242
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
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

    .line 243
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
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
    .line 247
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
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

    .line 248
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
    return-void
.end method


# virtual methods
.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 1
    .parameter "persistent"

    .prologue
    .line 287
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord$Address;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 288
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    iget-object p0, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    .end local p0
    check-cast p0, Ljava/net/Inet6Address;

    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setAddress(Ljava/net/Inet6Address;)V

    .line 289
    return-object v0
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 7
    .parameter "out"

    .prologue
    const/16 v6, 0x10

    #v6=(PosByte);
    const/4 v5, 0x0

    .line 253
    #v5=(Null);
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    #v4=(Reference,Ljava/net/InetAddress;);
    if-eqz v4, :cond_1

    .line 255
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 257
    .local v0, buffer:[B
    #v0=(Reference,[B);
    iget-object v4, p0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;->_addr:Ljava/net/InetAddress;

    instance-of v4, v4, Ljava/net/Inet4Address;

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 259
    move-object v3, v0

    .line 260
    .local v3, tempbuffer:[B
    #v3=(Reference,[B);
    new-array v0, v6, [B

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v4=(Byte);
    if-lt v1, v6, :cond_2

    .line 273
    .end local v1           #i:I
    .end local v3           #tempbuffer:[B
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);
    array-length v2, v0

    .line 274
    .local v2, length:I
    #v2=(Integer);
    invoke-virtual {p1, v0, v5, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 276
    .end local v0           #buffer:[B
    .end local v2           #length:I
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void

    .line 263
    .restart local v0       #buffer:[B
    .restart local v1       #i:I
    .restart local v3       #tempbuffer:[B
    :cond_2
    #v0=(Reference,[B);v1=(Integer);v2=(Uninit);v3=(Reference,[B);v4=(Byte);
    const/16 v4, 0xb

    #v4=(PosByte);
    if-ge v1, v4, :cond_3

    .line 265
    const/16 v4, 0xc

    sub-int v4, v1, v4

    #v4=(Integer);
    aget-byte v4, v3, v4

    #v4=(Byte);
    aput-byte v4, v0, v1

    .line 261
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_3
    #v4=(PosByte);
    aput-byte v5, v0, v1

    goto :goto_1
.end method
