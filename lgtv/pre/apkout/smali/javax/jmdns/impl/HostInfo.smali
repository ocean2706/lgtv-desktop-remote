.class public Ljavax/jmdns/impl/HostInfo;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/HostInfo$HostInfoState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field protected _address:Ljava/net/InetAddress;

.field protected _interfaze:Ljava/net/NetworkInterface;

.field protected _name:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

.field private hostNameCount:I


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Ljavax/jmdns/impl/HostInfo;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    sput-object v0, Ljavax/jmdns/impl/HostInfo;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 4
    .parameter "address"
    .parameter "name"
    .parameter "dns"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    #p0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    new-instance v1, Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v1=(UninitRef,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-direct {v1, p3}, Ljavax/jmdns/impl/HostInfo$HostInfoState;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v1=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    iput-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    .line 115
    iput-object p1, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    .line 116
    iput-object p2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    .line 117
    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_interfaze:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 123
    :catch_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, exception:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v1, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v2=(Reference,Ljava/util/logging/Level;);
    const-string v3, "LocalHostInfo() exception "

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDNS4AddressRecord(I)Ljavax/jmdns/impl/DNSRecord$Address;
    .locals 6
    .parameter "ttl"

    .prologue
    .line 214
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    instance-of v0, v0, Ljava/net/Inet4Address;

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    instance-of v0, v0, Ljava/net/Inet6Address;

    #v0=(Boolean);
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 216
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    #v5=(Reference,Ljava/net/InetAddress;);
    move v4, p1

    #v4=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 218
    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v0

    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private getDNS6AddressRecord(I)Ljavax/jmdns/impl/DNSRecord$Address;
    .locals 6
    .parameter "ttl"

    .prologue
    .line 223
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    instance-of v0, v0, Ljava/net/Inet6Address;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    #v5=(Reference,Ljava/net/InetAddress;);
    move v4, p1

    #v4=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/net/InetAddress;)V

    .line 227
    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/HostInfo;
    .locals 9
    .parameter "address"
    .parameter "dns"

    .prologue
    .line 60
    const/4 v5, 0x0

    .line 63
    .local v5, localhost:Ljavax/jmdns/impl/HostInfo;
    #v5=(Null);
    move-object v1, p0

    .line 64
    .local v1, addr:Ljava/net/InetAddress;
    :try_start_0
    #v1=(Reference,Ljava/net/InetAddress;);
    const-string v0, ""

    .line 65
    .local v0, aName:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    if-nez v1, :cond_3

    .line 67
    const-string v6, "net.mdns.interface"

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, ip:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    if-eqz v4, :cond_2

    .line 70
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 76
    :goto_0
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 80
    sget-object v6, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    #v6=(Reference,Ljava/util/logging/Logger;);
    const-string v7, "Could not find any address beside the loopback."

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    .line 89
    .end local v4           #ip:Ljava/lang/String;
    :cond_0
    :goto_1
    #v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const-string v6, "."

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 90
    .local v3, idx:I
    #v3=(Integer);
    if-lez v3, :cond_1

    .line 92
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_1
    #v6=(Reference,Ljava/lang/String;);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, ".local."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v5, Ljavax/jmdns/impl/HostInfo;

    .end local v5           #localhost:Ljavax/jmdns/impl/HostInfo;
    #v5=(UninitRef,Ljavax/jmdns/impl/HostInfo;);
    invoke-direct {v5, v1, v0, p1}, Ljavax/jmdns/impl/HostInfo;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 103
    .end local v0           #aName:Ljava/lang/String;
    .end local v3           #idx:I
    .restart local v5       #localhost:Ljavax/jmdns/impl/HostInfo;
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Reference,Ljavax/jmdns/impl/HostInfo;);v8=(Conflicted);
    return-object v5

    .line 74
    .restart local v0       #aName:Ljava/lang/String;
    .restart local v4       #ip:Ljava/lang/String;
    :cond_2
    #v0=(Reference,Ljava/lang/String;);v2=(Uninit);v3=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Null);v7=(Uninit);v8=(Uninit);
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 86
    .end local v4           #ip:Ljava/lang/String;
    :cond_3
    #v4=(Uninit);v6=(Uninit);
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 97
    .end local v0           #aName:Ljava/lang/String;
    .end local v5           #localhost:Ljavax/jmdns/impl/HostInfo;
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-exception v6

    #v6=(Reference,Ljava/io/IOException;);
    move-object v2, v6

    .line 99
    .local v2, e:Ljava/io/IOException;
    #v2=(Reference,Ljava/io/IOException;);
    sget-object v6, Ljavax/jmdns/impl/HostInfo;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v8, "Could not intialize the host network interface because of an error: "

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 101
    new-instance v5, Ljavax/jmdns/impl/HostInfo;

    #v5=(UninitRef,Ljavax/jmdns/impl/HostInfo;);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "computer"

    invoke-direct {v5, v6, v7, p1}, Ljavax/jmdns/impl/HostInfo;-><init>(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/JmDNSImpl;)V

    .restart local v5       #localhost:Ljavax/jmdns/impl/HostInfo;
    #v5=(Reference,Ljavax/jmdns/impl/HostInfo;);
    goto :goto_2
.end method


# virtual methods
.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 281
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public answers(I)Ljava/util/Collection;
    .locals 2
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/HostInfo;->getDNS4AddressRecord(I)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    .line 250
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/HostInfo;->getDNS6AddressRecord(I)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1
    return-object v1
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 314
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 315
    return-void
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->cancelState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method getDNSAddressRecord(Ljavax/jmdns/impl/constants/DNSRecordType;I)Ljavax/jmdns/impl/DNSRecord$Address;
    .locals 2
    .parameter "type"
    .parameter "ttl"

    .prologue
    .line 201
    invoke-static {}, Ljavax/jmdns/impl/HostInfo;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I

    move-result-object v0

    #v0=(Reference,[I);
    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    return-object v0

    .line 204
    :sswitch_0
    #v0=(Integer);
    invoke-direct {p0, p2}, Ljavax/jmdns/impl/HostInfo;->getDNS4AddressRecord(I)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    goto :goto_0

    .line 206
    :sswitch_1
    #v0=(Integer);
    invoke-direct {p0, p2}, Ljavax/jmdns/impl/HostInfo;->getDNS6AddressRecord(I)Ljavax/jmdns/impl/DNSRecord$Address;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$Address;);
    goto :goto_0

    .line 201
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method getInet4Address()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    instance-of v0, v0, Ljava/net/Inet4Address;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 145
    iget-object p0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    .end local p0
    check-cast p0, Ljava/net/Inet4Address;

    move-object v0, p0

    .line 147
    :goto_0
    #v0=(Reference,Ljava/net/Inet4Address;);
    return-object v0

    .restart local p0
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method getInet6Address()Ljava/net/Inet6Address;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    #v0=(Reference,Ljava/net/InetAddress;);
    instance-of v0, v0, Ljava/net/Inet6Address;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    .end local p0
    check-cast p0, Ljava/net/Inet6Address;

    move-object v0, p0

    .line 156
    :goto_0
    #v0=(Reference,Ljava/net/Inet6Address;);
    return-object v0

    .restart local p0
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    #v0=(Reference,Ljava/net/InetAddress;);
    return-object v0
.end method

.method public getInterface()Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_interfaze:Ljava/net/NetworkInterface;

    #v0=(Reference,Ljava/net/NetworkInterface;);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method declared-synchronized incrementHostName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    .line 167
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, ".local."

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, plocal:I
    #v0=(Integer);
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 169
    .local v1, punder:I
    #v1=(Integer);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, -0x1

    #v5=(Byte);
    if-ne v1, v5, :cond_0

    move v5, v0

    :goto_0
    #v5=(Integer);
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavax/jmdns/impl/HostInfo;->hostNameCount:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".local."

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;

    .line 170
    iget-object v2, p0, Ljavax/jmdns/impl/HostInfo;->_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    #v2=(UninitRef,Ljava/lang/StringBuilder;);v5=(Byte);
    move v5, v1

    .line 169
    #v5=(Integer);
    goto :goto_0

    .line 166
    .end local v0           #plocal:I
    .end local v1           #punder:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v2
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAnnouncing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 325
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->isProbing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->recoverState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 292
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 293
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->revertState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method shouldIgnorePacket(Ljava/net/DatagramPacket;)Z
    .locals 3
    .parameter "packet"

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, result:Z
    #v1=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    #v2=(Reference,Ljava/net/InetAddress;);
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 179
    .local v0, from:Ljava/net/InetAddress;
    #v0=(Reference,Ljava/net/InetAddress;);
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    #v2=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 189
    :cond_0
    #v1=(Boolean);
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    #v2=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 192
    const/4 v1, 0x1

    .line 196
    .end local v0           #from:Ljava/net/InetAddress;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const/16 v1, 0x400

    #v1=(PosShort);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 234
    .local v0, buf:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, "local host info["

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljavax/jmdns/impl/HostInfo;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v1, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 235
    :cond_0
    const-string v1, "no name"

    goto :goto_0

    .line 237
    :cond_1
    const-string v1, "???"

    goto :goto_1

    .line 239
    :cond_2
    const-string v1, "no address"

    goto :goto_2
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 413
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo$HostInfoState;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->waitForAnnounced(J)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 424
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_address:Ljava/net/InetAddress;

    #v0=(Reference,Ljava/net/InetAddress;);
    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 429
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljava/net/InetAddress;);
    iget-object v0, p0, Ljavax/jmdns/impl/HostInfo;->_state:Ljavax/jmdns/impl/HostInfo$HostInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo$HostInfoState;->waitForCanceled(J)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method
