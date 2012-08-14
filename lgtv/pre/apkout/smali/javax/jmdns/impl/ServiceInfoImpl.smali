.class public Ljavax/jmdns/impl/ServiceInfoImpl;
.super Ljavax/jmdns/ServiceInfo;
.source "ServiceInfoImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSListener;
.implements Ljava/lang/Cloneable;
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I


# instance fields
.field private _application:Ljava/lang/String;

.field private _domain:Ljava/lang/String;

.field private _ipv4Addr:Ljava/net/Inet4Address;

.field private _ipv6Addr:Ljava/net/Inet6Address;

.field private _name:Ljava/lang/String;

.field private _needTextAnnouncing:Z

.field private _persistent:Z

.field private _port:I

.field private _priority:I

.field private _props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private _protocol:Ljava/lang/String;

.field private _server:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

.field private _subtype:Ljava/lang/String;

.field private _text:[B

.field private _weight:I


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Ljavax/jmdns/impl/ServiceInfoImpl;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordType;->values()[Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3a

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A6:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x27

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_39

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x1d

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_38

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AFSDB:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x13

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_37

    :goto_4
    :try_start_4
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ANY:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x3b

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_36

    :goto_5
    :try_start_5
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_APL:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x2b

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_35

    :goto_6
    :try_start_6
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ATMA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x23

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_34

    :goto_7
    :try_start_7
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AXFR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x38

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_33

    :goto_8
    :try_start_8
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_CERT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x26

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_32

    :goto_9
    :try_start_9
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_CNAME:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x6

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_31

    :goto_a
    :try_start_a
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_DNAME:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x28

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_30

    :goto_b
    :try_start_b
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_DNSKEY:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x30

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2f

    :goto_c
    :try_start_c
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_DS:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x2c

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2e

    :goto_d
    :try_start_d
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_EID:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x20

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2d

    :goto_e
    :try_start_e
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_GID:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x33

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2c

    :goto_f
    :try_start_f
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_GPOS:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x1c

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2b

    :goto_10
    :try_start_10
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_HINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xe

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2a

    :goto_11
    :try_start_11
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_29

    :goto_12
    :try_start_12
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_ISDN:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x15

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_28

    :goto_13
    :try_start_13
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IXFR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x37

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_27

    :goto_14
    :try_start_14
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_KEY:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x1a

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_26

    :goto_15
    :try_start_15
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_KX:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x25

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_25

    :goto_16
    :try_start_16
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_LOC:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x1e

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_24

    :goto_17
    :try_start_17
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MAILA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x39

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_23

    :goto_18
    :try_start_18
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MAILB:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x3a

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_22

    :goto_19
    :try_start_19
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MB:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x8

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_21

    :goto_1a
    :try_start_1a
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MD:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_20

    :goto_1b
    :try_start_1b
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MF:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1f

    :goto_1c
    :try_start_1c
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MG:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x9

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1e

    :goto_1d
    :try_start_1d
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xf

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :goto_1e
    :try_start_1e
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xa

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1c

    :goto_1f
    :try_start_1f
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_MX:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x10

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1b

    :goto_20
    :try_start_20
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NAPTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x24

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1a

    :goto_21
    :try_start_21
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NIMLOC:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x21

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_19

    :goto_22
    :try_start_22
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NS:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_18

    :goto_23
    :try_start_23
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NSAP:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x17

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_17

    :goto_24
    :try_start_24
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NSAP_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x18

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_16

    :goto_25
    :try_start_25
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NSEC:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x2f

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_15

    :goto_26
    :try_start_26
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NULL:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xb

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_14

    :goto_27
    :try_start_27
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_NXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x1f

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_13

    :goto_28
    :try_start_28
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x2a

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_12

    :goto_29
    :try_start_29
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xd

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_11

    :goto_2a
    :try_start_2a
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PX:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x1b

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_10

    :goto_2b
    :try_start_2b
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_RP:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x12

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_f

    :goto_2c
    :try_start_2c
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_RRSIG:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x2e

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_e

    :goto_2d
    :try_start_2d
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_RT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x16

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_d

    :goto_2e
    :try_start_2e
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SIG:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x19

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_c

    :goto_2f
    :try_start_2f
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SINK:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x29

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_b

    :goto_30
    :try_start_30
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SOA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x7

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_a

    :goto_31
    :try_start_31
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x22

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_9

    :goto_32
    :try_start_32
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SSHFP:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x2d

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_8

    :goto_33
    :try_start_33
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TKEY:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x35

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_7

    :goto_34
    :try_start_34
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TSIG:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x36

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_6

    :goto_35
    :try_start_35
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x11

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_5

    :goto_36
    :try_start_36
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_UID:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x32

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_4

    :goto_37
    :try_start_37
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_UINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x31

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_3

    :goto_38
    :try_start_38
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_UNSPEC:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x34

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_2

    :goto_39
    :try_start_39
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_WKS:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xc

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_1

    :goto_3a
    :try_start_3a
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_X25:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x14

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_0

    :goto_3b
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Ljavax/jmdns/impl/ServiceInfoImpl;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3b

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3a

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_39

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_38

    :catch_4
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_37

    :catch_5
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_36

    :catch_6
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_35

    :catch_7
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_34

    :catch_8
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_33

    :catch_9
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_32

    :catch_a
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_31

    :catch_b
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_30

    :catch_c
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2f

    :catch_d
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2e

    :catch_e
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2d

    :catch_f
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2c

    :catch_10
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2b

    :catch_11
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2a

    :catch_12
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_29

    :catch_13
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_28

    :catch_14
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_27

    :catch_15
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_26

    :catch_16
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_25

    :catch_17
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_24

    :catch_18
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_23

    :catch_19
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_22

    :catch_1a
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_21

    :catch_1b
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_20

    :catch_1c
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1f

    :catch_1d
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1e

    :catch_1e
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1d

    :catch_1f
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1c

    :catch_20
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1b

    :catch_21
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1a

    :catch_22
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_19

    :catch_23
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_18

    :catch_24
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_17

    :catch_25
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_16

    :catch_26
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_15

    :catch_27
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_14

    :catch_28
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_13

    :catch_29
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_12

    :catch_2a
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_11

    :catch_2b
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_10

    :catch_2c
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_f

    :catch_2d
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_e

    :catch_2e
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_d

    :catch_2f
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_c

    :catch_30
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_b

    :catch_31
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_a

    :catch_32
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_9

    :catch_33
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_8

    :catch_34
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_7

    :catch_35
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_6

    :catch_36
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_5

    :catch_37
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_4

    :catch_38
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_3

    :catch_39
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_2

    :catch_3a
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 11
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"

    .prologue
    .line 126
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    #v3=(Reference,Ljava/util/Map;);
    const/4 v8, 0x0

    #v8=(Null);
    move-object v2, p0

    #v2=(UninitThis,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move v4, p4

    #v4=(Integer);
    move/from16 v5, p5

    #v5=(Integer);
    move/from16 v6, p6

    #v6=(Integer);
    move/from16 v7, p7

    #v7=(Boolean);
    invoke-direct/range {v2 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 127
    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object/from16 v0, p8

    #v0=(Reference,Ljava/lang/String;);
    move-object v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    iput-object v0, v1, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 130
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    #v10=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    invoke-direct {v10, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 131
    .local v10, out:Ljava/io/ByteArrayOutputStream;
    #v10=(Reference,Ljava/io/ByteArrayOutputStream;);
    move-object v0, v10

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    #v2=(Reference,[B);
    iput-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 134
    .end local v10           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    #v2=(Conflicted);v10=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/io/IOException;);
    move-object v9, v2

    .line 136
    .local v9, e:Ljava/io/IOException;
    #v9=(Reference,Ljava/io/IOException;);
    new-instance v2, Ljava/lang/RuntimeException;

    #v2=(UninitRef,Ljava/lang/RuntimeException;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "unexpected exception: "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/RuntimeException;);
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V
    .locals 7
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p8, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    invoke-static {p8}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    #v6=(Reference,[B);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move v2, p4

    #v2=(Integer);
    move v3, p5

    #v3=(Integer);
    move v4, p6

    #v4=(Integer);
    move v5, p7

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 154
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .locals 7
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"

    .prologue
    .line 169
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move v2, p4

    #v2=(Integer);
    move v3, p5

    #v3=(Integer);
    move v4, p6

    #v4=(Integer);
    move v5, p7

    #v5=(Boolean);
    move-object v6, p8

    #v6=(Reference,[B);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 170
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/4 v6, 0x0

    #v6=(Null);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/util/Map;);
    move v2, p2

    #v2=(Integer);
    move v3, p3

    #v3=(Integer);
    move v4, p4

    #v4=(Integer);
    move v5, p5

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 180
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 183
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    #v8=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 184
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    #v8=(Reference,Ljava/io/ByteArrayOutputStream;);
    invoke-static {v8, p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    #v0=(Reference,[B);
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 187
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    #v0=(Conflicted);v8=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/io/IOException;);
    move-object v7, v0

    .line 189
    .local v7, e:Ljava/io/IOException;
    #v7=(Reference,Ljava/io/IOException;);
    new-instance v0, Ljava/lang/RuntimeException;

    #v0=(UninitRef,Ljava/lang/RuntimeException;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "unexpected exception: "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/RuntimeException;);
    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .locals 7
    .parameter
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .local p6, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    #v6=(Reference,[B);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/util/Map;);
    move v2, p2

    #v2=(Integer);
    move v3, p3

    #v3=(Integer);
    move v4, p4

    #v4=(Integer);
    move v5, p5

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 175
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 2
    .parameter
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 195
    #p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 197
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v0=(Reference,Ljava/util/Map;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 198
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 199
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 200
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 201
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 203
    iput p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 204
    iput p3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 205
    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 206
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 207
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 208
    new-instance v1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v1=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-direct {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 209
    iput-boolean p5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 210
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 217
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 219
    #p0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getApplication()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 227
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 228
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 229
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v0

    #v0=(Reference,[B);
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 230
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->isPersistent()Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 231
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet4Address()Ljava/net/Inet4Address;

    move-result-object v0

    #v0=(Reference,Ljava/net/Inet4Address;);
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    .line 232
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet6Address()Ljava/net/Inet6Address;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addr:Ljava/net/Inet6Address;

    .line 234
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 235
    return-void
.end method

.method protected static checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    #v1=(UninitRef,Ljava/util/HashMap;);
    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 334
    .local v1, checkedQualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v1=(Reference,Ljava/util/HashMap;);
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_7

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 335
    .local v2, domain:Ljava/lang/String;
    :goto_0
    #v2=(Reference,Ljava/lang/String;);
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-nez v6, :cond_1

    .line 336
    :cond_0
    #v6=(Conflicted);
    const-string v2, "local"

    .line 337
    :cond_1
    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_8

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 341
    .local v4, protocol:Ljava/lang/String;
    :goto_1
    #v4=(Reference,Ljava/lang/String;);
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-nez v6, :cond_3

    .line 342
    :cond_2
    #v6=(Conflicted);
    const-string v4, "tcp"

    .line 343
    :cond_3
    invoke-static {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_9

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    .line 347
    .local v0, application:Ljava/lang/String;
    :goto_2
    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-nez v6, :cond_5

    .line 348
    :cond_4
    #v6=(Conflicted);
    const-string v0, ""

    .line 349
    :cond_5
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_a

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 353
    .local v3, instance:Ljava/lang/String;
    :goto_3
    #v3=(Reference,Ljava/lang/String;);
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-nez v6, :cond_b

    .line 354
    :cond_6
    #v6=(Conflicted);
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #v6=(UninitRef,Ljava/lang/IllegalArgumentException;);
    const-string v7, "The instance name component of a fully qualified service cannot be empty."

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v6

    .line 334
    .end local v0           #application:Ljava/lang/String;
    .end local v2           #domain:Ljava/lang/String;
    .end local v3           #instance:Ljava/lang/String;
    .end local v4           #protocol:Ljava/lang/String;
    :cond_7
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Boolean);v7=(Uninit);
    const-string v6, "local"

    #v6=(Reference,Ljava/lang/String;);
    move-object v2, v6

    #v2=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 340
    .restart local v2       #domain:Ljava/lang/String;
    :cond_8
    #v6=(Boolean);
    const-string v6, "tcp"

    #v6=(Reference,Ljava/lang/String;);
    move-object v4, v6

    #v4=(Reference,Ljava/lang/String;);
    goto :goto_1

    .line 346
    .restart local v4       #protocol:Ljava/lang/String;
    :cond_9
    #v6=(Boolean);
    const-string v6, ""

    #v6=(Reference,Ljava/lang/String;);
    move-object v0, v6

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 352
    .restart local v0       #application:Ljava/lang/String;
    :cond_a
    #v6=(Boolean);
    const-string v6, ""

    #v6=(Reference,Ljava/lang/String;);
    move-object v3, v6

    #v3=(Reference,Ljava/lang/String;);
    goto :goto_3

    .line 355
    .restart local v3       #instance:Ljava/lang/String;
    :cond_b
    #v6=(Integer);
    invoke-static {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_e

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    .line 359
    .local v5, subtype:Ljava/lang/String;
    :goto_4
    #v5=(Reference,Ljava/lang/String;);
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-nez v6, :cond_d

    .line 360
    :cond_c
    #v6=(Conflicted);
    const-string v3, ""

    .line 361
    :cond_d
    invoke-static {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 362
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    #v6=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-object v1

    .line 358
    .end local v5           #subtype:Ljava/lang/String;
    .restart local p0       #qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    :cond_e
    #v5=(Uninit);v6=(Boolean);
    const-string v6, ""

    #v6=(Reference,Ljava/lang/String;);
    move-object v5, v6

    #v5=(Reference,Ljava/lang/String;);
    goto :goto_4
.end method

.method public static decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 241
    .local v0, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v0=(Reference,Ljava/util/Map;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    #v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2e

    #v13=(PosByte);
    const/4 v12, 0x0

    .line 249
    #v12=(Null);
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, aType:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v7, Ljava/util/HashMap;

    #v7=(UninitRef,Ljava/util/HashMap;);
    const/4 v10, 0x5

    #v10=(PosByte);
    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 252
    .local v7, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v7=(Reference,Ljava/util/HashMap;);
    const-string v2, ""

    .line 253
    .local v2, domain:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v6, ""

    .line 254
    .local v6, protocol:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    move-object v1, v0

    .line 255
    .local v1, application:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v5, ""

    .line 256
    .local v5, name:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    const-string v9, ""

    .line 257
    .local v9, subtype:Ljava/lang/String;
    #v9=(Reference,Ljava/lang/String;);
    const-string v10, "in-addr.arpa"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_0

    const-string v10, "ip6.arpa"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_2

    .line 259
    :cond_0
    const-string v10, "in-addr.arpa"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_1

    const-string v10, "in-addr.arpa"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    #v10=(Integer);
    move v4, v10

    .line 260
    .local v4, index:I
    :goto_0
    #v4=(Integer);
    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-static {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    const-string v6, ""

    .line 263
    const-string v1, ""

    .line 320
    :goto_1
    #v3=(Conflicted);v8=(Conflicted);v11=(Conflicted);
    sget-object v10, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v10, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v10, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v10, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v10, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-object v7

    .line 259
    .end local v4           #index:I
    :cond_1
    #v3=(Uninit);v4=(Uninit);v8=(Uninit);v10=(Boolean);v11=(Uninit);
    const-string v10, "ip6.arpa"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    #v10=(Integer);
    move v4, v10

    #v4=(Integer);
    goto :goto_0

    .line 265
    :cond_2
    #v4=(Uninit);v10=(Boolean);
    const-string v10, "_"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_3

    const-string v10, "."

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_3

    .line 267
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 268
    .restart local v4       #index:I
    #v4=(Integer);
    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-static {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    const-string v6, ""

    .line 271
    const-string v1, ""

    goto :goto_1

    .line 277
    .end local v4           #index:I
    :cond_3
    #v4=(Uninit);v10=(Boolean);
    const-string v10, "_"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_4

    const-string v10, "_services"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_5

    .line 279
    :cond_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 280
    .restart local v4       #index:I
    #v4=(Integer);
    if-lez v4, :cond_5

    .line 283
    invoke-virtual {p0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 284
    add-int/lit8 v10, v4, 0x1

    #v10=(Integer);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    #v11=(Integer);
    if-ge v10, v11, :cond_5

    .line 285
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .end local v4           #index:I
    :cond_5
    #v4=(Conflicted);v11=(Conflicted);
    const-string v10, "._"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 292
    .restart local v4       #index:I
    #v4=(Integer);
    if-lez v4, :cond_6

    .line 294
    add-int/lit8 v8, v4, 0x2

    .line 295
    .local v8, start:I
    #v8=(Integer);
    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 296
    .local v3, end:I
    #v3=(Integer);
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 299
    .end local v3           #end:I
    .end local v8           #start:I
    :cond_6
    #v3=(Conflicted);v8=(Conflicted);
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_7

    .line 301
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 303
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v8, v10, 0x1

    .line 304
    .restart local v8       #start:I
    #v8=(Integer);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    #v11=(One);
    sub-int v3, v10, v11

    .line 305
    .restart local v3       #end:I
    #v3=(Integer);
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 306
    const/4 v10, 0x2

    #v10=(PosByte);
    sub-int v10, v4, v10

    #v10=(Integer);
    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    .end local v3           #end:I
    .end local v8           #start:I
    :cond_7
    #v3=(Conflicted);v8=(Conflicted);v11=(Conflicted);
    const-string v10, "._sub"

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 311
    if-lez v4, :cond_8

    .line 313
    add-int/lit8 v8, v4, 0x5

    .line 314
    .restart local v8       #start:I
    #v8=(Integer);
    invoke-virtual {v1, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 315
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .end local v8           #start:I
    :cond_8
    #v8=(Conflicted);
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private static removeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    .line 369
    #v3=(One);
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, newName:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "."

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    :cond_0
    const-string v1, "_"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_1
    const-string v1, "."

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 380
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_2
    #v1=(Boolean);v2=(Conflicted);
    return-object v0
.end method

.method private static textFromProperties(Ljava/util/Map;)[B
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .prologue
    .local p0, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v8, 0x0

    .line 1265
    #v8=(Null);
    if-eqz p0, :cond_6

    .line 1269
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    #v5=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    const/16 v8, 0x100

    #v8=(PosShort);
    invoke-direct {v5, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1270
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    #v5=(Reference,Ljava/io/ByteArrayOutputStream;);
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    #v8=(Reference,Ljava/util/Set;);
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Reference,Ljava/util/Iterator;);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_0

    .line 1302
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 1309
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    :goto_1
    #v5=(Conflicted);v8=(Reference,[B);v9=(Conflicted);
    return-object v8

    .line 1270
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :cond_0
    #v5=(Reference,Ljava/io/ByteArrayOutputStream;);v8=(Boolean);v9=(Reference,Ljava/util/Iterator;);
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    .line 1272
    .local v4, key:Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1273
    .local v7, val:Ljava/lang/Object;
    #v7=(Reference,Ljava/lang/Object;);
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    #v6=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    const/16 v8, 0x64

    #v8=(PosByte);
    invoke-direct {v6, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1274
    .local v6, out2:Ljava/io/ByteArrayOutputStream;
    #v6=(Reference,Ljava/io/ByteArrayOutputStream;);
    invoke-static {v6, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1275
    sget-object v8, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    #v8=(Reference,[B);
    if-eq v7, v8, :cond_1

    .line 1279
    instance-of v8, v7, Ljava/lang/String;

    #v8=(Boolean);
    if-eqz v8, :cond_3

    .line 1281
    const/16 v8, 0x3d

    #v8=(PosByte);
    invoke-virtual {v6, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1282
    move-object v0, v7

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    #v8=(Reference,Ljava/lang/String;);
    invoke-static {v6, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1294
    :cond_1
    :goto_2
    #v0=(Conflicted);
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1295
    .local v2, data:[B
    #v2=(Reference,[B);
    array-length v8, v2

    #v8=(Integer);
    const/16 v10, 0xff

    #v10=(PosShort);
    if-le v8, v10, :cond_2

    .line 1297
    new-instance v8, Ljava/io/IOException;

    #v8=(UninitRef,Ljava/io/IOException;);
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v11, "Cannot have individual values larger that 255 chars. Offending value: "

    #v11=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    if-eq v7, v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v12, "="

    #v12=(Reference,Ljava/lang/String;);
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_3
    #v12=(Conflicted);
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1299
    :cond_2
    #v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    array-length v8, v2

    #v8=(Integer);
    int-to-byte v8, v8

    #v8=(Byte);
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1300
    const/4 v8, 0x0

    #v8=(Null);
    array-length v10, v2

    #v10=(Integer);
    invoke-virtual {v5, v2, v8, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1304
    .end local v2           #data:[B
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #out2:Ljava/io/ByteArrayOutputStream;
    .end local v7           #val:Ljava/lang/Object;
    :catch_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v3, v8

    .line 1306
    .local v3, e:Ljava/io/IOException;
    #v3=(Reference,Ljava/io/IOException;);
    new-instance v8, Ljava/lang/RuntimeException;

    #v8=(UninitRef,Ljava/lang/RuntimeException;);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v10, "unexpected exception: "

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/RuntimeException;);
    throw v8

    .line 1284
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out2:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #val:Ljava/lang/Object;
    :cond_3
    :try_start_1
    #v3=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Reference,Ljava/io/ByteArrayOutputStream;);v6=(Reference,Ljava/io/ByteArrayOutputStream;);v7=(Reference,Ljava/lang/Object;);v8=(Boolean);v10=(Conflicted);
    instance-of v8, v7, [B

    if-eqz v8, :cond_4

    move-object v0, v7

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, [B

    move-object v8, v0

    #v8=(Reference,[B);
    array-length v8, v8

    #v8=(Integer);
    if-lez v8, :cond_4

    .line 1286
    const/16 v8, 0x3d

    #v8=(PosByte);
    invoke-virtual {v6, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1287
    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 1288
    .local v1, bval:[B
    #v1=(Reference,[B);
    const/4 v8, 0x0

    #v8=(Null);
    array-length v10, v1

    #v10=(Integer);
    invoke-virtual {v6, v1, v8, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 1290
    .end local v1           #bval:[B
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v8=(Integer);v10=(Conflicted);
    sget-object v8, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    #v8=(Reference,[B);
    if-eq v7, v8, :cond_1

    .line 1292
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #v8=(UninitRef,Ljava/lang/IllegalArgumentException;);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v10, "invalid property value: "

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v8

    .line 1297
    .restart local v2       #data:[B
    :cond_5
    #v2=(Reference,[B);v8=(UninitRef,Ljava/io/IOException;);v11=(Reference,[B);
    const-string v11, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1309
    .end local v2           #data:[B
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #out2:Ljava/io/ByteArrayOutputStream;
    .end local v7           #val:Ljava/lang/Object;
    :cond_6
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Null);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);
    new-array v8, v8, [B

    #v8=(Reference,[B);
    goto/16 :goto_1
.end method

.method static writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "out"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    const/4 v1, 0x0

    .local v1, i:I
    #v1=(Null);
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);
    if-lt v1, v2, :cond_0

    .line 764
    return-void

    .line 744
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 745
    .local v0, c:I
    #v0=(Char);
    const/4 v3, 0x1

    #v3=(One);
    if-lt v0, v3, :cond_1

    const/16 v3, 0x7f

    #v3=(PosByte);
    if-gt v0, v3, :cond_1

    .line 747
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 742
    :goto_1
    #v3=(Integer);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :cond_1
    #v3=(PosByte);
    const/16 v3, 0x7ff

    #v3=(PosShort);
    if-le v0, v3, :cond_2

    .line 753
    shr-int/lit8 v3, v0, 0xc

    #v3=(PosByte);
    and-int/lit8 v3, v3, 0xf

    #v3=(Integer);
    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 754
    shr-int/lit8 v3, v0, 0x6

    #v3=(Char);
    and-int/lit8 v3, v3, 0x3f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 755
    shr-int/lit8 v3, v0, 0x0

    #v3=(Char);
    and-int/lit8 v3, v3, 0x3f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 759
    :cond_2
    #v3=(PosShort);
    shr-int/lit8 v3, v0, 0x6

    #v3=(Char);
    and-int/lit8 v3, v3, 0x1f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 760
    shr-int/lit8 v3, v0, 0x0

    #v3=(Char);
    and-int/lit8 v3, v3, 0x3f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method _setText([B)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1260
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 1261
    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 974
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public answers(ILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    .locals 11
    .parameter "ttl"
    .parameter "localHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavax/jmdns/impl/HostInfo;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v3, 0x0

    .line 1216
    #v3=(Null);
    new-instance v9, Ljava/util/ArrayList;

    #v9=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    #v9=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 1219
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    move v4, p1

    #v4=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    move v4, p1

    #v4=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    iget v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    #v5=(Integer);
    iget v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    #v6=(Integer);
    iget v7, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    #v7=(Integer);
    invoke-virtual {p2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    move v3, v10

    #v3=(One);
    move v4, p1

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Text;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Text;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v5

    #v5=(Reference,[B);
    move v3, v10

    move v4, p1

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    return-object v9
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 1029
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 1030
    return-void
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->cancelState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1180
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    iget v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    #v2=(Integer);
    iget v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    #v3=(Integer);
    iget v4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    #v4=(Integer);
    iget-boolean v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    #v5=(Boolean);
    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    #v6=(Reference,[B);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 1139
    instance-of v0, p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local p1
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "local"

    goto :goto_0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getInet4Address()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    #v0=(Reference,Ljava/net/Inet4Address;);
    return-object v0
.end method

.method public getInet6Address()Ljava/net/Inet6Address;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addr:Ljava/net/Inet6Address;

    #v0=(Reference,Ljava/net/Inet6Address;);
    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    #v0=(Reference,Ljava/net/Inet4Address;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addr:Ljava/net/Inet6Address;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getNiceTextString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1150
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1151
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    const/4 v2, 0x0

    .local v2, i:I
    #v2=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v4

    #v4=(Reference,[B);
    array-length v3, v4

    .local v3, len:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v3=(Integer);v4=(Conflicted);
    if-lt v2, v3, :cond_0

    .line 1169
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    return-object v4

    .line 1153
    :cond_0
    #v4=(Conflicted);
    const/16 v4, 0xc8

    #v4=(PosShort);
    if-lt v2, v4, :cond_1

    .line 1155
    const-string v4, "..."

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1158
    :cond_1
    #v4=(PosShort);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v4

    #v4=(Reference,[B);
    aget-byte v4, v4, v2

    #v4=(Byte);
    and-int/lit16 v1, v4, 0xff

    .line 1159
    .local v1, ch:I
    #v1=(Integer);
    const/16 v4, 0x20

    #v4=(PosByte);
    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-le v1, v4, :cond_3

    .line 1161
    :cond_2
    const-string v4, "\\0"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1162
    const/16 v4, 0x8

    #v4=(PosByte);
    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    :goto_2
    #v4=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1166
    :cond_3
    #v4=(PosByte);
    int-to-char v4, v1

    #v4=(Char);
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    #v0=(Integer);
    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    #v0=(Integer);
    return v0
.end method

.method declared-synchronized getProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    #v7=(Reference,Ljava/util/Map;);
    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v7

    if-eqz v7, :cond_0

    .line 823
    new-instance v5, Ljava/util/Hashtable;

    #v5=(UninitRef,Ljava/util/Hashtable;);
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 824
    .local v5, properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    #v5=(Reference,Ljava/util/Hashtable;);
    const/4 v3, 0x0

    .local v3, off:I
    #v3=(Null);
    move v4, v3

    .line 825
    .end local v3           #off:I
    .local v4, off:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Integer);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v7

    array-length v7, v7

    #v7=(Integer);
    if-lt v4, v7, :cond_1

    move v3, v4

    .line 860
    .end local v4           #off:I
    .restart local v3       #off:I
    :goto_1
    #v7=(Conflicted);
    iput-object v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 862
    .end local v3           #off:I
    .end local v5           #properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v7, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    #v7=(Reference,Ljava/util/Map;);
    if-eqz v7, :cond_8

    iget-object v7, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v7

    .line 828
    .restart local v4       #off:I
    .restart local v5       #properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_1
    :try_start_1
    #v3=(Integer);v4=(Integer);v5=(Reference,Ljava/util/Hashtable;);v7=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v7

    #v7=(Reference,[B);
    add-int/lit8 v3, v4, 0x1

    .end local v4           #off:I
    .restart local v3       #off:I
    aget-byte v7, v7, v4

    #v7=(Byte);
    and-int/lit16 v1, v7, 0xff

    .line 829
    .local v1, len:I
    #v1=(Integer);
    if-eqz v1, :cond_2

    add-int v7, v3, v1

    #v7=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v8

    #v8=(Reference,[B);
    array-length v8, v8

    #v8=(Integer);
    if-le v7, v8, :cond_3

    .line 831
    :cond_2
    #v8=(Conflicted);
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 821
    .end local v1           #len:I
    .end local v3           #off:I
    .end local v5           #properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :catchall_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v7

    .line 835
    .restart local v1       #len:I
    .restart local v3       #off:I
    .restart local v5       #properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_3
    #v1=(Integer);v3=(Integer);v4=(Integer);v5=(Reference,Ljava/util/Hashtable;);v7=(Integer);v8=(Integer);
    const/4 v0, 0x0

    .line 836
    .local v0, i:I
    :goto_3
    #v0=(Integer);
    if-ge v0, v1, :cond_4

    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v7

    #v7=(Reference,[B);
    add-int v8, v3, v0

    aget-byte v7, v7, v8

    #v7=(Byte);
    const/16 v8, 0x3d

    #v8=(PosByte);
    if-ne v7, v8, :cond_5

    .line 842
    :cond_4
    #v7=(Integer);v8=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v7

    #v7=(Reference,[B);
    invoke-virtual {p0, v7, v3, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, name:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    if-nez v2, :cond_6

    .line 845
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    goto :goto_1

    .line 836
    .end local v2           #name:Ljava/lang/String;
    :cond_5
    #v2=(Conflicted);v7=(Byte);v8=(PosByte);
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 848
    .restart local v2       #name:Ljava/lang/String;
    :cond_6
    #v2=(Reference,Ljava/lang/String;);v7=(Reference,[B);v8=(Integer);
    if-ne v0, v1, :cond_7

    .line 850
    sget-object v7, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    invoke-virtual {v5, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    .end local v3           #off:I
    .restart local v4       #off:I
    goto :goto_0

    .line 854
    .end local v4           #off:I
    .restart local v3       #off:I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    sub-int v7, v1, v0

    #v7=(Integer);
    new-array v6, v7, [B

    .line 855
    .local v6, value:[B
    #v6=(Reference,[B);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v7

    #v7=(Reference,[B);
    add-int v8, v3, v0

    const/4 v9, 0x0

    #v9=(Null);
    sub-int v10, v1, v0

    #v10=(Integer);
    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    invoke-virtual {v5, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    add-int/2addr v3, v1

    move v4, v3

    .end local v3           #off:I
    .restart local v4       #off:I
    goto :goto_0

    .line 862
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #off:I
    .end local v5           #properties:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    .end local v6           #value:[B
    :cond_8
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_2
.end method

.method public declared-synchronized getPropertyBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "name"

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    #v0=(Reference,Ljava/util/Map;);
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public getPropertyNames()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 671
    .local v1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    #v1=(Reference,Ljava/util/Map;);
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    #v2=(Reference,Ljava/util/Set;);
    move-object v0, v2

    .line 672
    .local v0, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    #v0=(Reference,Ljava/util/Set;);
    new-instance v2, Ljava/util/Vector;

    #v2=(UninitRef,Ljava/util/Vector;);
    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    #v2=(Reference,Ljava/util/Vector;);
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2

    .line 671
    .end local v0           #names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    #v2=(Reference,Ljava/util/Set;);
    move-object v0, v2

    #v0=(Reference,Ljava/util/Set;);
    goto :goto_0
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    #v1=(Reference,Ljava/util/Map;);
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 653
    const/4 v1, 0x0

    .line 659
    :goto_0
    #v2=(Conflicted);
    monitor-exit p0

    return-object v1

    .line 655
    :cond_0
    :try_start_1
    #v2=(Uninit);
    sget-object v1, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    if-ne v0, v1, :cond_1

    .line 657
    const-string v1, "true"

    goto :goto_0

    .line 659
    :cond_1
    const/4 v1, 0x0

    #v1=(Null);
    array-length v2, v0

    #v2=(Integer);
    invoke-virtual {p0, v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 650
    .end local v0           #data:[B
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tcp"

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 441
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, domain:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, protocol:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, application:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    .line 448
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

    return-object v4

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

.method public getQualifiedNameMap()Ljava/util/Map;
    .locals 3
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
    .line 727
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    const/4 v1, 0x5

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 729
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v0=(Reference,Ljava/util/HashMap;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getText()[B
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    #v0=(Reference,[B);
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    goto :goto_0
.end method

.method public getTextBytes()[B
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v0

    #v0=(Reference,[B);
    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 588
    .local v1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    #v1=(Reference,Ljava/util/Map;);
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    #v3=(Reference,Ljava/util/Set;);
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 590
    .local v0, key:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, [B

    .line 591
    .local v2, value:[B
    if-eqz v2, :cond_0

    array-length v3, v2

    #v3=(Integer);
    if-lez v3, :cond_0

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    #v4=(UninitRef,Ljava/lang/String;);
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:[B
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-object v3

    .restart local v0       #key:Ljava/lang/String;
    .restart local v2       #value:[B
    :cond_0
    #v0=(Reference,Ljava/lang/String;);v2=(Reference,[B);v3=(Conflicted);v4=(Boolean);
    move-object v3, v0

    .line 595
    #v3=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 597
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:[B
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const-string v3, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 393
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, domain:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, protocol:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, application:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "_"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    #v5=(Conflicted);
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "_"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    #v5=(Conflicted);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    #v3=(UninitRef,Ljava/lang/StringBuilder;);v4=(Integer);v5=(Uninit);
    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    goto :goto_0

    :cond_1
    #v3=(Reference,Ljava/lang/StringBuilder;);v4=(Integer);v5=(Conflicted);
    const-string v4, ""

    #v4=(Reference,Ljava/lang/String;);
    goto :goto_1
.end method

.method public getTypeWithSubtype()Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, subtype:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "_"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "._sub."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    #v3=(Conflicted);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    #v1=(UninitRef,Ljava/lang/StringBuilder;);v2=(Integer);v3=(Uninit);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string v0, "http"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "protocol"

    .prologue
    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, url:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "path"

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, path:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 619
    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-ltz v2, :cond_1

    .line 621
    move-object v1, v0

    .line 628
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v1

    .line 625
    :cond_1
    #v2=(Integer);v3=(Integer);v4=(Uninit);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    move-object v3, v0

    :goto_1
    #v3=(Reference,Ljava/lang/String;);v4=(Conflicted);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    #v3=(Boolean);v4=(Uninit);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/"

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    #v0=(Integer);
    return v0
.end method

.method public declared-synchronized hasData()Z
    .locals 1

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v0=(Integer);
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    monitor-exit p0

    return v0

    :cond_0
    #v0=(Conflicted);
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

.method public hashCode()I
    .locals 1

    .prologue
    .line 1128
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnouncing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 1040
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1335
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    #v0=(Boolean);
    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isProbing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public needTextAnnouncing()Z
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    #v0=(Boolean);
    return v0
.end method

.method readUTF([BII)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v7, 0x0

    .line 771
    #v7=(Null);
    move v3, p2

    .line 772
    .local v3, offset:I
    #v3=(Integer);
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 773
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    add-int v2, v3, p3

    .local v2, end:I
    #v2=(Integer);
    move v4, v3

    .end local v3           #offset:I
    .local v4, offset:I
    :goto_0
    #v1=(Conflicted);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    if-lt v4, v2, :cond_0

    .line 816
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    move v3, v4

    .end local v4           #offset:I
    .restart local v3       #offset:I
    :goto_1
    return-object v5

    .line 775
    .end local v3           #offset:I
    .restart local v4       #offset:I
    :cond_0
    #v5=(Conflicted);
    add-int/lit8 v3, v4, 0x1

    .end local v4           #offset:I
    .restart local v3       #offset:I
    aget-byte v5, p1, v4

    #v5=(Byte);
    and-int/lit16 v1, v5, 0xff

    .line 776
    .local v1, ch:I
    #v1=(Integer);
    shr-int/lit8 v5, v1, 0x4

    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 806
    :pswitch_0
    add-int/lit8 v5, v3, 0x1

    if-lt v5, p3, :cond_3

    move-object v5, v7

    .line 808
    #v5=(Null);
    goto :goto_1

    .line 790
    :pswitch_1
    #v5=(Integer);
    if-lt v3, p3, :cond_1

    move-object v5, v7

    .line 792
    #v5=(Null);
    goto :goto_1

    .line 795
    :cond_1
    #v5=(Integer);
    and-int/lit8 v5, v1, 0x1f

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .restart local v4       #offset:I
    aget-byte v6, p1, v3

    #v6=(Byte);
    and-int/lit8 v6, v6, 0x3f

    #v6=(Integer);
    or-int v1, v5, v6

    move v3, v4

    .line 814
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :goto_2
    :pswitch_2
    #v6=(Conflicted);
    int-to-char v5, v1

    #v5=(Char);
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .end local v3           #offset:I
    .restart local v4       #offset:I
    goto :goto_0

    .line 798
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :pswitch_3
    #v5=(Integer);
    add-int/lit8 v5, v3, 0x2

    if-lt v5, p3, :cond_2

    move-object v5, v7

    .line 800
    #v5=(Null);
    goto :goto_1

    .line 803
    :cond_2
    #v5=(Integer);
    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v5, v5, 0xc

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .restart local v4       #offset:I
    aget-byte v6, p1, v3

    #v6=(Byte);
    and-int/lit8 v6, v6, 0x3f

    #v6=(Integer);
    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v3, v4, 0x1

    .end local v4           #offset:I
    .restart local v3       #offset:I
    aget-byte v6, p1, v4

    #v6=(Byte);
    and-int/lit8 v6, v6, 0x3f

    #v6=(Integer);
    or-int v1, v5, v6

    .line 804
    goto :goto_2

    .line 811
    :cond_3
    #v6=(Conflicted);
    and-int/lit8 v5, v1, 0x3f

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .restart local v4       #offset:I
    aget-byte v6, p1, v3

    #v6=(Byte);
    and-int/lit8 v6, v6, 0xf

    #v6=(Integer);
    or-int v1, v5, v6

    move v3, v4

    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_2

    .line 776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->recoverState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1018
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 1019
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->revertState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method setAddress(Ljava/net/Inet4Address;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 497
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    .line 498
    return-void
.end method

.method setAddress(Ljava/net/Inet6Address;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 506
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addr:Ljava/net/Inet6Address;

    .line 507
    return-void
.end method

.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .parameter "dns"

    .prologue
    .line 1319
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1320
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 430
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setNeedTextAnnouncing(Z)V
    .locals 2
    .parameter "needTextAnnouncing"

    .prologue
    .line 1344
    iput-boolean p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    .line 1345
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 1349
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method setServer(Ljava/lang/String;)V
    .locals 0
    .parameter "server"

    .prologue
    .line 466
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setText(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1250
    .local p1, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v0

    #v0=(Reference,[B);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setText([B)V

    .line 1251
    return-void
.end method

.method public setText([B)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1235
    monitor-enter p0

    .line 1237
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 1238
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 1235
    monitor-exit p0

    .line 1240
    return-void

    .line 1235
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1192
    .local v0, buf:Ljava/lang/StringBuilder;
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

    const-string v2, " "

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    const-string v1, "name: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    #v3=(Conflicted);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    const-string v1, "\' address: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1197
    const/16 v1, 0x3a

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1199
    const-string v1, "\' status: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    const-string v1, "\' is persistent,"

    :goto_1
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_2
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getText()[B

    move-result-object v1

    array-length v1, v1

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 1207
    const-string v1, "\n"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getNiceTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :cond_0
    #v1=(Conflicted);
    const/16 v1, 0x5d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    return-object v1

    .line 1194
    :cond_1
    #v1=(UninitRef,Ljava/lang/StringBuilder;);v2=(Integer);v3=(Uninit);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 1201
    :cond_2
    #v1=(Boolean);v3=(Conflicted);
    const-string v1, "\',"

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_1

    .line 1203
    :cond_3
    #v1=(Boolean);
    const-string v1, "NO "

    #v1=(Reference,Ljava/lang/String;);
    goto :goto_2
.end method

.method public updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V
    .locals 11
    .parameter "dnsCache"
    .parameter "now"
    .parameter "rec"

    .prologue
    const/4 v10, 0x0

    .line 874
    #v10=(Null);
    instance-of v8, p4, Ljavax/jmdns/impl/DNSRecord;

    #v8=(Boolean);
    if-eqz v8, :cond_2

    invoke-virtual {p4, p2, p3}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 876
    const/4 v5, 0x0

    .line 877
    .local v5, serviceUpdated:Z
    #v5=(Null);
    invoke-static {}, Ljavax/jmdns/impl/ServiceInfoImpl;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I

    move-result-object v8

    #v8=(Reference,[I);
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    #v9=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v9}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v9

    #v9=(Integer);
    aget v8, v8, v9

    #v8=(Integer);
    sparse-switch v8, :sswitch_data_0

    .line 934
    :cond_0
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 936
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    .line 937
    .local v1, dns:Ljavax/jmdns/impl/JmDNSImpl;
    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    if-eqz v1, :cond_1

    .line 939
    check-cast p4, Ljavax/jmdns/impl/DNSRecord;

    .end local p4
    invoke-virtual {p4, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v2

    .line 940
    .local v2, event:Ljavax/jmdns/ServiceEvent;
    #v2=(Reference,Ljavax/jmdns/ServiceEvent;);
    new-instance v3, Ljavax/jmdns/impl/ServiceEventImpl;

    #v3=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v1, v8, v9, p0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 941
    .end local v2           #event:Ljavax/jmdns/ServiceEvent;
    .local v3, event:Ljavax/jmdns/ServiceEvent;
    #v3=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v1, v3}, Ljavax/jmdns/impl/JmDNSImpl;->handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V

    .line 945
    .end local v1           #dns:Ljavax/jmdns/impl/JmDNSImpl;
    .end local v3           #event:Ljavax/jmdns/ServiceEvent;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    monitor-enter p0

    .line 947
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 945
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    .end local v5           #serviceUpdated:Z
    :cond_2
    #v5=(Conflicted);
    return-void

    .line 880
    .restart local v5       #serviceUpdated:Z
    .restart local p4
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Uninit);v7=(Uninit);v8=(Integer);v9=(Integer);v10=(Null);
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 882
    move-object v0, p4

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Address;

    move-object v8, v0

    #v8=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet4Address;

    iput-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    .line 883
    const/4 v5, 0x1

    .line 885
    #v5=(One);
    goto :goto_0

    .line 887
    :sswitch_1
    #v0=(Uninit);v5=(Null);v8=(Integer);v9=(Integer);
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 889
    move-object v0, p4

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Address;

    move-object v8, v0

    #v8=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    check-cast v8, Ljava/net/Inet6Address;

    iput-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addr:Ljava/net/Inet6Address;

    .line 890
    const/4 v5, 0x1

    .line 892
    #v5=(One);
    goto :goto_0

    .line 894
    :sswitch_2
    #v0=(Uninit);v5=(Null);v8=(Integer);v9=(Integer);
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 896
    move-object v0, p4

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Service;

    move-object v6, v0

    .line 897
    .local v6, srv:Ljavax/jmdns/impl/DNSRecord$Service;
    #v6=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    if-eqz v8, :cond_3

    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_3

    const/4 v8, 0x0

    #v8=(Null);
    move v4, v8

    .line 898
    .local v4, serverChanged:Z
    :goto_1
    #v4=(Boolean);v8=(Boolean);
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    iput-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 899
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v8

    #v8=(Integer);
    iput v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 900
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getWeight()I

    move-result v8

    iput v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 901
    invoke-virtual {v6}, Ljavax/jmdns/impl/DNSRecord$Service;->getPriority()I

    move-result v8

    iput v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 902
    if-eqz v4, :cond_4

    .line 904
    iput-object v10, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addr:Ljava/net/Inet4Address;

    .line 905
    iput-object v10, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addr:Ljava/net/Inet6Address;

    .line 906
    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    #v8=(Reference,Ljava/lang/String;);
    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {p1, v8, v9, v10}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v8

    invoke-virtual {p0, p1, p2, p3, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    .line 907
    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, v8, v9, v10}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v8

    invoke-virtual {p0, p1, p2, p3, v8}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto/16 :goto_0

    .line 897
    .end local v4           #serverChanged:Z
    :cond_3
    #v4=(Uninit);v8=(Conflicted);v10=(Null);
    const/4 v8, 0x1

    #v8=(One);
    move v4, v8

    #v4=(One);
    goto :goto_1

    .line 912
    .restart local v4       #serverChanged:Z
    :cond_4
    #v4=(Boolean);v8=(Integer);
    const/4 v5, 0x1

    .line 915
    #v5=(One);
    goto/16 :goto_0

    .line 917
    .end local v4           #serverChanged:Z
    .end local v6           #srv:Ljavax/jmdns/impl/DNSRecord$Service;
    :sswitch_3
    #v0=(Uninit);v4=(Uninit);v5=(Null);v6=(Uninit);v9=(Integer);
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 919
    move-object v0, p4

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Text;

    move-object v7, v0

    .line 920
    .local v7, txt:Ljavax/jmdns/impl/DNSRecord$Text;
    #v7=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);
    iget-object v8, v7, Ljavax/jmdns/impl/DNSRecord$Text;->_text:[B

    #v8=(Reference,[B);
    iput-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 921
    const/4 v5, 0x1

    .line 923
    #v5=(One);
    goto/16 :goto_0

    .line 925
    .end local v7           #txt:Ljavax/jmdns/impl/DNSRecord$Text;
    :sswitch_4
    #v0=(Uninit);v5=(Null);v7=(Uninit);v8=(Integer);v9=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    if-nez v8, :cond_0

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    if-eqz v8, :cond_0

    .line 927
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    iput-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 928
    const/4 v5, 0x1

    .line 930
    #v5=(One);
    goto/16 :goto_0

    .line 945
    .end local p4
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move-exception v8

    :try_start_1
    #v8=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 877
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_4
        0x11 -> :sswitch_3
        0x1d -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1106
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForAnnounced(J)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1117
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForCanceled(J)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
