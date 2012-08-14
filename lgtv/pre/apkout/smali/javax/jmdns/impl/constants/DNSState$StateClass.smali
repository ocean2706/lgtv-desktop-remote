.class final enum Ljavax/jmdns/impl/constants/DNSState$StateClass;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/constants/DNSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StateClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSState$StateClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

.field public static final enum probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    #v6=(PosByte);
    const/4 v5, 0x3

    #v5=(PosByte);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 59
    #v2=(Null);
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const-string v1, "probing"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const-string v1, "announcing"

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const-string v1, "announced"

    invoke-direct {v0, v1, v4}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const-string v1, "canceling"

    invoke-direct {v0, v1, v5}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    const-string v1, "canceled"

    invoke-direct {v0, v1, v6}, Ljavax/jmdns/impl/constants/DNSState$StateClass;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 57
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    aput-object v1, v0, v6

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState$StateClass;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSState$StateClass;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState$StateClass;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$StateClass;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSState$StateClass;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSState$StateClass;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
