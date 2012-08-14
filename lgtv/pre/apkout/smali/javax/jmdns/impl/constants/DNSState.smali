.class public final enum Ljavax/jmdns/impl/constants/DNSState;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/constants/DNSState$StateClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSState;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSState:[I

.field public static final enum ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_3:Ljavax/jmdns/impl/constants/DNSState;


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/constants/DNSState$StateClass;


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSState()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSState:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSState;->values()[Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x6

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xa

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x7

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x8

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x9

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_a

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_9

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_8

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_7

    :catch_4
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_6

    :catch_5
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_5

    :catch_6
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_4

    :catch_7
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_8
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_9
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    #v9=(PosByte);
    const/4 v8, 0x3

    #v8=(PosByte);
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 19
    #v5=(Null);
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "PROBING_1"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "probing 1"

    #v2=(Reference,Ljava/lang/String;);
    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    invoke-direct {v0, v1, v5, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 23
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "PROBING_2"

    const-string v2, "probing 2"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 27
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "PROBING_3"

    const-string v2, "probing 3"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v7, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 31
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "ANNOUNCING_1"

    const-string v2, "announcing 1"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v8, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 35
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "ANNOUNCING_2"

    const-string v2, "announcing 2"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v9, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 39
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "ANNOUNCED"

    const/4 v2, 0x5

    #v2=(PosByte);
    const-string v3, "announced"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v4=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    .line 43
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "CANCELING_1"

    const/4 v2, 0x6

    const-string v3, "canceling 1"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 47
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "CANCELING_2"

    const/4 v2, 0x7

    const-string v3, "canceling 2"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 51
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "CANCELING_3"

    const/16 v2, 0x8

    const-string v3, "canceling 3"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 55
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState;);
    const-string v1, "CANCELED"

    const/16 v2, 0x9

    const-string v3, "canceled"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    .line 13
    const/16 v0, 0xa

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSState;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "state"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSState;->_name:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSState;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSState;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSState;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSState;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final advance()Ljavax/jmdns/impl/constants/DNSState;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSState;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSState()[I

    move-result-object v0

    #v0=(Reference,[I);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    .line 113
    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    return-object v0

    .line 92
    :pswitch_0
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 94
    :pswitch_1
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 96
    :pswitch_2
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 98
    :pswitch_3
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 100
    :pswitch_4
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 102
    :pswitch_5
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 104
    :pswitch_6
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 106
    :pswitch_7
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 108
    :pswitch_8
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 110
    :pswitch_9
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 89
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final isAnnounced()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final isAnnouncing()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final isCanceled()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final isCanceling()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final isProbing()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v1=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final revert()Ljavax/jmdns/impl/constants/DNSState;
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSState;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSState()[I

    move-result-object v0

    #v0=(Reference,[I);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    .line 140
    :goto_0
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    return-object v0

    .line 131
    :pswitch_0
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 135
    :pswitch_1
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 137
    :pswitch_2
    #v0=(Integer);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState;);
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method
