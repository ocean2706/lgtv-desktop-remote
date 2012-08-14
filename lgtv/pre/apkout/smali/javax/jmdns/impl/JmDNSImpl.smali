.class public Ljavax/jmdns/impl/JmDNSImpl;
.super Ljavax/jmdns/JmDNS;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/JmDNSImpl$Operation;,
        Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;,
        Ljavax/jmdns/impl/JmDNSImpl$Shutdown;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$JmDNSImpl$Operation:[I

.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

.field private static final _random:Ljava/util/Random;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _cache:Ljavax/jmdns/impl/DNSCache;

.field private volatile _closed:Z

.field private volatile _group:Ljava/net/InetAddress;

.field private _incomingListener:Ljava/lang/Thread;

.field private final _ioLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _lastThrottleIncrement:J

.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSListener;",
            ">;"
        }
    .end annotation
.end field

.field private _localHost:Ljavax/jmdns/impl/HostInfo;

.field private final _name:Ljava/lang/String;

.field private _plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

.field private final _serviceCollectors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final _serviceListeners:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/ServiceListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _serviceTypes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _services:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected _shutdown:Ljava/lang/Thread;

.field private volatile _socket:Ljava/net/MulticastSocket;

.field private final _stateTimer:Ljava/util/Timer;

.field private _throttle:I

.field private final _timer:Ljava/util/Timer;

.field private final _typeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/ServiceTypeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$JmDNSImpl$Operation()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->$SWITCH_TABLE$javax$jmdns$impl$JmDNSImpl$Operation:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->values()[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->$SWITCH_TABLE$javax$jmdns$impl$JmDNSImpl$Operation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_5

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_4

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_4
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I
    .locals 3

    .prologue
    .line 58
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType:[I

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
    .line 60
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    .line 159
    new-instance v0, Ljava/util/Random;

    #v0=(UninitRef,Ljava/util/Random;);
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #v0=(Reference,Ljava/util/Random;);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 4
    .parameter "address"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    #v2=(PosByte);
    const/4 v3, 0x0

    .line 194
    #v3=(Null);
    invoke-direct {p0}, Ljavax/jmdns/JmDNS;-><init>()V

    .line 79
    #p0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    iput-boolean v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_closed:Z

    .line 164
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #v0=(UninitRef,Ljava/util/concurrent/locks/ReentrantLock;);
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantLock;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 195
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "JmDNS instance created"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSCache;);
    const/16 v1, 0x64

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef,Ljava/util/concurrent/ConcurrentHashMap;);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/ConcurrentHashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    .line 200
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef,Ljava/util/HashSet;);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference,Ljava/util/HashSet;);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef,Ljava/util/concurrent/ConcurrentHashMap;);
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/ConcurrentHashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef,Ljava/util/concurrent/ConcurrentHashMap;);
    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #v0=(Reference,Ljava/util/concurrent/ConcurrentHashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    .line 204
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #v0=(UninitRef,Ljava/util/concurrent/ConcurrentHashMap;);
    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #v0=(Reference,Ljava/util/concurrent/ConcurrentHashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    .line 206
    invoke-static {p1, p0}, Ljavax/jmdns/impl/HostInfo;->newHostInfo(Ljava/net/InetAddress;Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 207
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef,Ljava/util/Timer;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "JmDNS("

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference,Ljava/util/Timer;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    .line 210
    new-instance v0, Ljava/util/Timer;

    #v0=(UninitRef,Ljava/util/Timer;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "JmDNS("

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").State.Timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference,Ljava/util/Timer;);
    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    .line 221
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 222
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V

    .line 224
    new-instance v0, Ljavax/jmdns/impl/tasks/RecordReaper;

    #v0=(UninitRef,Ljavax/jmdns/impl/tasks/RecordReaper;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/tasks/RecordReaper;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v0=(Reference,Ljavax/jmdns/impl/tasks/RecordReaper;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/RecordReaper;->start(Ljava/util/Timer;)V

    .line 225
    return-void

    .line 207
    :cond_0
    #v1=(PosByte);v2=(PosByte);
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private closeMulticastSocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    #v4=(Null);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v1=(Reference,Ljava/util/logging/Logger;);
    const-string v2, "closeMulticastSocket()"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_1

    .line 287
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 300
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    #v1=(Reference,Ljava/lang/Thread;);
    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 316
    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :goto_2
    #v0=(Conflicted);v1=(Reference,Ljava/util/logging/Logger;);v3=(Conflicted);
    iput-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 324
    :cond_1
    return-void

    .line 302
    :cond_2
    :try_start_2
    #v0=(Uninit);v1=(Boolean);v3=(Uninit);
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    :try_start_3
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v1=(Reference,Ljava/util/logging/Logger;);
    const-string v2, "closeMulticastSocket(): waiting for jmDNS monitor"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 308
    const-wide/16 v1, 0x3e8

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 302
    :goto_3
    :try_start_4
    #v1=(Conflicted);v2=(Conflicted);
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 318
    :catch_0
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/Exception;);
    move-object v0, v1

    .line 320
    .local v0, exception:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v2=(Reference,Ljava/util/logging/Level;);
    const-string v3, "closeMulticastSocket() Close socket exception "

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 310
    .end local v0           #exception:Ljava/lang/Exception;
    :catch_1
    #v0=(Uninit);v1=(Conflicted);v2=(Conflicted);v3=(Uninit);
    move-exception v1

    #v1=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_3

    .line 289
    :catch_2
    #v2=(Reference,Ljava/lang/Object;);
    move-exception v1

    goto :goto_0
.end method

.method private disposeServiceCollectors()V
    .locals 4

    .prologue
    .line 1713
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v2=(Reference,Ljava/util/logging/Logger;);
    const-string v3, "disposeServiceCollectors()"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1714
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 1723
    return-void

    .line 1714
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1716
    .local v1, type:Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1717
    .local v0, collector:Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-eqz v0, :cond_1

    .line 1719
    invoke-virtual {p0, v1, v0}, Ljavax/jmdns/impl/JmDNSImpl;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 1721
    :cond_1
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 1927
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->_random:Ljava/util/Random;

    #v0=(Reference,Ljava/util/Random;);
    return-object v0
.end method

.method private makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z
    .locals 13
    .parameter "info"

    .prologue
    .line 1022
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    .line 1023
    .local v6, originalQualifiedName:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1028
    .local v4, now:J
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(LongLo);v5=(LongHi);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    const/4 v1, 0x0

    .line 1031
    .local v1, collision:Z
    #v1=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v9

    #v9=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 1032
    .local v3, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    #v3=(Reference,Ljava/util/Collection;);
    if-eqz v3, :cond_2

    .line 1034
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    #v10=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_4

    .line 1051
    :cond_2
    :goto_0
    #v1=(Boolean);v10=(Conflicted);
    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Object;);
    check-cast v8, Ljavax/jmdns/ServiceInfo;

    .line 1052
    .local v8, selfService:Ljavax/jmdns/ServiceInfo;
    if-eqz v8, :cond_3

    if-eq v8, p1, :cond_3

    .line 1054
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 1055
    const/4 v1, 0x1

    .line 1026
    :cond_3
    if-nez v1, :cond_0

    .line 1060
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_1
    return v9

    .line 1034
    .end local v8           #selfService:Ljavax/jmdns/ServiceInfo;
    :cond_4
    #v1=(Null);v8=(Conflicted);v9=(Reference,Ljava/util/Iterator;);v10=(Boolean);
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 1036
    .local v2, dnsEntry:Ljavax/jmdns/impl/DNSEntry;
    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v11

    #v11=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v10, v11}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_1

    invoke-virtual {v2, v4, v5}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1038
    move-object v0, v2

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$Service;

    move-object v7, v0

    .line 1039
    .local v7, s:Ljavax/jmdns/impl/DNSRecord$Service;
    #v7=(Reference,Ljavax/jmdns/impl/DNSRecord$Service;);
    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v10

    #v10=(Integer);
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v11

    #v11=(Integer);
    if-ne v10, v11, :cond_5

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v11=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v11}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_1

    .line 1041
    :cond_5
    #v10=(Integer);v11=(Conflicted);
    sget-object v9, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v11, "makeServiceNameUnique() JmDNS.makeServiceNameUnique srv collision:"

    #v11=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " s.server="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v11}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " equals:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v12=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v12}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/JmDNSImpl;->incrementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljavax/jmdns/impl/ServiceInfoImpl;->setName(Ljava/lang/String;)V

    .line 1043
    const/4 v1, 0x1

    .line 1044
    #v1=(One);
    goto/16 :goto_0

    .line 1060
    .end local v2           #dnsEntry:Ljavax/jmdns/impl/DNSEntry;
    .end local v7           #s:Ljavax/jmdns/impl/DNSRecord$Service;
    .restart local v8       #selfService:Ljavax/jmdns/ServiceInfo;
    :cond_6
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v7=(Conflicted);v8=(Reference,Ljavax/jmdns/ServiceInfo;);v9=(Boolean);v11=(Conflicted);v12=(Conflicted);
    const/4 v9, 0x1

    #v9=(One);
    goto/16 :goto_1
.end method

.method private openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V
    .locals 4
    .parameter "hostInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    #v1=(Reference,Ljava/net/InetAddress;);
    if-nez v1, :cond_0

    .line 253
    const-string v1, "224.0.0.251"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    .line 255
    :cond_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_1

    .line 257
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 259
    :cond_1
    new-instance v1, Ljava/net/MulticastSocket;

    #v1=(UninitRef,Ljava/net/MulticastSocket;);
    sget v2, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    #v2=(Integer);
    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(I)V

    #v1=(Reference,Ljava/net/MulticastSocket;);
    iput-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 260
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 264
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    invoke-virtual {p1}, Ljavax/jmdns/impl/HostInfo;->getInterface()Ljava/net/NetworkInterface;

    move-result-object v2

    #v2=(Reference,Ljava/net/NetworkInterface;);
    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_2
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 272
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    #v2=(Reference,Ljava/net/InetAddress;);
    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 273
    return-void

    .line 266
    :catch_0
    #v0=(Uninit);v2=(Conflicted);v3=(Uninit);
    move-exception v1

    move-object v0, v1

    .line 268
    .local v0, e:Ljava/net/SocketException;
    #v0=(Reference,Ljava/net/SocketException;);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "openMulticastSocket() Set network interface exception: "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private start(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, serviceInfos:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/ServiceInfo;>;"
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    #v2=(Reference,Ljava/lang/Thread;);
    if-nez v2, :cond_0

    .line 231
    new-instance v2, Ljava/lang/Thread;

    #v2=(UninitRef,Ljava/lang/Thread;);
    new-instance v3, Ljavax/jmdns/impl/SocketListener;

    #v3=(UninitRef,Ljavax/jmdns/impl/SocketListener;);
    invoke-direct {v3, p0}, Ljavax/jmdns/impl/SocketListener;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v3=(Reference,Ljavax/jmdns/impl/SocketListener;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "JmDNS("

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ").SocketListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/Thread;);
    iput-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    .line 232
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 233
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_incomingListener:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 235
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 236
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 247
    return-void

    .line 236
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 240
    .local v1, info:Ljavax/jmdns/ServiceInfo;
    :try_start_0
    new-instance v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v3=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-direct {v3, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    #v3=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    #v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Exception;);
    move-object v0, v3

    .line 244
    .local v0, exception:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v4=(Reference,Ljava/util/logging/Level;);
    const-string v5, "start() Registration exception "

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "qualifiedName"

    .prologue
    .line 1893
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    sub-int/2addr v1, v2

    const/4 v2, 0x1

    #v2=(One);
    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1897
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    move-object v0, p1

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method private waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V
    .locals 5
    .parameter "info"
    .parameter "timeout"

    .prologue
    .line 678
    monitor-enter p1

    .line 680
    const-wide/16 v3, 0xc8

    :try_start_0
    #v3=(LongLo);v4=(LongHi);
    div-long v1, p2, v3

    .line 681
    .local v1, loops:J
    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    #v3=(Byte);
    if-gez v3, :cond_0

    .line 683
    const-wide/16 v1, 0x1

    .line 685
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);
    int-to-long v3, v0

    #v3=(LongLo);
    cmp-long v3, v3, v1

    #v3=(Byte);
    if-ltz v3, :cond_2

    .line 678
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    return-void

    .line 689
    :cond_2
    const-wide/16 v3, 0xc8

    :try_start_1
    #v3=(LongLo);
    invoke-virtual {p1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    :goto_1
    :try_start_2
    #v3=(Conflicted);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    .end local v0           #i:I
    .end local v1           #loops:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v3

    #v3=(Reference,Ljava/lang/Throwable;);
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 691
    .restart local v0       #i:I
    .restart local v1       #loops:J
    :catch_0
    #v0=(Integer);v1=(LongLo);v2=(LongHi);v3=(LongLo);
    move-exception v3

    #v3=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_1
.end method


# virtual methods
.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5
    .parameter "in"
    .parameter "addr"
    .parameter "port"
    .parameter "out"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0x8400

    #v4=(Char);
    const/4 v3, 0x0

    .line 1367
    #v3=(Null);
    move-object v1, p4

    .line 1368
    .local v1, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    if-nez v1, :cond_0

    .line 1370
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v1           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v2

    #v2=(Integer);
    invoke-direct {v1, v4, v3, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 1374
    .restart local v1       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    :cond_0
    :try_start_0
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);v2=(Conflicted);
    invoke-virtual {v1, p1, p5}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :goto_0
    #v0=(Conflicted);
    return-object v1

    .line 1376
    :catch_0
    #v0=(Uninit);
    move-exception v0

    .line 1378
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v2

    #v2=(Integer);
    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 1379
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 1380
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 1382
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v1           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getSenderUDPPayload()I

    move-result v2

    invoke-direct {v1, v4, v3, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 1383
    .restart local v1       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v1, p1, p5}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addListener(Ljavax/jmdns/impl/DNSListener;Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 6
    .parameter "listener"
    .parameter "question"

    .prologue
    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1099
    .local v2, now:J
    #v2=(LongLo);v3=(LongHi);
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    #v4=(Reference,Ljava/util/List;);
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    if-eqz p2, :cond_1

    .line 1105
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v4

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1106
    .local v1, entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    #v1=(Reference,Ljava/util/Collection;);
    if-eqz v1, :cond_1

    .line 1108
    monitor-enter v1

    .line 1110
    :try_start_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    #v0=(Conflicted);v5=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 1108
    monitor-exit v1

    .line 1120
    .end local v1           #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_1
    #v1=(Conflicted);v5=(Conflicted);
    return-void

    .line 1110
    .restart local v1       #entryList:Ljava/util/Collection;,"Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_2
    #v1=(Reference,Ljava/util/Collection;);v5=(Boolean);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 1112
    .local v0, dnsEntry:Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {p2, v0}, Ljavax/jmdns/impl/DNSQuestion;->answeredBy(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2, v3}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1114
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v5

    #v5=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-interface {p1, v5, v2, v3, v0}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_0

    .line 1108
    .end local v0           #dnsEntry:Ljavax/jmdns/impl/DNSEntry;
    :catchall_0
    #v0=(Conflicted);v5=(Conflicted);
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 12
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, lotype:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    #v8=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v8, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/util/List;

    .line 806
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    if-nez v3, :cond_1

    .line 808
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Ljava/util/LinkedList;

    #v9=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    #v9=(Reference,Ljava/util/LinkedList;);
    invoke-interface {v8, v4, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 810
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    #v9=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    invoke-direct {v9, v4}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    invoke-interface {v8, v4, v9}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 812
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/jmdns/ServiceListener;

    invoke-virtual {p0, v4, v8}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 815
    :cond_0
    iget-object v8, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    check-cast v3, Ljava/util/List;

    .line 817
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :cond_1
    #v9=(Conflicted);
    monitor-enter v3

    .line 819
    :try_start_0
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_2

    .line 821
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    new-instance v7, Ljava/util/ArrayList;

    #v7=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v7, serviceEvents:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    #v7=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v8

    #v8=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSCache;->allValues()Ljava/util/Collection;

    move-result-object v1

    .line 827
    .local v1, dnsEntryLits:Ljava/util/Collection;,"Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    #v1=(Reference,Ljava/util/Collection;);
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_4

    .line 841
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    #v6=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 846
    new-instance v8, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;

    #v8=(UninitRef,Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;);
    invoke-direct {v8, p0, p1}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    #v8=(Reference,Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;);
    iget-object v9, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    #v9=(Reference,Ljava/util/Timer;);
    invoke-virtual {v8, v9}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->start(Ljava/util/Timer;)V

    .line 847
    return-void

    .line 817
    .end local v1           #dnsEntryLits:Ljava/util/Collection;,"Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v7           #serviceEvents:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    :catchall_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Conflicted);v9=(Conflicted);v10=(Uninit);v11=(Uninit);
    move-exception v8

    :try_start_1
    #v8=(Reference,Ljava/lang/Throwable;);
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 827
    .restart local v1       #dnsEntryLits:Ljava/util/Collection;,"Ljava/util/Collection<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v7       #serviceEvents:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceEvent;>;"
    :cond_4
    #v0=(Conflicted);v1=(Reference,Ljava/util/Collection;);v2=(Conflicted);v5=(Conflicted);v7=(Reference,Ljava/util/ArrayList;);v9=(Boolean);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 829
    .local v2, entry:Ljavax/jmdns/impl/DNSEntry;
    move-object v0, v2

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    move-object v5, v0

    .line 830
    .local v5, record:Ljavax/jmdns/impl/DNSRecord;
    #v5=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v9

    #v9=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    if-ne v9, v10, :cond_3

    .line 832
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_3

    .line 836
    new-instance v9, Ljavax/jmdns/impl/ServiceEventImpl;

    #v9=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Ljavax/jmdns/impl/JmDNSImpl;->toUnqualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v11

    #v11=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-direct {v9, p0, p1, v10, v11}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v9=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 841
    .end local v2           #entry:Ljavax/jmdns/impl/DNSEntry;
    .end local v5           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_5
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Boolean);v10=(Conflicted);v11=(Conflicted);
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Ljavax/jmdns/ServiceEvent;

    .line 843
    .local v6, serviceEvent:Ljavax/jmdns/ServiceEvent;
    invoke-interface {p2, v6}, Ljavax/jmdns/ServiceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_1
.end method

.method public addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    #v1=(Reference,Ljava/util/Set;);
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 782
    new-instance v1, Ljavax/jmdns/impl/tasks/resolver/TypeResolver;

    #v1=(UninitRef,Ljavax/jmdns/impl/tasks/resolver/TypeResolver;);
    invoke-direct {v1, p0}, Ljavax/jmdns/impl/tasks/resolver/TypeResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v1=(Reference,Ljavax/jmdns/impl/tasks/resolver/TypeResolver;);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    #v2=(Reference,Ljava/util/Timer;);
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/tasks/resolver/TypeResolver;->start(Ljava/util/Timer;)V

    .line 783
    return-void

    .line 777
    :cond_0
    #v2=(Boolean);
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/lang/String;

    .line 779
    .local v0, type:Ljava/lang/String;
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    #v2=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v2, p0, v0, v3, v4}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v2=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-interface {p1, v2}, Ljavax/jmdns/ServiceTypeListener;->serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1
    .parameter "task"

    .prologue
    .line 335
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 390
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 391
    return-void
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->cancelState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1529
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1532
    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v0=(Reference,Ljava/util/logging/Logger;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Cancelling JmDNS: "

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    #v0=(Reference,Ljava/util/Timer;);
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1543
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1544
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    .line 1546
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Wait for JmDNS cancel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1547
    const-wide/16 v0, 0x1388

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1550
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    #v0=(Reference,Ljava/util/Timer;);
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1553
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1556
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1558
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    goto :goto_0
.end method

.method public getCache()Ljavax/jmdns/impl/DNSCache;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    #v0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 0

    .prologue
    .line 379
    return-object p0
.end method

.method public getGroup()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    #v0=(Reference,Ljava/net/InetAddress;);
    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    #v0=(Reference,Ljava/net/MulticastSocket;);
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getInterface()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLastThrottleIncrement()J
    .locals 2

    .prologue
    .line 1912
    iget-wide v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getLocalHost()Ljavax/jmdns/impl/HostInfo;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getPlannedAnswer()Ljavax/jmdns/impl/DNSIncoming;
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    #v0=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .parameter "type"
    .parameter "name"

    .prologue
    .line 553
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x1770

    #v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .parameter "type"
    .parameter "name"
    .parameter "timeout"

    .prologue
    .line 564
    const/4 v3, 0x0

    #v3=(Null);
    move-object v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p2

    #v2=(Reference,Ljava/lang/String;);
    move-wide v4, p3

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
    .locals 6
    .parameter "type"
    .parameter "name"
    .parameter "persistent"

    .prologue
    .line 575
    const-wide/16 v4, 0x1770

    #v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p2

    #v2=(Reference,Ljava/lang/String;);
    move v3, p3

    #v3=(Boolean);
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "persistent"
    .parameter "timeout"

    .prologue
    .line 586
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, p1, p2, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 587
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V

    .line 588
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v1

    :cond_0
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 22
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "persistent"

    .prologue
    .line 611
    new-instance v4, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v4=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    const/4 v12, 0x0

    #v12=(Null);
    move-object/from16 v5, p1

    #v5=(Reference,Ljava/lang/String;);
    move-object/from16 v6, p2

    #v6=(Reference,Ljava/lang/String;);
    move-object/from16 v7, p3

    #v7=(Reference,Ljava/lang/String;);
    move/from16 v11, p4

    #v11=(Boolean);
    invoke-direct/range {v4 .. v12}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    .line 612
    .local v4, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v4=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v11

    #v11=(Reference,Ljavax/jmdns/impl/DNSCache;);
    new-instance v5, Ljavax/jmdns/impl/DNSRecord$Pointer;

    #v5=(UninitRef,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    sget-object v7, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    #v5=(Reference,Ljavax/jmdns/impl/DNSRecord$Pointer;);
    invoke-virtual {v11, v5}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v17

    .line 613
    .local v17, pointerEntry:Ljavax/jmdns/impl/DNSEntry;
    #v17=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    move-object/from16 v0, v17

    #v0=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    instance-of v0, v0, Ljavax/jmdns/impl/DNSRecord;

    #v0=(Boolean);
    move v7, v0

    #v7=(Boolean);
    if-eqz v7, :cond_5

    .line 615
    check-cast v17, Ljavax/jmdns/impl/DNSRecord;

    .end local v17           #pointerEntry:Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v17

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    move/from16 v1, p4

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 616
    .local v5, cachedInfo:Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v5, :cond_5

    .line 620
    invoke-virtual {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v6

    .line 621
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/16 v20, 0x0

    #v20=(Null);
    check-cast v20, [B

    .line 622
    .local v20, srvBytes:[B
    #v20=(Reference,[B);
    const-string v18, ""

    .line 623
    .local v18, server:Ljava/lang/String;
    #v18=(Reference,Ljava/lang/String;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v9=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v7, v8, v9, v10}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v19

    .line 624
    .local v19, serviceEntry:Ljavax/jmdns/impl/DNSEntry;
    #v19=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    move-object/from16 v0, v19

    instance-of v0, v0, Ljavax/jmdns/impl/DNSRecord;

    #v0=(Boolean);
    move v7, v0

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 626
    check-cast v19, Ljavax/jmdns/impl/DNSRecord;

    .end local v19           #serviceEntry:Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v19

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v15

    .line 627
    .local v15, cachedServiceEntryInfo:Ljavax/jmdns/ServiceInfo;
    #v15=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v15, :cond_0

    .line 629
    new-instance v5, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v5           #cachedInfo:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v5=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v7

    #v7=(Integer);
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v9

    #v9=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    move/from16 v10, p4

    #v10=(Boolean);
    invoke-direct/range {v5 .. v11}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 630
    .restart local v5       #cachedInfo:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v5=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v20

    .line 631
    invoke-virtual {v15}, Ljavax/jmdns/ServiceInfo;->getServer()Ljava/lang/String;

    move-result-object v18

    .line 634
    .end local v15           #cachedServiceEntryInfo:Ljavax/jmdns/ServiceInfo;
    :cond_0
    #v0=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Reference,Ljavax/jmdns/impl/DNSCache;);v15=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/DNSCache;);
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v8=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v9=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move-object v0, v7

    #v0=(Reference,Ljavax/jmdns/impl/DNSCache;);
    move-object/from16 v1, v18

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, v8

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v3, v9

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v0, v1, v2, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v13

    .line 635
    .local v13, addressEntry:Ljavax/jmdns/impl/DNSEntry;
    #v13=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    instance-of v7, v13, Ljavax/jmdns/impl/DNSRecord;

    #v7=(Boolean);
    if-eqz v7, :cond_1

    .line 637
    check-cast v13, Ljavax/jmdns/impl/DNSRecord;

    .end local v13           #addressEntry:Ljavax/jmdns/impl/DNSEntry;
    move-object v0, v13

    move/from16 v1, p4

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    .line 638
    .local v14, cachedAddressInfo:Ljavax/jmdns/ServiceInfo;
    #v14=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v14, :cond_1

    .line 640
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getInet4Address()Ljava/net/Inet4Address;

    move-result-object v7

    #v7=(Reference,Ljava/net/Inet4Address;);
    invoke-virtual {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->setAddress(Ljava/net/Inet4Address;)V

    .line 641
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 644
    .end local v14           #cachedAddressInfo:Ljavax/jmdns/ServiceInfo;
    :cond_1
    #v1=(Conflicted);v7=(Conflicted);v14=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/DNSCache;);
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object v0, v7

    move-object/from16 v1, v18

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, v8

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v13

    .line 645
    .restart local v13       #addressEntry:Ljavax/jmdns/impl/DNSEntry;
    instance-of v7, v13, Ljavax/jmdns/impl/DNSRecord;

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 647
    check-cast v13, Ljavax/jmdns/impl/DNSRecord;

    .end local v13           #addressEntry:Ljavax/jmdns/impl/DNSEntry;
    move-object v0, v13

    move/from16 v1, p4

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    .line 648
    .restart local v14       #cachedAddressInfo:Ljavax/jmdns/ServiceInfo;
    #v14=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v14, :cond_2

    .line 650
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getInet6Address()Ljava/net/Inet6Address;

    move-result-object v7

    #v7=(Reference,Ljava/net/Inet6Address;);
    invoke-virtual {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->setAddress(Ljava/net/Inet6Address;)V

    .line 651
    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 654
    .end local v14           #cachedAddressInfo:Ljavax/jmdns/ServiceInfo;
    :cond_2
    #v1=(Conflicted);v7=(Conflicted);v14=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v7

    #v7=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v7, v8, v9, v10}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v21

    .line 655
    .local v21, textEntry:Ljavax/jmdns/impl/DNSEntry;
    #v21=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/jmdns/impl/DNSRecord;

    #v0=(Boolean);
    move v7, v0

    #v7=(Boolean);
    if-eqz v7, :cond_3

    .line 657
    check-cast v21, Ljavax/jmdns/impl/DNSRecord;

    .end local v21           #textEntry:Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, v21

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    move/from16 v1, p4

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v16

    .line 658
    .local v16, cachedTextInfo:Ljavax/jmdns/ServiceInfo;
    #v16=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v16, :cond_3

    .line 660
    invoke-virtual/range {v16 .. v16}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v7

    #v7=(Reference,[B);
    invoke-virtual {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 663
    .end local v16           #cachedTextInfo:Ljavax/jmdns/ServiceInfo;
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v7=(Conflicted);v16=(Conflicted);
    invoke-virtual {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v7

    #v7=(Reference,[B);
    array-length v7, v7

    #v7=(Integer);
    if-nez v7, :cond_4

    .line 665
    move-object v0, v5

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object/from16 v1, v20

    #v1=(Reference,[B);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->_setText([B)V

    .line 667
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);
    invoke-virtual {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_5

    .line 669
    move-object v4, v5

    .line 673
    .end local v5           #cachedInfo:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .end local v18           #server:Ljava/lang/String;
    .end local v20           #srvBytes:[B
    :cond_5
    #v2=(Conflicted);v3=(Conflicted);v13=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return-object v4
.end method

.method public getServiceTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1957
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    return-object v0
.end method

.method public getServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1902
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    #v0=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    return-object v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    #v0=(Reference,Ljava/net/MulticastSocket;);
    return-object v0
.end method

.method public getThrottle()I
    .locals 1

    .prologue
    .line 1922
    iget v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    #v0=(Integer);
    return v0
.end method

.method handleQuery(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    .locals 8
    .parameter "in"
    .parameter "addr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1326
    sget-object v4, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v4=(Reference,Ljava/util/logging/Logger;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    const-string v6, ".handle query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1328
    const/4 v1, 0x0

    .line 1329
    .local v1, conflictDetected:Z
    #v1=(Null);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    const-wide/16 v6, 0x78

    #v6=(LongLo);v7=(LongHi);
    add-long v2, v4, v6

    .line 1330
    .local v2, expirationTime:J
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v4

    #v4=(Reference,Ljava/util/Collection;);
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    #v0=(Conflicted);v1=(Boolean);v5=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1335
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    if-eqz v4, :cond_2

    .line 1337
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v4, p1}, Ljavax/jmdns/impl/DNSIncoming;->append(Ljavax/jmdns/impl/DNSIncoming;)V

    .line 1348
    :goto_1
    #v5=(Conflicted);
    if-eqz v1, :cond_0

    .line 1350
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1352
    :cond_0
    return-void

    .line 1330
    :cond_1
    #v5=(Boolean);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 1332
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v0, p0, v2, v3}, Ljavax/jmdns/impl/DNSRecord;->handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_0

    .line 1341
    .end local v0           #answer:Ljavax/jmdns/impl/DNSRecord;
    :cond_2
    #v0=(Conflicted);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 1343
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 1345
    :cond_3
    new-instance v4, Ljavax/jmdns/impl/tasks/Responder;

    #v4=(UninitRef,Ljavax/jmdns/impl/tasks/Responder;);
    invoke-direct {v4, p0, p1, p3}, Ljavax/jmdns/impl/tasks/Responder;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;I)V

    #v4=(Reference,Ljavax/jmdns/impl/tasks/Responder;);
    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    #v5=(Reference,Ljava/util/Timer;);
    invoke-virtual {v4, v5}, Ljavax/jmdns/impl/tasks/Responder;->start(Ljava/util/Timer;)V

    goto :goto_1
.end method

.method handleResponse(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 13
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1230
    .local v5, now:J
    #v5=(LongLo);v6=(LongHi);
    const/4 v3, 0x0

    .line 1231
    .local v3, hostConflictDetected:Z
    #v3=(Null);
    const/4 v7, 0x0

    .line 1233
    .local v7, serviceConflictDetected:Z
    #v7=(Null);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAllAnswers()Ljava/util/Collection;

    move-result-object v9

    #v9=(Reference,Ljava/util/Collection;);
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v7=(Boolean);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_3

    .line 1310
    if-nez v3, :cond_1

    if-eqz v7, :cond_2

    .line 1312
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startProber()V

    .line 1314
    :cond_2
    return-void

    .line 1233
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 1235
    .local v4, newRecord:Ljavax/jmdns/impl/DNSRecord;
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1236
    .local v0, cacheOperation:Ljavax/jmdns/impl/JmDNSImpl$Operation;
    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-virtual {v4, v5, v6}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v2

    .line 1239
    .local v2, expired:Z
    #v2=(Boolean);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v10

    #v10=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {v10, v4}, Ljavax/jmdns/impl/DNSCache;->getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/impl/DNSEntry;);
    check-cast v1, Ljavax/jmdns/impl/DNSRecord;

    .line 1240
    .local v1, cachedRecord:Ljavax/jmdns/impl/DNSRecord;
    sget-object v10, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v12

    #v12=(Reference,Ljava/lang/String;);
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/StringBuilder;);
    const-string v12, ".handle response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\ncached recod: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1241
    if-eqz v1, :cond_a

    .line 1243
    if-eqz v2, :cond_7

    .line 1245
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1246
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljavax/jmdns/impl/DNSCache;->removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    .line 1272
    :cond_4
    :goto_1
    #v10=(Conflicted);
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSRecordType()[I

    move-result-object v10

    #v10=(Reference,[I);
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v11

    #v11=(Integer);
    aget v10, v10, v11

    #v10=(Integer);
    packed-switch v10, :pswitch_data_0

    .line 1294
    :cond_5
    :goto_2
    #v10=(Conflicted);
    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v11

    #v11=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v10, v11}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_6

    sget-object v10, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v10=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_c

    .line 1296
    :cond_6
    invoke-virtual {v4, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v10

    or-int/2addr v3, v10

    .line 1304
    :goto_3
    sget-object v10, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v10=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    if-eq v0, v10, :cond_0

    .line 1306
    invoke-virtual {p0, v5, v6, v4, v0}, Ljavax/jmdns/impl/JmDNSImpl;->updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V

    goto/16 :goto_0

    .line 1251
    :cond_7
    invoke-virtual {v4, v1}, Ljavax/jmdns/impl/DNSRecord;->sameValue(Ljavax/jmdns/impl/DNSRecord;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_8

    invoke-virtual {v4, v1}, Ljavax/jmdns/impl/DNSRecord;->sameSubtype(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord;->getSubtype()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_9

    .line 1253
    :cond_8
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1254
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v10

    #v10=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {v10, v4, v1}, Ljavax/jmdns/impl/DNSCache;->replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_1

    .line 1258
    :cond_9
    #v10=(Integer);
    invoke-virtual {v1, v4}, Ljavax/jmdns/impl/DNSRecord;->resetTTL(Ljavax/jmdns/impl/DNSRecord;)V

    .line 1259
    move-object v4, v1

    goto :goto_1

    .line 1265
    :cond_a
    #v10=(Reference,Ljava/util/logging/Logger;);
    if-nez v2, :cond_4

    .line 1267
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1268
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljavax/jmdns/impl/DNSCache;->addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    goto :goto_1

    .line 1276
    :pswitch_0
    #v10=(Integer);v11=(Integer);
    const/4 v8, 0x0

    .line 1277
    .local v8, typeAdded:Z
    #v8=(Null);
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord;->isServicesDiscoveryMetaQuery()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_b

    .line 1280
    if-nez v2, :cond_0

    .line 1282
    check-cast v4, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local v4           #newRecord:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord$Pointer;->getAlias()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v10}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v8

    .line 1284
    #v8=(Boolean);
    goto/16 :goto_0

    .line 1286
    .restart local v4       #newRecord:Ljavax/jmdns/impl/DNSRecord;
    :cond_b
    #v8=(Null);v10=(Boolean);
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v10}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    or-int/2addr v8, v10

    .line 1287
    #v8=(Boolean);
    if-eqz v8, :cond_5

    sget-object v10, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v10=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    if-ne v0, v10, :cond_5

    .line 1288
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 1289
    goto :goto_2

    .line 1300
    .end local v8           #typeAdded:Z
    :cond_c
    #v8=(Conflicted);v10=(Boolean);v11=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v4, p0}, Ljavax/jmdns/impl/DNSRecord;->handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z

    move-result v10

    or-int/2addr v7, v10

    goto :goto_3

    .line 1272
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 750
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljava/util/List;

    .line 751
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 752
    .local v1, listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    #v1=(Reference,Ljava/util/List;);
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 754
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    #v4=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 756
    monitor-enter v0

    .line 758
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    .end local v1           #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .local v2, listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :try_start_1
    #v2=(Reference,Ljava/util/ArrayList;);
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 760
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    #v3=(Conflicted);v4=(Reference,Ljava/util/Iterator;);v5=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    move-object v1, v2

    .line 766
    .end local v2           #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v1       #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :cond_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 756
    :catchall_0
    #v3=(Uninit);v5=(Reference,Ljava/lang/String;);
    move-exception v4

    :goto_1
    :try_start_2
    #v4=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 760
    .end local v1           #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v2       #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :cond_1
    #v2=(Reference,Ljava/util/ArrayList;);v3=(Conflicted);v5=(Boolean);
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljavax/jmdns/ServiceListener;

    .line 762
    .local v3, listener:Ljavax/jmdns/ServiceListener;
    invoke-interface {v3, p1}, Ljavax/jmdns/ServiceListener;->serviceResolved(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_0

    .line 756
    .end local v3           #listener:Ljavax/jmdns/ServiceListener;
    :catchall_1
    #v3=(Uninit);v4=(Boolean);v5=(Reference,Ljava/lang/String;);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    move-object v1, v2

    .end local v2           #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v1       #listCopy:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    goto :goto_1
.end method

.method incrementName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    .line 1065
    move-object v0, p1

    .line 1068
    .local v0, aName:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const/16 v4, 0x28

    :try_start_0
    #v4=(PosByte);
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1069
    .local v2, l:I
    #v2=(Integer);
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1070
    .local v3, r:I
    #v3=(Integer);
    if-ltz v2, :cond_0

    if-ge v2, v3, :cond_0

    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    #v5=(Integer);
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    #v5=(Integer);
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    .end local v2           #l:I
    .end local v3           #r:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 1076
    .restart local v2       #l:I
    .restart local v3       #r:I
    :cond_0
    #v1=(Uninit);v2=(Integer);v3=(Integer);v4=(PosByte);v5=(Uninit);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, " (2)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1079
    .end local v2           #l:I
    .end local v3           #r:I
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/NumberFormatException;);
    move-object v1, v4

    .line 1081
    .local v1, e:Ljava/lang/NumberFormatException;
    #v1=(Reference,Ljava/lang/NumberFormatException;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, " (2)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ioLock()V
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantLock;);
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1933
    return-void
.end method

.method public ioUnlock()V
    .locals 1

    .prologue
    .line 1937
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_ioLock:Ljava/util/concurrent/locks/ReentrantLock;

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantLock;);
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1938
    return-void
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnounced()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isAnnouncing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .parameter "task"
    .parameter "state"

    .prologue
    .line 412
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isCanceling()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 1967
    iget-boolean v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_closed:Z

    #v0=(Boolean);
    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->isProbing()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
    .locals 2
    .parameter "type"

    .prologue
    .line 1625
    const-wide/16 v0, 0x1770

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    #v0=(Reference,[Ljavax/jmdns/ServiceInfo;);
    return-object v0
.end method

.method public list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
    .locals 6
    .parameter "type"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 1644
    #v5=(Null);
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, aType:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    .line 1647
    .local v2, newCollectorCreated:Z
    #v2=(Null);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1649
    :cond_0
    new-array v3, v5, [Ljavax/jmdns/ServiceInfo;

    .line 1663
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v3=(Reference,[Ljavax/jmdns/ServiceInfo;);v4=(Conflicted);v5=(Reference,Ljava/lang/String;);
    return-object v3

    .line 1652
    :cond_1
    #v1=(Uninit);v2=(Null);v3=(Boolean);v4=(Uninit);v5=(Null);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1653
    .local v1, collector:Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-nez v1, :cond_2

    .line 1655
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    #v4=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    invoke-direct {v4, v0}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    #v3=(One);
    move v2, v3

    .line 1656
    :goto_1
    #v2=(Boolean);v3=(Conflicted);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #collector:Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    check-cast v1, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    .line 1657
    .restart local v1       #collector:Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
    if-eqz v2, :cond_2

    .line 1659
    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 1662
    :cond_2
    #v4=(Conflicted);
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    const-string v5, ".collector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v1, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->list(J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v3

    goto :goto_0

    :cond_3
    #v2=(Null);v5=(Null);
    move v2, v5

    .line 1655
    goto :goto_1
.end method

.method public listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1674
    const-wide/16 v0, 0x1770

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->listBySubtype(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    #v0=(Reference,Ljava/util/Map;);
    return-object v0
.end method

.method public listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .locals 10
    .parameter "type"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1685
    new-instance v2, Ljava/util/HashMap;

    #v2=(UninitRef,Ljava/util/HashMap;);
    const/4 v5, 0x5

    #v5=(PosByte);
    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1686
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;>;"
    #v2=(Reference,Ljava/util/HashMap;);
    invoke-virtual {p0, p1, p2, p3}, Ljavax/jmdns/impl/JmDNSImpl;->list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    #v5=(Reference,[Ljavax/jmdns/ServiceInfo;);
    array-length v6, v5

    #v6=(Integer);
    const/4 v7, 0x0

    .end local p0
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Conflicted);
    if-lt v7, v6, :cond_0

    .line 1696
    new-instance v3, Ljava/util/HashMap;

    #v3=(UninitRef,Ljava/util/HashMap;);
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    #v5=(Integer);
    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1697
    .local v3, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljavax/jmdns/ServiceInfo;>;"
    #v3=(Reference,Ljava/util/HashMap;);
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    #v5=(Reference,Ljava/util/Set;);
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    #v1=(Conflicted);v6=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_2

    .line 1703
    return-object v3

    .line 1686
    .end local v3           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljavax/jmdns/ServiceInfo;>;"
    :cond_0
    #v1=(Uninit);v3=(Uninit);v6=(Integer);
    aget-object v0, v5, v7

    .line 1688
    .local v0, info:Ljavax/jmdns/ServiceInfo;
    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v4

    .line 1689
    .local v4, subtype:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_1

    .line 1691
    new-instance v8, Ljava/util/ArrayList;

    #v8=(UninitRef,Ljava/util/ArrayList;);
    const/16 v9, 0xa

    #v9=(PosByte);
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    #v8=(Reference,Ljava/util/ArrayList;);
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    :cond_1
    #v8=(Conflicted);v9=(Conflicted);
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1697
    .end local v0           #info:Ljavax/jmdns/ServiceInfo;
    .end local v4           #subtype:Ljava/lang/String;
    .restart local v3       #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[Ljavax/jmdns/ServiceInfo;>;"
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v3=(Reference,Ljava/util/HashMap;);v4=(Conflicted);v6=(Boolean);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    .line 1699
    .restart local v4       #subtype:Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/util/List;

    .line 1700
    .local v1, infoForSubType:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    new-array v6, v6, [Ljavax/jmdns/ServiceInfo;

    #v6=(Reference,[Ljavax/jmdns/ServiceInfo;);
    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method print()V
    .locals 2

    .prologue
    .line 1569
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #v0=(Reference,Ljava/io/PrintStream;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    #v1=(Reference,Ljavax/jmdns/impl/DNSCache;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSCache;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1570
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1571
    return-void
.end method

.method public printServices()V
    .locals 2

    .prologue
    .line 1579
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #v0=(Reference,Ljava/io/PrintStream;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1580
    return-void
.end method

.method public recover()V
    .locals 6

    .prologue
    .line 1464
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    const-string v4, "recover()"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1519
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    return-void

    .line 1472
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v5=(Uninit);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->cancelState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1476
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v3=(Reference,Ljava/util/logging/Logger;);
    const-string v4, "recover() Cleanning up"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1479
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1482
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef,Ljava/util/ArrayList;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1485
    .local v2, oldServiceInfos:Ljava/util/Collection;,"Ljava/util/Collection<Ljavax/jmdns/ServiceInfo;>;"
    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->unregisterAllServices()V

    .line 1486
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->disposeServiceCollectors()V

    .line 1488
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {p0, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl;->waitForCanceled(J)Z

    .line 1491
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    #v3=(Reference,Ljava/util/Timer;);
    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1495
    invoke-direct {p0}, Ljavax/jmdns/impl/JmDNSImpl;->closeMulticastSocket()V

    .line 1497
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSCache;->clear()V

    .line 1498
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    const-string v4, "recover() All is clean"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1502
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    #v1=(Conflicted);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 1506
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->recoverState()Z

    .line 1510
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/jmdns/impl/JmDNSImpl;->openMulticastSocket(Ljavax/jmdns/impl/HostInfo;)V

    .line 1511
    invoke-direct {p0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->start(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    :goto_2
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v4=(Reference,Ljava/util/logging/Level;);
    const-string v5, "recover() We are back!"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 1502
    :cond_2
    #v0=(Uninit);v4=(Boolean);v5=(Uninit);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/ServiceInfo;

    .line 1504
    .local v1, info:Ljavax/jmdns/ServiceInfo;
    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v1           #info:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->recoverState()Z

    goto :goto_1

    .line 1513
    :catch_0
    #v1=(Conflicted);
    move-exception v3

    move-object v0, v3

    .line 1515
    .local v0, exception:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v4=(Reference,Ljava/util/logging/Level;);
    const-string v5, "recover() Start services exception "

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->recoverState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public registerService(Ljavax/jmdns/ServiceInfo;)V
    .locals 6
    .parameter "infoAbstract"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 880
    #v4=(LongLo);v5=(LongHi);
    move-object v0, p1

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, v0

    .line 882
    .local v1, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 884
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef,Ljava/lang/IllegalStateException;);
    const-string v3, "This service information is already registered with another DNS."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/IllegalStateException;);
    throw v2

    .line 886
    :cond_0
    #v3=(Uninit);
    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 888
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 891
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->setServer(Ljava/lang/String;)V

    .line 892
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getInet4Address()Ljava/net/Inet4Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->setAddress(Ljava/net/Inet4Address;)V

    .line 893
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v2}, Ljavax/jmdns/impl/HostInfo;->getInet6Address()Ljava/net/Inet6Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->setAddress(Ljava/net/Inet6Address;)V

    .line 895
    invoke-virtual {p0, v4, v5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForAnnounced(J)Z

    .line 897
    invoke-direct {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    .line 898
    :goto_0
    #v3=(Conflicted);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 903
    new-instance v2, Ljavax/jmdns/impl/tasks/state/Prober;

    #v2=(UninitRef,Ljavax/jmdns/impl/tasks/state/Prober;);
    invoke-direct {v2, p0}, Ljavax/jmdns/impl/tasks/state/Prober;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v2=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/tasks/state/Prober;->start(Ljava/util/Timer;)V

    .line 904
    invoke-virtual {v1, v4, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForAnnounced(J)Z

    .line 906
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "registerService() JmDNS registered service as "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 907
    return-void

    .line 900
    :cond_1
    #v4=(LongLo);
    invoke-direct {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->makeServiceNameUnique(Ljavax/jmdns/impl/ServiceInfoImpl;)Z

    goto :goto_0
.end method

.method public registerServiceType(Ljava/lang/String;)Z
    .locals 20
    .parameter "type"

    .prologue
    .line 969
    const/4 v15, 0x0

    .line 970
    .local v15, typeAdded:Z
    #v15=(Null);
    invoke-static/range {p1 .. p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 971
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    #v10=(Reference,Ljava/util/Map;);
    sget-object v16, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    #v16=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    move-object v0, v10

    #v0=(Reference,Ljava/util/Map;);
    move-object/from16 v1, v16

    #v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Object;);
    check-cast v6, Ljava/lang/String;

    .line 972
    .local v6, domain:Ljava/lang/String;
    sget-object v16, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    #v12=(Reference,Ljava/lang/Object;);
    check-cast v12, Ljava/lang/String;

    .line 973
    .local v12, protocol:Ljava/lang/String;
    sget-object v16, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Object;);
    check-cast v5, Ljava/lang/String;

    .line 974
    .local v5, application:Ljava/lang/String;
    sget-object v16, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference,Ljava/lang/Object;);
    check-cast v13, Ljava/lang/String;

    .line 976
    .local v13, subtype:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    #v16=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    #v17=(Integer);
    if-lez v17, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    #v17=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v18, "_"

    #v18=(Reference,Ljava/lang/String;);
    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v17=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_0
    #v18=(Conflicted);
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v16=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    #v17=(Integer);
    if-lez v17, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    #v17=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v18, "_"

    #v18=(Reference,Ljava/lang/String;);
    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v17=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_1
    #v18=(Conflicted);
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 977
    .local v11, name:Ljava/lang/String;
    #v11=(Reference,Ljava/lang/String;);
    sget-object v16, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    #v17=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v18

    #v18=(Reference,Ljava/lang/String;);
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v17=(Reference,Ljava/lang/StringBuilder;);
    const-string v18, ".registering service type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " as: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    #v18=(Integer);
    if-lez v18, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v19, " subtype: "

    #v19=(Reference,Ljava/lang/String;);
    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v18=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_2
    #v19=(Conflicted);
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    #v16=(Boolean);
    if-nez v16, :cond_0

    const-string v16, "dns-sd"

    #v16=(Reference,Ljava/lang/String;);
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    #v16=(Boolean);
    if-nez v16, :cond_0

    const-string v16, "in-addr.arpa"

    #v16=(Reference,Ljava/lang/String;);
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    #v16=(Boolean);
    if-nez v16, :cond_0

    const-string v16, "ip6.arpa"

    #v16=(Reference,Ljava/lang/String;);
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    #v16=(Boolean);
    if-nez v16, :cond_0

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v16, v0

    #v16=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    new-instance v17, Ljava/util/HashSet;

    #v17=(UninitRef,Ljava/util/HashSet;);
    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    #v17=(Reference,Ljava/util/HashSet;);
    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v2, v17

    #v2=(Reference,Ljava/util/HashSet;);
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_6

    const/16 v16, 0x1

    #v16=(One);
    move/from16 v15, v16

    .line 981
    :goto_3
    #v15=(Boolean);v16=(Boolean);
    if-eqz v15, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v16, v0

    #v16=(Reference,Ljava/util/Set;);
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    #v17=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    new-array v0, v0, [Ljavax/jmdns/ServiceTypeListener;

    #v0=(Reference,[Ljavax/jmdns/ServiceTypeListener;);
    move-object/from16 v17, v0

    #v17=(Reference,[Ljavax/jmdns/ServiceTypeListener;);
    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference,[Ljava/lang/Object;);
    check-cast v8, [Ljavax/jmdns/ServiceTypeListener;

    .line 984
    .local v8, list:[Ljavax/jmdns/ServiceTypeListener;
    new-instance v7, Ljavax/jmdns/impl/ServiceEventImpl;

    #v7=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    const-string v16, ""

    const/16 v17, 0x0

    #v17=(Null);
    move-object v0, v7

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v16

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v4, v17

    #v4=(Null);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 985
    .local v7, event:Ljavax/jmdns/ServiceEvent;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);v7=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    move-object v0, v8

    array-length v0, v0

    #v0=(Integer);
    move/from16 v16, v0

    #v16=(Integer);
    const/16 v17, 0x0

    :goto_4
    #v1=(Conflicted);v9=(Conflicted);v17=(Integer);
    move/from16 v0, v17

    move/from16 v1, v16

    #v1=(Integer);
    if-lt v0, v1, :cond_7

    .line 991
    .end local v7           #event:Ljavax/jmdns/ServiceEvent;
    .end local v8           #list:[Ljavax/jmdns/ServiceTypeListener;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v17=(Conflicted);
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 993
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v16, v0

    #v16=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    move-object/from16 v0, v16

    move-object v1, v11

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    #v14=(Reference,Ljava/lang/Object;);
    check-cast v14, Ljava/util/Set;

    .line 994
    .local v14, subtypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    #v16=(Boolean);
    if-nez v16, :cond_2

    .line 996
    monitor-enter v14

    .line 998
    :try_start_0
    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1000
    const/4 v15, 0x1

    .line 1001
    #v15=(One);
    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v16, v0

    #v16=(Reference,Ljava/util/Set;);
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    move-object/from16 v17, v0

    #v17=(Reference,Ljava/util/Set;);
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    #v17=(Integer);
    move/from16 v0, v17

    #v0=(Integer);
    new-array v0, v0, [Ljavax/jmdns/ServiceTypeListener;

    #v0=(Reference,[Ljavax/jmdns/ServiceTypeListener;);
    move-object/from16 v17, v0

    #v17=(Reference,[Ljavax/jmdns/ServiceTypeListener;);
    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference,[Ljava/lang/Object;);
    check-cast v8, [Ljavax/jmdns/ServiceTypeListener;

    .line 1003
    .restart local v8       #list:[Ljavax/jmdns/ServiceTypeListener;
    new-instance v7, Ljavax/jmdns/impl/ServiceEventImpl;

    #v7=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    new-instance v16, Ljava/lang/StringBuilder;

    #v16=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v17, "_"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v16=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "._sub."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    const/16 v18, 0x0

    #v18=(Null);
    move-object v0, v7

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v3, v17

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v4, v18

    #v4=(Null);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 1004
    .restart local v7       #event:Ljavax/jmdns/ServiceEvent;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);v7=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    move-object v0, v8

    array-length v0, v0

    #v0=(Integer);
    move/from16 v16, v0

    #v16=(Integer);
    const/16 v17, 0x0

    :goto_5
    #v1=(Conflicted);v17=(Integer);
    move/from16 v0, v17

    move/from16 v1, v16

    #v1=(Integer);
    if-lt v0, v1, :cond_8

    .line 996
    .end local v7           #event:Ljavax/jmdns/ServiceEvent;
    .end local v8           #list:[Ljavax/jmdns/ServiceTypeListener;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v15=(Boolean);v17=(Conflicted);v18=(Reference,Ljava/lang/String;);
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    .end local v14           #subtypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    #v14=(Conflicted);
    return v15

    .line 976
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    #v0=(Reference,Ljava/util/Map;);v1=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);v2=(Uninit);v3=(Uninit);v4=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Uninit);v14=(Uninit);v15=(Null);v16=(UninitRef,Ljava/lang/StringBuilder;);v17=(Integer);v18=(Uninit);v19=(Uninit);
    const-string v17, ""

    #v17=(Reference,Ljava/lang/String;);
    goto/16 :goto_0

    :cond_4
    #v16=(Reference,Ljava/lang/StringBuilder;);v17=(Integer);v18=(Conflicted);
    const-string v17, ""

    #v17=(Reference,Ljava/lang/String;);
    goto/16 :goto_1

    .line 977
    .restart local v11       #name:Ljava/lang/String;
    :cond_5
    #v11=(Reference,Ljava/lang/String;);v18=(Integer);
    const-string v18, ""

    #v18=(Reference,Ljava/lang/String;);
    goto/16 :goto_2

    .line 980
    :cond_6
    #v2=(Reference,Ljava/util/HashSet;);v19=(Conflicted);
    const/16 v16, 0x0

    #v16=(Null);
    move/from16 v15, v16

    goto/16 :goto_3

    .line 985
    .restart local v7       #event:Ljavax/jmdns/ServiceEvent;
    .restart local v8       #list:[Ljavax/jmdns/ServiceTypeListener;
    :cond_7
    #v0=(Integer);v1=(Integer);v3=(Reference,Ljava/lang/String;);v4=(Null);v7=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);v8=(Reference,[Ljavax/jmdns/ServiceTypeListener;);v9=(Conflicted);v15=(Boolean);v16=(Integer);v17=(Integer);
    aget-object v9, v8, v17

    .line 987
    .local v9, listener:Ljavax/jmdns/ServiceTypeListener;
    #v9=(Reference,Ljavax/jmdns/ServiceTypeListener;);
    invoke-interface {v9, v7}, Ljavax/jmdns/ServiceTypeListener;->serviceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 985
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 1004
    .end local v9           #listener:Ljavax/jmdns/ServiceTypeListener;
    .restart local v14       #subtypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    :try_start_1
    #v9=(Conflicted);v14=(Reference,Ljava/util/Set;);v15=(One);v18=(Null);
    aget-object v9, v8, v17

    .line 1006
    .restart local v9       #listener:Ljavax/jmdns/ServiceTypeListener;
    #v9=(Reference,Ljavax/jmdns/ServiceTypeListener;);
    invoke-interface {v9, v7}, Ljavax/jmdns/ServiceTypeListener;->subTypeForServiceTypeAdded(Ljavax/jmdns/ServiceEvent;)V

    .line 1004
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 996
    .end local v7           #event:Ljavax/jmdns/ServiceEvent;
    .end local v8           #list:[Ljavax/jmdns/ServiceTypeListener;
    .end local v9           #listener:Ljavax/jmdns/ServiceTypeListener;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v15=(Boolean);v16=(Conflicted);v17=(Conflicted);v18=(Reference,Ljava/lang/String;);
    move-exception v16

    #v16=(Reference,Ljava/lang/Throwable;);
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 401
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/HostInfo;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 402
    return-void
.end method

.method public removeListener(Ljavax/jmdns/impl/DNSListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1130
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1131
    return-void
.end method

.method public removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
    .locals 3
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 857
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, aType:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    #v2=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/util/List;

    .line 859
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    if-eqz v1, :cond_1

    .line 861
    monitor-enter v1

    .line 863
    :try_start_0
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 864
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    #v2=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 861
    :cond_0
    #v2=(Conflicted);
    monitor-exit v1

    .line 870
    :cond_1
    return-void

    .line 861
    :catchall_0
    move-exception v2

    #v2=(Reference,Ljava/lang/Throwable;);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 793
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_typeListeners:Ljava/util/Set;

    #v0=(Reference,Ljava/util/Set;);
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 794
    return-void
.end method

.method public renewServiceCollector(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 3
    .parameter "record"

    .prologue
    .line 1141
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getServiceInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 1142
    .local v0, info:Ljavax/jmdns/ServiceInfo;
    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    #v1=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1145
    new-instance v1, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;

    #v1=(UninitRef,Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;);
    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;)V

    #v1=(Reference,Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/tasks/resolver/ServiceResolver;->start(Ljava/util/Timer;)V

    .line 1147
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "name"

    .prologue
    .line 711
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x1770

    #v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 712
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "type"
    .parameter "name"
    .parameter "timeout"

    .prologue
    .line 733
    const/4 v3, 0x0

    #v3=(Null);
    const-wide/16 v4, 0x1770

    #v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 734
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "type"
    .parameter "name"
    .parameter "persistent"

    .prologue
    .line 722
    const-wide/16 v4, 0x1770

    #v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p2

    #v2=(Reference,Ljava/lang/String;);
    move v3, p3

    #v3=(Boolean);
    invoke-virtual/range {v0 .. v5}, Ljavax/jmdns/impl/JmDNSImpl;->requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 723
    return-void
.end method

.method public requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "persistent"
    .parameter "timeout"

    .prologue
    .line 744
    const-string v1, ""

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, p1, p2, v1, p3}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 745
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-direct {p0, v0, p4, p5}, Ljavax/jmdns/impl/JmDNSImpl;->waitForInfoData(Ljavax/jmdns/ServiceInfo;J)V

    .line 746
    return-void
.end method

.method resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 4
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "persistent"

    .prologue
    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, lotype:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;->registerServiceType(Ljava/lang/String;)Z

    .line 595
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    #v2=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    new-instance v3, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;

    #v3=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    invoke-direct {v3, v1}, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;);
    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 597
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/ServiceListener;

    invoke-virtual {p0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    .line 601
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 603
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    new-instance v2, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;

    #v2=(UninitRef,Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;);
    invoke-direct {v2, p0, v0}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/ServiceInfoImpl;)V

    #v2=(Reference,Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;);
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_timer:Ljava/util/Timer;

    invoke-virtual {v2, v3}, Ljavax/jmdns/impl/tasks/resolver/ServiceInfoResolver;->start(Ljava/util/Timer;)V

    .line 605
    return-object v0
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/HostInfo;->revertState()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public send(Ljavax/jmdns/impl/DNSOutgoing;)V
    .locals 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1398
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->data()[B

    move-result-object v1

    .line 1399
    .local v1, message:[B
    #v1=(Reference,[B);
    new-instance v4, Ljava/net/DatagramPacket;

    #v4=(UninitRef,Ljava/net/DatagramPacket;);
    array-length v5, v1

    #v5=(Integer);
    iget-object v6, p0, Ljavax/jmdns/impl/JmDNSImpl;->_group:Ljava/net/InetAddress;

    #v6=(Reference,Ljava/net/InetAddress;);
    sget v7, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    #v7=(Integer);
    invoke-direct {v4, v1, v5, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1401
    .local v4, packet:Ljava/net/DatagramPacket;
    #v4=(Reference,Ljava/net/DatagramPacket;);
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v5=(Reference,Ljava/util/logging/Logger;);
    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 1405
    :try_start_0
    new-instance v3, Ljavax/jmdns/impl/DNSIncoming;

    #v3=(UninitRef,Ljavax/jmdns/impl/DNSIncoming;);
    invoke-direct {v3, v4}, Ljavax/jmdns/impl/DNSIncoming;-><init>(Ljava/net/DatagramPacket;)V

    .line 1406
    .local v3, msg:Ljavax/jmdns/impl/DNSIncoming;
    #v3=(Reference,Ljavax/jmdns/impl/DNSIncoming;);
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v5=(Reference,Ljava/util/logging/Logger;);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v7, "send("

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") JmDNS out:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v3, v7}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    .end local v3           #msg:Ljavax/jmdns/impl/DNSIncoming;
    :cond_0
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_socket:Ljava/net/MulticastSocket;

    .line 1414
    .local v2, ms:Ljava/net/MulticastSocket;
    #v2=(Reference,Ljava/net/MulticastSocket;);
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 1415
    invoke-virtual {v2, v4}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1417
    .end local v1           #message:[B
    .end local v2           #ms:Ljava/net/MulticastSocket;
    .end local v4           #packet:Ljava/net/DatagramPacket;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 1408
    .restart local v1       #message:[B
    .restart local v4       #packet:Ljava/net/DatagramPacket;
    :catch_0
    #v0=(Uninit);v1=(Reference,[B);v2=(Uninit);v4=(Reference,Ljava/net/DatagramPacket;);v8=(Uninit);
    move-exception v5

    #v5=(Reference,Ljava/io/IOException;);
    move-object v0, v5

    .line 1410
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    sget-object v5, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Class;);
    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v8, "send("

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v7=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") - JmDNS can not parse what it sends!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setClosed(Z)V
    .locals 0
    .parameter "closed"

    .prologue
    .line 1962
    iput-boolean p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_closed:Z

    .line 1963
    return-void
.end method

.method public setLastThrottleIncrement(J)V
    .locals 0
    .parameter "lastThrottleIncrement"

    .prologue
    .line 1907
    iput-wide p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_lastThrottleIncrement:J

    .line 1908
    return-void
.end method

.method setLocalHost(Ljavax/jmdns/impl/HostInfo;)V
    .locals 0
    .parameter "localHost"

    .prologue
    .line 1952
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    .line 1953
    return-void
.end method

.method public setPlannedAnswer(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 0
    .parameter "plannedAnswer"

    .prologue
    .line 1942
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_plannedAnswer:Ljavax/jmdns/impl/DNSIncoming;

    .line 1943
    return-void
.end method

.method public setThrottle(I)V
    .locals 0
    .parameter "throttle"

    .prologue
    .line 1917
    iput p1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_throttle:I

    .line 1918
    return-void
.end method

.method public startAnnouncer()V
    .locals 2

    .prologue
    .line 1426
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Announcer;

    #v0=(UninitRef,Ljavax/jmdns/impl/tasks/state/Announcer;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/tasks/state/Announcer;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v0=(Reference,Ljavax/jmdns/impl/tasks/state/Announcer;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    #v1=(Reference,Ljava/util/Timer;);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Announcer;->start(Ljava/util/Timer;)V

    .line 1427
    return-void
.end method

.method public startCanceler()V
    .locals 2

    .prologue
    .line 1436
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Canceler;

    #v0=(UninitRef,Ljavax/jmdns/impl/tasks/state/Canceler;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/tasks/state/Canceler;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v0=(Reference,Ljavax/jmdns/impl/tasks/state/Canceler;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    #v1=(Reference,Ljava/util/Timer;);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Canceler;->start(Ljava/util/Timer;)V

    .line 1437
    return-void
.end method

.method public startProber()V
    .locals 2

    .prologue
    .line 1421
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Prober;

    #v0=(UninitRef,Ljavax/jmdns/impl/tasks/state/Prober;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/tasks/state/Prober;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v0=(Reference,Ljavax/jmdns/impl/tasks/state/Prober;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    #v1=(Reference,Ljava/util/Timer;);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Prober;->start(Ljava/util/Timer;)V

    .line 1422
    return-void
.end method

.method public startRenewer()V
    .locals 2

    .prologue
    .line 1431
    new-instance v0, Ljavax/jmdns/impl/tasks/state/Renewer;

    #v0=(UninitRef,Ljavax/jmdns/impl/tasks/state/Renewer;);
    invoke-direct {v0, p0}, Ljavax/jmdns/impl/tasks/state/Renewer;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    #v0=(Reference,Ljavax/jmdns/impl/tasks/state/Renewer;);
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl;->_stateTimer:Ljava/util/Timer;

    #v1=(Reference,Ljava/util/Timer;);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/tasks/state/Renewer;->start(Ljava/util/Timer;)V

    .line 1432
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const/16 v3, 0x800

    #v3=(PosShort);
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1586
    .local v0, aLog:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v3, "\t---- Local Host -----"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "\n\t"

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    const-string v3, "\n\t---- Services -----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    #v1=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 1593
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    const-string v3, "\t---- Types ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    #v2=(Conflicted);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 1600
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_cache:Ljavax/jmdns/impl/DNSCache;

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSCache;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    const-string v3, "\t---- Service Collectors ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    #v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 1608
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    const-string v3, "\t---- Service Listeners ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    #v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_4

    .line 1614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1589
    :cond_0
    #v2=(Uninit);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1591
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t\tService: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1595
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1597
    .restart local v1       #key:Ljava/lang/String;
    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceTypes:Ljava/util/concurrent/ConcurrentMap;

    #v4=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljava/util/Set;

    .line 1598
    .local v2, subtypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t\tType: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    const-string v5, "no subtypes"

    :goto_4
    #v5=(Reference,Ljava/lang/Object;);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    #v5=(Boolean);
    move-object v5, v2

    #v5=(Reference,Ljava/util/Set;);
    goto :goto_4

    .line 1604
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #subtypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1606
    .restart local v1       #key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t\tService Collector: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceCollectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1610
    .end local v1           #key:Ljava/lang/String;
    :cond_4
    #v1=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 1612
    .restart local v1       #key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t\tService Listener: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public unregisterAllServices()V
    .locals 6

    .prologue
    .line 935
    sget-object v2, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    #v2=(Reference,Ljava/util/logging/Logger;);
    const-string v3, "unregisterAllServices()"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 937
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_2

    .line 946
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    .line 948
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    #v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    .line 959
    return-void

    .line 937
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 939
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 940
    .local v0, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_0

    .line 942
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Cancelling service info: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    goto :goto_0

    .line 948
    .end local v0           #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 950
    .restart local v1       #name:Ljava/lang/String;
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .line 951
    .restart local v0       #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    if-eqz v0, :cond_1

    .line 953
    sget-object v3, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Wait for service info cancel: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 954
    const-wide/16 v3, 0x1388

    #v3=(LongLo);v4=(LongHi);
    invoke-virtual {v0, v3, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    .line 955
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    #v3=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public unregisterService(Ljavax/jmdns/ServiceInfo;)V
    .locals 4
    .parameter "infoAbstract"

    .prologue
    .line 917
    move-object v0, p1

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, v0

    .line 918
    .local v1, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v1=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl;->_services:Ljava/util/concurrent/ConcurrentMap;

    #v2=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->cancelState()Z

    .line 920
    invoke-virtual {p0}, Ljavax/jmdns/impl/JmDNSImpl;->startCanceler()V

    .line 923
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->waitForCanceled(J)Z

    .line 925
    return-void
.end method

.method public updateRecord(JLjavax/jmdns/impl/DNSRecord;Ljavax/jmdns/impl/JmDNSImpl$Operation;)V
    .locals 18
    .parameter "now"
    .parameter "rec"
    .parameter "operation"

    .prologue
    .line 1164
    const/4 v10, 0x0

    .line 1165
    .local v10, listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    #v10=(Null);
    move-object/from16 v0, p0

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    move-object v14, v0

    #v14=(Reference,Ljava/util/List;);
    monitor-enter v14

    .line 1167
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    #v11=(UninitRef,Ljava/util/ArrayList;);
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_listeners:Ljava/util/List;

    move-object v15, v0

    #v15=(Reference,Ljava/util/List;);
    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    .end local v10           #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .local v11, listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :try_start_1
    #v11=(Reference,Ljava/util/ArrayList;);
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1169
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v9=(Conflicted);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    #v15=(Boolean);
    if-nez v15, :cond_4

    .line 1174
    sget-object v14, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual/range {p3 .. p3}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v15

    #v15=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    invoke-virtual {v14, v15}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_3

    .line 1177
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v5

    .line 1178
    .local v5, event:Ljavax/jmdns/ServiceEvent;
    #v5=(Reference,Ljavax/jmdns/ServiceEvent;);
    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    #v14=(Reference,Ljavax/jmdns/ServiceInfo;);
    if-eqz v14, :cond_0

    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_1

    .line 1181
    :cond_0
    #v14=(Conflicted);
    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    #v16=(Reference,Ljava/lang/String;);
    const/16 v17, 0x0

    #v17=(Null);
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    #v2=(Reference,Ljava/lang/String;);
    move-object/from16 v3, v16

    #v3=(Reference,Ljava/lang/String;);
    move/from16 v4, v17

    #v4=(Null);
    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/JmDNSImpl;->getServiceInfoFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v7

    .line 1182
    .local v7, info:Ljavax/jmdns/ServiceInfo;
    #v7=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v14

    #v14=(Boolean);
    if-eqz v14, :cond_1

    .line 1184
    new-instance v6, Ljavax/jmdns/impl/ServiceEventImpl;

    #v6=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v14

    #v14=(Reference,Ljava/lang/String;);
    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v0, v6

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v7

    #v4=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .end local v5           #event:Ljavax/jmdns/ServiceEvent;
    .local v6, event:Ljavax/jmdns/ServiceEvent;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);v6=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    move-object v5, v6

    .line 1188
    .end local v6           #event:Ljavax/jmdns/ServiceEvent;
    .end local v7           #info:Ljavax/jmdns/ServiceInfo;
    .restart local v5       #event:Ljavax/jmdns/ServiceEvent;
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/jmdns/impl/JmDNSImpl;->_serviceListeners:Ljava/util/concurrent/ConcurrentMap;

    move-object v14, v0

    #v14=(Reference,Ljava/util/concurrent/ConcurrentMap;);
    invoke-virtual {v5}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference,Ljava/lang/Object;);
    check-cast v8, Ljava/util/List;

    .line 1189
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 1190
    .local v12, serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    #v12=(Reference,Ljava/util/List;);
    if-eqz v8, :cond_2

    .line 1192
    monitor-enter v8

    .line 1194
    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    #v13=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1192
    .end local v12           #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .local v13, serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :try_start_3
    #v13=(Reference,Ljava/util/ArrayList;);
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v12, v13

    .line 1197
    .end local v13           #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v12       #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :cond_2
    #v13=(Conflicted);
    sget-object v14, Ljavax/jmdns/impl/JmDNSImpl;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    #v15=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v16

    #v16=(Reference,Ljava/lang/String;);
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v15=(Reference,Ljava/lang/StringBuilder;);
    const-string v16, ".updating record for event: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " list "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " operation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1198
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    #v14=(Boolean);
    if-nez v14, :cond_3

    .line 1200
    invoke-static {}, Ljavax/jmdns/impl/JmDNSImpl;->$SWITCH_TABLE$javax$jmdns$impl$JmDNSImpl$Operation()[I

    move-result-object v14

    #v14=(Reference,[I);
    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ordinal()I

    move-result v15

    #v15=(Integer);
    aget v14, v14, v15

    #v14=(Integer);
    packed-switch v14, :pswitch_data_0

    .line 1219
    .end local v5           #event:Ljavax/jmdns/ServiceEvent;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .end local v12           #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :cond_3
    :pswitch_0
    #v1=(Conflicted);v5=(Conflicted);v8=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    return-void

    .line 1165
    .end local v11           #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .restart local v10       #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :catchall_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference,Ljava/util/ArrayList;);v11=(Conflicted);v12=(Uninit);v13=(Uninit);v14=(Reference,Ljava/util/List;);v16=(Uninit);v17=(Uninit);
    move-exception v15

    :goto_1
    :try_start_4
    #v15=(Reference,Ljava/lang/Throwable;);
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v15

    .line 1169
    .end local v10           #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .restart local v11       #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v9=(Conflicted);v10=(Null);v11=(Reference,Ljava/util/ArrayList;);v15=(Boolean);
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Ljavax/jmdns/impl/DNSListener;

    .line 1171
    .local v9, listener:Ljavax/jmdns/impl/DNSListener;
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/JmDNSImpl;->getCache()Ljavax/jmdns/impl/DNSCache;

    move-result-object v15

    #v15=(Reference,Ljavax/jmdns/impl/DNSCache;);
    move-object v0, v9

    move-object v1, v15

    #v1=(Reference,Ljavax/jmdns/impl/DNSCache;);
    move-wide/from16 v2, p1

    #v2=(LongLo);v3=(LongHi);
    move-object/from16 v4, p3

    #v4=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/DNSListener;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto/16 :goto_0

    .line 1192
    .end local v9           #listener:Ljavax/jmdns/impl/DNSListener;
    .restart local v5       #event:Ljavax/jmdns/ServiceEvent;
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v12       #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :catchall_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Reference,Ljavax/jmdns/ServiceEvent;);v6=(Conflicted);v7=(Conflicted);v8=(Reference,Ljava/util/List;);v9=(Conflicted);v12=(Reference,Ljava/lang/Object;);v13=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-exception v14

    :goto_2
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v14

    .line 1203
    :pswitch_1
    #v14=(Integer);v15=(Integer);v16=(Reference,Ljava/lang/String;);
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    #v14=(Reference,Ljava/util/Iterator;);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Ljavax/jmdns/ServiceListener;

    .line 1205
    .local v9, listener:Ljavax/jmdns/ServiceListener;
    invoke-interface {v9, v5}, Ljavax/jmdns/ServiceListener;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_3

    .line 1209
    .end local v9           #listener:Ljavax/jmdns/ServiceListener;
    :pswitch_2
    #v9=(Conflicted);v14=(Integer);v15=(Integer);
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    #v14=(Reference,Ljava/util/Iterator;);
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    #v9=(Reference,Ljava/lang/Object;);
    check-cast v9, Ljavax/jmdns/ServiceListener;

    .line 1211
    .restart local v9       #listener:Ljavax/jmdns/ServiceListener;
    invoke-interface {v9, v5}, Ljavax/jmdns/ServiceListener;->serviceRemoved(Ljavax/jmdns/ServiceEvent;)V

    goto :goto_4

    .line 1192
    .end local v9           #listener:Ljavax/jmdns/ServiceListener;
    .end local v12           #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v13       #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :catchall_2
    #v9=(Conflicted);v13=(Reference,Ljava/util/ArrayList;);v15=(Reference,Ljava/lang/String;);v16=(Conflicted);
    move-exception v14

    move-object v12, v13

    .end local v13           #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .restart local v12       #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    goto :goto_2

    .line 1165
    .end local v5           #event:Ljavax/jmdns/ServiceEvent;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    .end local v12           #serviceListenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/ServiceListener;>;"
    :catchall_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v12=(Uninit);v13=(Uninit);v16=(Uninit);v17=(Uninit);
    move-exception v15

    move-object v10, v11

    .end local v11           #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    .restart local v10       #listenerList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSListener;>;"
    #v10=(Reference,Ljava/util/ArrayList;);
    goto :goto_1

    .line 1200
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 478
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForAnnounced(J)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .parameter "timeout"

    .prologue
    .line 489
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl;->_localHost:Ljavax/jmdns/impl/HostInfo;

    #v0=(Reference,Ljavax/jmdns/impl/HostInfo;);
    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/HostInfo;->waitForCanceled(J)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
