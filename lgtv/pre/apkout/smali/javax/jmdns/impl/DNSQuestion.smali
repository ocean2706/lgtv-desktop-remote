.class public Ljavax/jmdns/impl/DNSQuestion;
.super Ljavax/jmdns/impl/DNSEntry;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSQuestion$AllRecords;,
        Ljavax/jmdns/impl/DNSQuestion$DNS4Address;,
        Ljavax/jmdns/impl/DNSQuestion$DNS6Address;,
        Ljavax/jmdns/impl/DNSQuestion$HostInformation;,
        Ljavax/jmdns/impl/DNSQuestion$Pointer;,
        Ljavax/jmdns/impl/DNSQuestion$Service;,
        Ljavax/jmdns/impl/DNSQuestion$Text;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Ljavax/jmdns/impl/DNSQuestion;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    sput-object v0, Ljavax/jmdns/impl/DNSQuestion;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    .line 23
    const-class v0, Ljavax/jmdns/impl/DNSQuestion;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSQuestion;->logger:Ljava/util/logging/Logger;

    .line 21
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSEntry;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 238
    #p0=(Reference,Ljavax/jmdns/impl/DNSQuestion;);
    return-void
.end method

.method public static newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "recordClass"
    .parameter "unique"

    .prologue
    .line 251
    invoke-static {}, Ljavax/jmdns/impl/DNSQuestion;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I

    move-result-object v0

    #v0=(Reference,[I);
    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 270
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion;);
    return-object v0

    .line 254
    :sswitch_0
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$DNS4Address;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$DNS4Address;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$DNS4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$DNS4Address;);
    goto :goto_0

    .line 256
    :sswitch_1
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$DNS6Address;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$DNS6Address;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$DNS6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$DNS6Address;);
    goto :goto_0

    .line 258
    :sswitch_2
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$DNS6Address;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$DNS6Address;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$DNS6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$DNS6Address;);
    goto :goto_0

    .line 260
    :sswitch_3
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$AllRecords;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$AllRecords;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$AllRecords;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$AllRecords;);
    goto :goto_0

    .line 262
    :sswitch_4
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$HostInformation;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$HostInformation;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$HostInformation;);
    goto :goto_0

    .line 264
    :sswitch_5
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$Pointer;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$Pointer;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$Pointer;);
    goto :goto_0

    .line 266
    :sswitch_6
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$Service;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$Service;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$Service;);
    goto :goto_0

    .line 268
    :sswitch_7
    #v0=(Integer);
    new-instance v0, Ljavax/jmdns/impl/DNSQuestion$Text;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSQuestion$Text;);
    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSQuestion$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSQuestion$Text;);
    goto :goto_0

    .line 251
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_5
        0xe -> :sswitch_4
        0x11 -> :sswitch_7
        0x1d -> :sswitch_2
        0x22 -> :sswitch_6
        0x27 -> :sswitch_1
        0x3b -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addAnswers(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 0
    .parameter "jmDNSImpl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    return-void
.end method

.method protected addAnswersForServiceInfo(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/ServiceInfoImpl;)V
    .locals 3
    .parameter "jmDNSImpl"
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;",
            "Ljavax/jmdns/impl/ServiceInfoImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, answers:Ljava/util/Set;,"Ljava/util/Set<Ljavax/jmdns/impl/DNSRecord;>;"
    const/16 v2, 0xe10

    .line 297
    #v2=(PosShort);
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 301
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, v2}, Ljavax/jmdns/impl/HostInfo;->answers(I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->answers(ILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_1
    #v0=(Conflicted);
    sget-object v0, Ljavax/jmdns/impl/DNSQuestion;->logger:Ljava/util/logging/Logger;

    #v0=(Reference,Ljava/util/logging/Logger;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    const-string v2, " DNSQuestion("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").addAnswersForServiceInfo(): info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 306
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method answeredBy(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2
    .parameter "rec"

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSQuestion;->isSameRecordClass(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSQuestion;->isSameType(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

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

.method public iAmTheOnlyOne(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .parameter "jmDNSImpl"

    .prologue
    .line 339
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isExpired(J)Z
    .locals 1
    .parameter "now"

    .prologue
    .line 327
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isStale(J)Z
    .locals 1
    .parameter "now"

    .prologue
    .line 316
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "aLog"

    .prologue
    .line 351
    return-void
.end method
