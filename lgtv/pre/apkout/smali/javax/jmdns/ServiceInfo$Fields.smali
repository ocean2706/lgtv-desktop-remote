.class public final enum Ljavax/jmdns/ServiceInfo$Fields;
.super Ljava/lang/Enum;
.source "ServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/ServiceInfo$Fields;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Application:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Domain:Ljavax/jmdns/ServiceInfo$Fields;

.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Instance:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Protocol:Ljavax/jmdns/ServiceInfo$Fields;

.field public static final enum Subtype:Ljavax/jmdns/ServiceInfo$Fields;


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

    .line 39
    #v2=(Null);
    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(UninitRef,Ljavax/jmdns/ServiceInfo$Fields;);
    const-string v1, "Domain"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(UninitRef,Ljavax/jmdns/ServiceInfo$Fields;);
    const-string v1, "Protocol"

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(UninitRef,Ljavax/jmdns/ServiceInfo$Fields;);
    const-string v1, "Application"

    invoke-direct {v0, v1, v4}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(UninitRef,Ljavax/jmdns/ServiceInfo$Fields;);
    const-string v1, "Instance"

    invoke-direct {v0, v1, v5}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    new-instance v0, Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(UninitRef,Ljavax/jmdns/ServiceInfo$Fields;);
    const-string v1, "Subtype"

    invoke-direct {v0, v1, v6}, Ljavax/jmdns/ServiceInfo$Fields;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    .line 37
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(Reference,[Ljavax/jmdns/ServiceInfo$Fields;);
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    aput-object v1, v0, v6

    sput-object v0, Ljavax/jmdns/ServiceInfo$Fields;->ENUM$VALUES:[Ljavax/jmdns/ServiceInfo$Fields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Ljavax/jmdns/ServiceInfo$Fields;);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/ServiceInfo$Fields;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/ServiceInfo$Fields;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/ServiceInfo$Fields;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->ENUM$VALUES:[Ljavax/jmdns/ServiceInfo$Fields;

    #v0=(Reference,[Ljavax/jmdns/ServiceInfo$Fields;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/ServiceInfo$Fields;

    #v2=(Reference,[Ljavax/jmdns/ServiceInfo$Fields;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
