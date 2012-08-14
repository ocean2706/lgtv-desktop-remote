.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel:[I

.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

.field private static final _nibbleToHex:[C

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _data:[B

.field private _len:I

.field private _off:I

.field private _packet:Ljava/net/DatagramPacket;

.field private _receivedTime:J

.field private _senderUDPPayload:I


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSLabel;->values()[Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_4

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    .line 29
    const-class v0, Ljavax/jmdns/impl/DNSIncoming;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    .line 33
    const/4 v0, 0x1

    #v0=(One);
    sput-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    .line 612
    const/16 v0, 0x10

    #v0=(PosByte);
    new-array v0, v0, [C

    #v0=(Reference,[C);
    fill-array-data v0, :array_0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    .line 27
    return-void

    .line 612
    #v0=(Unknown);
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 13
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    #v12=(One);
    const/4 v10, 0x0

    .line 68
    #v10=(Null);
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    #v8=(Integer);
    sget v9, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    #v9=(Integer);
    if-ne v8, v9, :cond_4

    move v8, v12

    :goto_0
    #v8=(Boolean);
    invoke-direct {p0, v10, v10, v8}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 69
    #p0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 70
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 71
    .local v7, source:Ljava/net/InetAddress;
    #v7=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    #v8=(Reference,[B);
    iput-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_data:[B

    .line 72
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    #v8=(Integer);
    iput v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_len:I

    .line 73
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v8

    iput v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    iput-wide v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 75
    const/16 v8, 0x5b4

    #v8=(PosShort);
    iput v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 79
    :try_start_0
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v8

    #v8=(Integer);
    iput v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_id:I

    .line 80
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v8

    iput v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    .line 81
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v5

    .line 82
    .local v5, numQuestions:I
    #v5=(Integer);
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v3

    .line 83
    .local v3, numAnswers:I
    #v3=(Integer);
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v4

    .line 84
    .local v4, numAuthorities:I
    #v4=(Integer);
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v2

    .line 87
    .local v2, numAdditionals:I
    #v2=(Integer);
    if-lez v5, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v1=(Integer);v8=(Conflicted);v9=(Conflicted);
    if-lt v1, v5, :cond_5

    .line 96
    .end local v1           #i:I
    :cond_0
    #v1=(Conflicted);
    if-lez v3, :cond_1

    .line 98
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    #v1=(Integer);v6=(Conflicted);
    if-lt v1, v3, :cond_6

    .line 109
    .end local v1           #i:I
    :cond_1
    #v1=(Conflicted);
    if-lez v4, :cond_2

    .line 111
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    #v1=(Integer);
    if-lt v1, v4, :cond_8

    .line 122
    .end local v1           #i:I
    :cond_2
    #v1=(Conflicted);
    if-lez v2, :cond_3

    .line 124
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    #v1=(Integer);
    if-lt v1, v2, :cond_a

    .line 140
    .end local v1           #i:I
    :cond_3
    #v1=(Conflicted);
    return-void

    .end local v2           #numAdditionals:I
    .end local v3           #numAnswers:I
    .end local v4           #numAuthorities:I
    .end local v5           #numQuestions:I
    .end local v7           #source:Ljava/net/InetAddress;
    :cond_4
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Integer);v9=(Integer);p0=(UninitThis,Ljavax/jmdns/impl/DNSIncoming;);
    move v8, v10

    .line 68
    #v8=(Null);
    goto :goto_0

    .line 91
    .restart local v1       #i:I
    .restart local v2       #numAdditionals:I
    .restart local v3       #numAnswers:I
    .restart local v4       #numAuthorities:I
    .restart local v5       #numQuestions:I
    .restart local v7       #source:Ljava/net/InetAddress;
    :cond_5
    #v1=(Integer);v2=(Integer);v3=(Integer);v4=(Integer);v5=(Integer);v7=(Reference,Ljava/net/InetAddress;);v8=(Conflicted);v9=(Conflicted);p0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    #v8=(Reference,Ljava/util/List;);
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v9

    #v9=(Reference,Ljavax/jmdns/impl/DNSQuestion;);
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_6
    #v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    invoke-direct {p0, v7}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v6

    .line 101
    .local v6, rec:Ljavax/jmdns/impl/DNSRecord;
    #v6=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    if-eqz v6, :cond_7

    .line 104
    iget-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    #v8=(Reference,Ljava/util/List;);
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_7
    #v8=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    .end local v6           #rec:Ljavax/jmdns/impl/DNSRecord;
    :cond_8
    #v6=(Conflicted);
    invoke-direct {p0, v7}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v6

    .line 114
    .restart local v6       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v6=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    if-eqz v6, :cond_9

    .line 117
    iget-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    #v8=(Reference,Ljava/util/List;);
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_9
    #v8=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 126
    .end local v6           #rec:Ljavax/jmdns/impl/DNSRecord;
    :cond_a
    #v6=(Conflicted);
    invoke-direct {p0, v7}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v6

    .line 127
    .restart local v6       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v6=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    if-eqz v6, :cond_b

    .line 130
    iget-object v8, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    #v8=(Reference,Ljava/util/List;);
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_b
    #v8=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 135
    .end local v1           #i:I
    .end local v2           #numAdditionals:I
    .end local v3           #numAnswers:I
    .end local v4           #numAuthorities:I
    .end local v5           #numQuestions:I
    .end local v6           #rec:Ljavax/jmdns/impl/DNSRecord;
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v0, v8

    .line 137
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v9=(Reference,Ljava/util/logging/Level;);
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v11, "DNSIncoming() dump "

    #v11=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0, v12}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    throw v0
.end method

.method private _hexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    array-length v3, p1

    #v3=(Integer);
    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    .local v2, result:Ljava/lang/StringBuilder;
    #v2=(Reference,Ljava/lang/StringBuilder;);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v4=(Conflicted);
    array-length v3, p1

    if-lt v1, v3, :cond_0

    .line 633
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    return-object v3

    .line 628
    :cond_0
    #v3=(Integer);
    aget-byte v3, p1, v1

    #v3=(Byte);
    and-int/lit16 v0, v3, 0xff

    .line 629
    .local v0, b:I
    #v0=(Integer);
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    #v3=(Reference,[C);
    div-int/lit8 v4, v0, 0x10

    #v4=(Integer);
    aget-char v3, v3, v4

    #v3=(Char);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    #v3=(Reference,[C);
    rem-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    #v3=(Char);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private get(I)I
    .locals 3
    .parameter "off"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    if-ltz p1, :cond_0

    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_len:I

    #v0=(Integer);
    if-lt p1, v0, :cond_1

    .line 297
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Ljava/io/IOException;

    #v0=(UninitRef,Ljava/io/IOException;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "parser error: offset="

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/io/IOException;);
    throw v0

    .line 299
    :cond_1
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_data:[B

    #v0=(Reference,[B);
    aget-byte v0, v0, p1

    #v0=(Byte);
    and-int/lit16 v0, v0, 0xff

    #v0=(Integer);
    return v0
.end method

.method private readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;
    .locals 39
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readName()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, domain:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v10

    #v10=(Integer);
    invoke-static {v10}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v37

    .line 155
    .local v37, type:Ljavax/jmdns/impl/constants/DNSRecordType;
    #v37=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v36

    .line 156
    .local v36, recordClassIndex:I
    #v36=(Integer);
    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object/from16 v0, v37

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v1, v10

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    if-ne v0, v1, :cond_2

    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object v6, v10

    .line 157
    .local v6, recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    :goto_0
    #v6=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v6}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique()Z

    move-result v7

    .line 158
    .local v7, unique:Z
    #v7=(Boolean);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readInt()I

    move-result v8

    .line 159
    .local v8, ttl:I
    #v8=(Integer);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v31

    .line 160
    .local v31, len:I
    #v31=(Integer);
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    add-int v28, v10, v31

    .line 161
    .local v28, end:I
    #v28=(Integer);
    const/4 v4, 0x0

    .line 163
    .local v4, rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Null);
    invoke-static {}, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I

    move-result-object v10

    #v10=(Reference,[I);
    invoke-virtual/range {v37 .. v37}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v11

    #v11=(Integer);
    aget v10, v10, v11

    #v10=(Integer);
    sparse-switch v10, :sswitch_data_0

    .line 281
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    #v10=(Reference,Ljava/util/logging/Logger;);
    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v12, "DNSIncoming() unknown type:"

    #v12=(Reference,Ljava/lang/String;);
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/StringBuilder;);
    move-object v0, v11

    #v0=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 282
    move/from16 v0, v28

    #v0=(Integer);
    move-object/from16 v1, p0

    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 285
    :cond_0
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference,Ljavax/jmdns/impl/DNSRecord;);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v26=(Conflicted);v27=(Conflicted);v29=(Conflicted);v30=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);v38=(Conflicted);
    if-eqz v4, :cond_1

    .line 287
    move-object v0, v4

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    move-object/from16 v1, p1

    #v1=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    .line 289
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    move/from16 v0, v28

    #v0=(Integer);
    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 290
    return-object v4

    .line 156
    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    .end local v6           #recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    .end local v7           #unique:Z
    .end local v8           #ttl:I
    .end local v28           #end:I
    .end local v31           #len:I
    :cond_2
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);v26=(Uninit);v27=(Uninit);v28=(Uninit);v29=(Uninit);v30=(Uninit);v31=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);v38=(Uninit);
    invoke-static/range {v36 .. v36}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v10

    move-object v6, v10

    #v6=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    goto :goto_0

    .line 166
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    .restart local v6       #recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    .restart local v7       #unique:Z
    .restart local v8       #ttl:I
    .restart local v28       #end:I
    .restart local v31       #len:I
    :sswitch_0
    #v0=(Integer);v4=(Null);v7=(Boolean);v8=(Integer);v10=(Integer);v11=(Integer);v28=(Integer);v31=(Integer);
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(UninitRef,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    move v1, v10

    #v1=(Integer);
    move/from16 v2, v31

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->readBytes(II)[B

    move-result-object v9

    #v9=(Reference,[B);
    invoke-direct/range {v4 .. v9}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 167
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv4Address;);
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    add-int v10, v10, v31

    move v0, v10

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    goto :goto_1

    .line 170
    :sswitch_1
    #v2=(Uninit);v4=(Null);v9=(Uninit);
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(UninitRef,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    move v1, v10

    #v1=(Integer);
    move/from16 v2, v31

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->readBytes(II)[B

    move-result-object v9

    #v9=(Reference,[B);
    invoke-direct/range {v4 .. v9}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 171
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord$IPv6Address;);
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    add-int v10, v10, v31

    move v0, v10

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    goto :goto_1

    .line 175
    :sswitch_2
    #v2=(Uninit);v4=(Null);v9=(Uninit);
    const-string v9, ""

    .line 178
    .local v9, service:Ljava/lang/String;
    :try_start_0
    #v9=(Reference,Ljava/lang/String;);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 185
    :goto_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v27=(Conflicted);
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-direct/range {v4 .. v9}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .line 186
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    goto :goto_1

    .line 180
    :catch_0
    #v0=(Integer);v2=(Uninit);v3=(Uninit);v4=(Null);v10=(Integer);v11=(Integer);v12=(Uninit);v27=(Uninit);
    move-exception v27

    .line 183
    .local v27, e:Ljava/io/IOException;
    #v27=(Reference,Ljava/io/IOException;);
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    #v10=(Reference,Ljava/util/logging/Logger;);
    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    const-string v12, "There was a problem reading the service name of the answer."

    #v12=(Reference,Ljava/lang/String;);
    move-object v0, v10

    #v0=(Reference,Ljava/util/logging/Logger;);
    move-object v1, v11

    move-object v2, v12

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v3, v27

    #v3=(Reference,Ljava/io/IOException;);
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 188
    .end local v9           #service:Ljava/lang/String;
    .end local v27           #e:Ljava/io/IOException;
    :sswitch_3
    #v0=(Integer);v2=(Uninit);v3=(Uninit);v9=(Uninit);v10=(Integer);v11=(Integer);v12=(Uninit);v27=(Uninit);
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$Text;

    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Text;);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    move v1, v10

    #v1=(Integer);
    move/from16 v2, v31

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->readBytes(II)[B

    move-result-object v15

    #v15=(Reference,[B);
    move-object v10, v4

    #v10=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Text;);
    move-object v11, v5

    #v11=(Reference,Ljava/lang/String;);
    move-object v12, v6

    #v12=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v13, v7

    #v13=(Boolean);
    move v14, v8

    #v14=(Integer);
    invoke-direct/range {v10 .. v15}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 189
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);v10=(Reference,Ljavax/jmdns/impl/DNSRecord$Text;);
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    add-int v10, v10, v31

    move v0, v10

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    goto/16 :goto_1

    .line 192
    :sswitch_4
    #v2=(Uninit);v4=(Null);v11=(Integer);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v15

    .line 193
    .local v15, priority:I
    #v15=(Integer);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v16

    .line 194
    .local v16, weight:I
    #v16=(Integer);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v17

    .line 195
    .local v17, port:I
    #v17=(Integer);
    const-string v18, ""

    .line 201
    .local v18, target:Ljava/lang/String;
    :try_start_1
    #v18=(Reference,Ljava/lang/String;);
    sget-boolean v10, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    #v10=(Boolean);
    if-eqz v10, :cond_3

    .line 203
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 216
    :goto_3
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v27=(Conflicted);
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$Service;

    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Service;);
    move-object v10, v4

    #v10=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Service;);
    move-object v11, v5

    #v11=(Reference,Ljava/lang/String;);
    move-object v12, v6

    #v12=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v13, v7

    #v13=(Boolean);
    move v14, v8

    #v14=(Integer);
    invoke-direct/range {v10 .. v18}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 217
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);v10=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    goto/16 :goto_1

    .line 207
    :cond_3
    :try_start_2
    #v0=(Integer);v2=(Uninit);v3=(Uninit);v4=(Null);v10=(Boolean);v11=(Integer);v12=(Uninit);v13=(Uninit);v14=(Uninit);v27=(Uninit);
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readNonNameString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto :goto_3

    .line 210
    :catch_1
    #v10=(Integer);
    move-exception v10

    #v10=(Reference,Ljava/io/IOException;);
    move-object/from16 v27, v10

    .line 214
    .restart local v27       #e:Ljava/io/IOException;
    #v27=(Reference,Ljava/io/IOException;);
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    const-string v12, "There was a problem reading the label of the answer. This can happen if the type of the label  cannot be handled."

    #v12=(Reference,Ljava/lang/String;);
    move-object v0, v10

    #v0=(Reference,Ljava/util/logging/Logger;);
    move-object v1, v11

    move-object v2, v12

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v3, v27

    #v3=(Reference,Ljava/io/IOException;);
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 219
    .end local v15           #priority:I
    .end local v16           #weight:I
    .end local v17           #port:I
    .end local v18           #target:Ljava/lang/String;
    .end local v27           #e:Ljava/io/IOException;
    :sswitch_5
    #v0=(Integer);v2=(Uninit);v3=(Uninit);v10=(Integer);v11=(Integer);v12=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v27=(Uninit);
    new-instance v26, Ljava/lang/StringBuffer;

    #v26=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v26, buf:Ljava/lang/StringBuffer;
    #v26=(Reference,Ljava/lang/StringBuffer;);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    move-object/from16 v1, v26

    move v2, v10

    #v2=(Integer);
    move/from16 v3, v31

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Ljavax/jmdns/impl/DNSIncoming;->readUTF(Ljava/lang/StringBuffer;II)V

    .line 221
    const-string v10, " "

    #v10=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v26

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v30

    .line 222
    .local v30, index:I
    #v30=(Integer);
    if-lez v30, :cond_4

    const/4 v10, 0x0

    #v10=(Null);
    move-object/from16 v0, v26

    move v1, v10

    #v1=(Null);
    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_4
    #v1=(Reference,Ljava/lang/String;);v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 223
    .local v24, cpu:Ljava/lang/String;
    #v24=(Reference,Ljava/lang/String;);
    if-lez v30, :cond_5

    add-int/lit8 v10, v30, 0x1

    #v10=(Integer);
    move-object/from16 v0, v26

    move v1, v10

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    #v1=(Conflicted);v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 224
    .local v25, os:Ljava/lang/String;
    #v25=(Reference,Ljava/lang/String;);
    new-instance v4, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    .end local v4           #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(UninitRef,Ljavax/jmdns/impl/DNSRecord$HostInformation;);
    move-object/from16 v19, v4

    #v19=(UninitRef,Ljavax/jmdns/impl/DNSRecord$HostInformation;);
    move-object/from16 v20, v5

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v21, v6

    #v21=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move/from16 v22, v7

    #v22=(Boolean);
    move/from16 v23, v8

    #v23=(Integer);
    invoke-direct/range {v19 .. v25}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    .line 225
    .restart local v4       #rec:Ljavax/jmdns/impl/DNSRecord;
    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord$HostInformation;);v19=(Reference,Ljavax/jmdns/impl/DNSRecord$HostInformation;);
    goto/16 :goto_1

    .line 222
    .end local v24           #cpu:Ljava/lang/String;
    .end local v25           #os:Ljava/lang/String;
    :cond_4
    #v1=(Reference,Ljava/lang/String;);v4=(Null);v19=(Uninit);v20=(Uninit);v21=(Uninit);v22=(Uninit);v23=(Uninit);v24=(Uninit);v25=(Uninit);
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 223
    .restart local v24       #cpu:Ljava/lang/String;
    :cond_5
    #v24=(Reference,Ljava/lang/String;);
    const-string v10, ""

    goto :goto_5

    .line 227
    .end local v24           #cpu:Ljava/lang/String;
    .end local v26           #buf:Ljava/lang/StringBuffer;
    .end local v30           #index:I
    :sswitch_6
    #v0=(Integer);v2=(Uninit);v3=(Uninit);v10=(Integer);v24=(Uninit);v26=(Uninit);v30=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    #v0=(Integer);
    move v10, v0

    invoke-static {v10, v8}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v29

    .line 228
    .local v29, extendedResultCode:Ljavax/jmdns/impl/constants/DNSResultCode;
    #v29=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const/high16 v10, 0xff

    and-int/2addr v10, v8

    shr-int/lit8 v38, v10, 0x10

    .line 229
    .local v38, version:I
    #v38=(Short);
    if-nez v38, :cond_a

    .line 231
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 232
    :goto_6
    #v0=(Conflicted);v2=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v32=(Conflicted);v33=(Conflicted);v34=(Conflicted);v35=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    move v0, v10

    move/from16 v1, v28

    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 235
    const/16 v33, 0x0

    .line 236
    .local v33, optionCodeInt:I
    #v33=(Null);
    const/16 v32, 0x0

    .line 237
    .local v32, optionCode:Ljavax/jmdns/impl/constants/DNSOptionCode;
    #v32=(Null);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    sub-int v10, v28, v10

    const/4 v11, 0x2

    #v11=(PosByte);
    if-lt v10, v11, :cond_7

    .line 239
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v33

    .line 240
    #v33=(Integer);
    invoke-static/range {v33 .. v33}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v32

    .line 247
    #v32=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    const/16 v34, 0x0

    .line 248
    .local v34, optionLength:I
    #v34=(Null);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    sub-int v10, v28, v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_8

    .line 250
    invoke-direct/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v34

    .line 257
    #v34=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    move v0, v10

    #v0=(Null);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    move-object/from16 v35, v0

    .line 258
    .local v35, optiondata:[B
    #v35=(Reference,[B);
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    sub-int v10, v28, v10

    move v0, v10

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    .line 260
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    move v1, v10

    move/from16 v2, v34

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming;->readBytes(II)[B

    move-result-object v35

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    move v10, v0

    add-int v10, v10, v34

    move v0, v10

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 264
    :cond_6
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v10, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    move-object v0, v10

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    move-object/from16 v1, v32

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    if-ne v0, v1, :cond_9

    .line 266
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v13, "There was an OPT answer. Not currently handled. Option code: "

    #v13=(Reference,Ljava/lang/String;);
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v12=(Reference,Ljava/lang/StringBuilder;);
    move-object v0, v12

    move/from16 v1, v33

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    #v1=(Reference,[B);
    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 244
    .end local v34           #optionLength:I
    .end local v35           #optiondata:[B
    :cond_7
    #v0=(Integer);v1=(Integer);v10=(Integer);v11=(PosByte);v12=(Conflicted);v13=(Conflicted);v32=(Null);v33=(Null);v34=(Conflicted);v35=(Conflicted);
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    #v10=(Reference,Ljava/util/logging/Logger;);
    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    const-string v12, "There was a problem reading the OPT record. Ignoring."

    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    .restart local v34       #optionLength:I
    :cond_8
    #v10=(Integer);v11=(PosByte);v12=(Conflicted);v32=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);v33=(Integer);v34=(Null);
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    #v10=(Reference,Ljava/util/logging/Logger;);
    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    const-string v12, "There was a problem reading the OPT record. Ignoring."

    #v12=(Reference,Ljava/lang/String;);
    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    .restart local v35       #optiondata:[B
    :cond_9
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);v1=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);v11=(PosByte);v12=(Conflicted);v34=(Integer);v35=(Reference,[B);
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v13, "There was an OPT answer. Option code: "

    #v13=(Reference,Ljava/lang/String;);
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v12=(Reference,Ljava/lang/StringBuilder;);
    move-object v0, v12

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 277
    .end local v32           #optionCode:Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v33           #optionCodeInt:I
    .end local v34           #optionLength:I
    .end local v35           #optiondata:[B
    :cond_a
    #v0=(Integer);v2=(Uninit);v10=(Integer);v11=(Integer);v12=(Uninit);v13=(Uninit);v32=(Uninit);v33=(Uninit);v34=(Uninit);v35=(Uninit);
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    #v10=(Reference,Ljava/util/logging/Logger;);
    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v11=(Reference,Ljava/util/logging/Level;);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v13, "There was an OPT answer. Wrong version number: "

    #v13=(Reference,Ljava/lang/String;);
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v12=(Reference,Ljava/lang/StringBuilder;);
    move-object v0, v12

    #v0=(Reference,Ljava/lang/StringBuilder;);
    move/from16 v1, v38

    #v1=(Short);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " result code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v29

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0x11 -> :sswitch_3
        0x1d -> :sswitch_1
        0x22 -> :sswitch_4
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method private readBytes(II)[B
    .locals 3
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-array v0, p2, [B

    .line 321
    .local v0, bytes:[B
    #v0=(Reference,[B);
    if-lez p2, :cond_0

    .line 322
    iget-object v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_data:[B

    #v1=(Reference,[B);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0
.end method

.method private readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v0

    #v0=(Integer);
    shl-int/lit8 v0, v0, 0x10

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v1

    #v1=(Integer);
    or-int/2addr v0, v1

    return v0
.end method

.method private readName()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    iget v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 377
    .local v4, off:I
    #v4=(Integer);
    const/4 v3, -0x1

    .line 378
    .local v3, next:I
    #v3=(Byte);
    move v1, v4

    .line 382
    .local v1, first:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    add-int/lit8 v5, v4, 0x1

    .end local v4           #off:I
    .local v5, off:I
    #v5=(Integer);
    invoke-direct {p0, v4}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v2

    .line 383
    .local v2, len:I
    #v2=(Integer);
    if-nez v2, :cond_0

    .line 417
    if-ltz v3, :cond_3

    move v6, v3

    :goto_1
    #v6=(Integer);
    iput v6, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    return-object v6

    .line 387
    :cond_0
    #v6=(Conflicted);
    invoke-static {}, Ljavax/jmdns/impl/DNSIncoming;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel()[I

    move-result-object v6

    #v6=(Reference,[I);
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSLabel;->labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    invoke-virtual {v7}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v7

    #v7=(Integer);
    aget v6, v6, v7

    #v6=(Integer);
    packed-switch v6, :pswitch_data_0

    .line 414
    new-instance v6, Ljava/io/IOException;

    #v6=(UninitRef,Ljava/io/IOException;);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v8, "unsupported dns label type: \'"

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    and-int/lit16 v8, v2, 0xc0

    #v8=(Integer);
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    #v8=(One);
    sub-int v8, v5, v8

    #v8=(Integer);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/io/IOException;);
    throw v6

    .line 391
    :pswitch_0
    #v6=(Integer);v7=(Integer);v8=(Uninit);
    invoke-direct {p0, v0, v5, v2}, Ljavax/jmdns/impl/DNSIncoming;->readUTF(Ljava/lang/StringBuffer;II)V

    .line 392
    add-int v4, v5, v2

    .line 393
    .end local v5           #off:I
    .restart local v4       #off:I
    const/16 v6, 0x2e

    #v6=(PosByte);
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 397
    .end local v4           #off:I
    .restart local v5       #off:I
    :pswitch_1
    #v6=(Integer);
    if-gez v3, :cond_1

    .line 399
    add-int/lit8 v3, v5, 0x1

    .line 401
    :cond_1
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSLabel;->labelValue(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #off:I
    .restart local v4       #off:I
    invoke-direct {p0, v5}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v7

    or-int v4, v6, v7

    .line 402
    if-lt v4, v1, :cond_2

    .line 404
    new-instance v6, Ljava/io/IOException;

    #v6=(UninitRef,Ljava/io/IOException;);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v8, "bad domain name: possible circular name detected. name start: "

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bad offset: 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/io/IOException;);
    throw v6

    .line 406
    :cond_2
    #v6=(Integer);v7=(Integer);v8=(Uninit);
    move v1, v4

    .line 407
    goto/16 :goto_0

    .line 410
    .end local v4           #off:I
    .restart local v5       #off:I
    :pswitch_2
    sget-object v6, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    #v6=(Reference,Ljava/util/logging/Logger;);
    const-string v7, "Extended label are not currently supported."

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    move v4, v5

    .line 411
    .end local v5           #off:I
    .restart local v4       #off:I
    goto/16 :goto_0

    .end local v4           #off:I
    .restart local v5       #off:I
    :cond_3
    #v6=(Conflicted);v7=(Conflicted);
    move v6, v5

    .line 417
    #v6=(Integer);
    goto/16 :goto_1

    .line 387
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readNonNameString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    iget v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 366
    .local v2, off:I
    #v2=(Integer);
    add-int/lit8 v3, v2, 0x1

    .end local v2           #off:I
    .local v3, off:I
    #v3=(Integer);
    invoke-direct {p0, v2}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v1

    .line 367
    .local v1, len:I
    #v1=(Integer);
    invoke-direct {p0, v0, v3, v1}, Ljavax/jmdns/impl/DNSIncoming;->readUTF(Ljava/lang/StringBuffer;II)V

    .line 369
    iget v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v4=(Integer);
    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    return-object v4
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, domain:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    .line 146
    .local v2, type:Ljavax/jmdns/impl/constants/DNSRecordType;
    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readUnsignedShort()I

    move-result v4

    invoke-static {v4}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    .line 147
    .local v1, recordClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique()Z

    move-result v4

    #v4=(Boolean);
    move v3, v4

    .line 148
    .local v3, unique:Z
    :goto_0
    #v3=(Boolean);
    invoke-static {v0, v2, v1, v3}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/impl/DNSQuestion;);
    return-object v4

    .line 147
    .end local v3           #unique:Z
    :cond_0
    #v3=(Uninit);v4=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    move v3, v4

    #v3=(Null);
    goto :goto_0
.end method

.method private readUTF(Ljava/lang/StringBuffer;II)V
    .locals 6
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    move v2, p2

    .line 329
    .local v2, offset:I
    #v2=(Integer);
    add-int v1, v2, p3

    .local v1, end:I
    #v1=(Integer);
    move v3, v2

    .end local v2           #offset:I
    .local v3, offset:I
    :goto_0
    #v0=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);
    if-lt v3, v1, :cond_0

    .line 360
    return-void

    .line 331
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    invoke-direct {p0, v3}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v0

    .line 332
    .local v0, ch:I
    #v0=(Integer);
    shr-int/lit8 v4, v0, 0x4

    #v4=(Integer);
    packed-switch v4, :pswitch_data_0

    .line 355
    :pswitch_0
    and-int/lit8 v4, v0, 0x3f

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .restart local v3       #offset:I
    invoke-direct {p0, v2}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v5

    #v5=(Integer);
    and-int/lit8 v5, v5, 0xf

    or-int v0, v4, v5

    move v2, v3

    .line 358
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :goto_1
    :pswitch_1
    #v5=(Conflicted);
    int-to-char v4, v0

    #v4=(Char);
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    .end local v2           #offset:I
    .restart local v3       #offset:I
    goto :goto_0

    .line 347
    .end local v3           #offset:I
    .restart local v2       #offset:I
    :pswitch_2
    #v4=(Integer);
    and-int/lit8 v4, v0, 0x1f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .restart local v3       #offset:I
    invoke-direct {p0, v2}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v5

    #v5=(Integer);
    and-int/lit8 v5, v5, 0x3f

    or-int v0, v4, v5

    move v2, v3

    .line 348
    .end local v3           #offset:I
    .restart local v2       #offset:I
    goto :goto_1

    .line 351
    :pswitch_3
    #v5=(Conflicted);
    and-int/lit8 v4, v0, 0xf

    shl-int/lit8 v4, v4, 0xc

    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .restart local v3       #offset:I
    invoke-direct {p0, v2}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v5

    #v5=(Integer);
    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    invoke-direct {p0, v3}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x3f

    or-int v0, v4, v5

    .line 352
    goto :goto_1

    .line 332
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    #v0=(Integer);
    add-int/lit8 v1, v0, 0x1

    #v1=(Integer);
    iput v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    add-int/lit8 v2, v1, 0x1

    #v2=(Integer);
    iput v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_off:I

    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->get(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 2
    .parameter "that"

    .prologue
    .line 584
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    #v1=(Reference,Ljava/util/Collection;);
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 587
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAdditionals()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    return-void

    .line 593
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef,Ljava/lang/IllegalArgumentException;);
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #v0=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v0
.end method

.method public elapseSinceArrival()I
    .locals 4

    .prologue
    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr v0, v2

    long-to-int v0, v0

    #v0=(Integer);
    return v0
.end method

.method public getSenderUDPPayload()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    #v0=(Integer);
    return v0
.end method

.method print(Z)Ljava/lang/String;
    .locals 10
    .parameter "dump"

    .prologue
    const/16 v9, 0x20

    .line 426
    #v9=(PosByte);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, buf:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->print()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    if-eqz p1, :cond_0

    .line 430
    const/4 v6, 0x0

    .local v6, off:I
    #v6=(Null);
    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    .local v4, len:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Integer);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);
    if-lt v6, v4, :cond_1

    .line 485
    .end local v4           #len:I
    .end local v6           #off:I
    :cond_0
    :goto_1
    #v4=(Conflicted);v6=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    return-object v7

    .line 432
    .restart local v4       #len:I
    .restart local v6       #off:I
    :cond_1
    #v4=(Integer);v6=(Integer);v7=(Conflicted);
    sub-int v7, v4, v6

    #v7=(Integer);
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 433
    .local v5, n:I
    #v5=(Integer);
    const/16 v7, 0xa

    #v7=(PosByte);
    if-ge v6, v7, :cond_2

    .line 435
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    :cond_2
    const/16 v7, 0x64

    if-ge v6, v7, :cond_3

    .line 439
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, index:I
    #v3=(Null);
    const/4 v3, 0x0

    :goto_2
    #v3=(Integer);v7=(Conflicted);
    if-lt v3, v5, :cond_5

    .line 454
    if-ge v3, v9, :cond_4

    .line 456
    move v2, v3

    .local v2, i:I
    :goto_3
    #v2=(Integer);
    if-lt v2, v9, :cond_7

    .line 465
    .end local v2           #i:I
    :cond_4
    #v2=(Conflicted);
    const-string v7, "    "

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const/4 v3, 0x0

    :goto_4
    #v7=(Conflicted);
    if-lt v3, v5, :cond_9

    .line 475
    const-string v7, "\n"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v7, v6, 0x20

    #v7=(Integer);
    const/16 v8, 0x100

    #v8=(PosShort);
    if-lt v7, v8, :cond_c

    .line 480
    const-string v7, "....\n"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 446
    :cond_5
    #v7=(Conflicted);v8=(Conflicted);
    rem-int/lit8 v7, v3, 0x8

    #v7=(Integer);
    if-nez v7, :cond_6

    .line 448
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    :cond_6
    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_data:[B

    #v7=(Reference,[B);
    add-int v8, v6, v3

    #v8=(Integer);
    aget-byte v7, v7, v8

    #v7=(Byte);
    and-int/lit16 v7, v7, 0xf0

    #v7=(Integer);
    shr-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_data:[B

    add-int v8, v6, v3

    aget-byte v7, v7, v8

    #v7=(Byte);
    and-int/lit8 v7, v7, 0xf

    #v7=(Integer);
    shr-int/lit8 v7, v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    .restart local v2       #i:I
    :cond_7
    #v2=(Integer);v7=(Conflicted);v8=(Conflicted);
    rem-int/lit8 v7, v2, 0x8

    #v7=(Integer);
    if-nez v7, :cond_8

    .line 460
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    :cond_8
    const-string v7, "  "

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 468
    .end local v2           #i:I
    :cond_9
    #v2=(Conflicted);v7=(Conflicted);
    rem-int/lit8 v7, v3, 0x8

    #v7=(Integer);
    if-nez v7, :cond_a

    .line 470
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_a
    iget-object v7, p0, Ljavax/jmdns/impl/DNSIncoming;->_data:[B

    #v7=(Reference,[B);
    add-int v8, v6, v3

    #v8=(Integer);
    aget-byte v7, v7, v8

    #v7=(Byte);
    and-int/lit16 v1, v7, 0xff

    .line 473
    .local v1, ch:I
    #v1=(Integer);
    if-le v1, v9, :cond_b

    const/16 v7, 0x7f

    #v7=(PosByte);
    if-ge v1, v7, :cond_b

    int-to-char v7, v1

    :goto_5
    #v7=(Char);
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 473
    :cond_b
    #v7=(Byte);
    const/16 v7, 0x2e

    #v7=(PosByte);
    goto :goto_5

    .line 430
    .end local v1           #ch:I
    :cond_c
    #v1=(Conflicted);v7=(Integer);v8=(PosShort);
    add-int/lit8 v6, v6, 0x20

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 492
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_c

    const-string v3, "dns[query,"

    :goto_0
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    :cond_0
    const/16 v3, 0x3a

    #v3=(PosByte);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    #v3=(Reference,Ljava/net/DatagramPacket;);
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 499
    const-string v3, ", length="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 501
    const-string v3, ", id=0x"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    iget v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_id:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    iget v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    #v3=(Integer);
    if-eqz v3, :cond_3

    .line 505
    const-string v3, ", flags=0x"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    iget v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    iget v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    #v3=(Integer);
    const v4, 0x8000

    #v4=(Char);
    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 509
    const-string v3, ":r"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :cond_1
    #v3=(Conflicted);
    iget v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    #v3=(Integer);
    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    .line 513
    const-string v3, ":aa"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    :cond_2
    #v3=(Conflicted);
    iget v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_flags:I

    #v3=(Integer);
    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 517
    const-string v3, ":tc"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :cond_3
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_4

    .line 522
    const-string v3, ", questions="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 525
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v3

    if-lez v3, :cond_5

    .line 527
    const-string v3, ", answers="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 530
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v3

    if-lez v3, :cond_6

    .line 532
    const-string v3, ", authorities="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 535
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v3

    if-lez v3, :cond_7

    .line 537
    const-string v3, ", additionals="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 540
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v3

    if-lez v3, :cond_8

    .line 542
    const-string v3, "\nquestions:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    #v1=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_d

    .line 548
    :cond_8
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_9

    .line 550
    const-string v3, "\nanswers:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    #v2=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_e

    .line 556
    :cond_9
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_a

    .line 558
    const-string v3, "\nauthorities:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_f

    .line 564
    :cond_a
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_b

    .line 566
    const-string v3, "\nadditionals:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    iget-object v3, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_10

    .line 572
    :cond_b
    #v3=(Conflicted);v4=(Conflicted);
    const-string v3, "]"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 492
    :cond_c
    #v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    const-string v3, "dns[response,"

    #v3=(Reference,Ljava/lang/String;);
    goto/16 :goto_0

    .line 543
    :cond_d
    #v1=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/DNSQuestion;

    .line 545
    .local v1, question:Ljavax/jmdns/impl/DNSQuestion;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 551
    .end local v1           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_e
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 553
    .local v2, record:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 559
    .end local v2           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_f
    #v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 561
    .restart local v2       #record:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 567
    .end local v2           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_10
    #v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 569
    .restart local v2       #record:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
