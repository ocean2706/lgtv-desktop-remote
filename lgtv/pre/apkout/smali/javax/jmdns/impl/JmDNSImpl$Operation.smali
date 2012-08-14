.class public final enum Ljavax/jmdns/impl/JmDNSImpl$Operation;
.super Ljava/lang/Enum;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/JmDNSImpl$Operation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

.field public static final enum Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;


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

    .line 64
    #v2=(Null);
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    const-string v1, "Remove"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    const-string v1, "Update"

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    const-string v1, "Add"

    invoke-direct {v0, v1, v4}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    const-string v1, "RegisterServiceType"

    invoke-direct {v0, v1, v5}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    const-string v1, "Noop"

    invoke-direct {v0, v1, v6}, Ljavax/jmdns/impl/JmDNSImpl$Operation;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    .line 62
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(Reference,[Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Remove:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Update:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Add:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->RegisterServiceType:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/JmDNSImpl$Operation;->Noop:Ljavax/jmdns/impl/JmDNSImpl$Operation;

    aput-object v1, v0, v6

    sput-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ENUM$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/JmDNSImpl$Operation;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/JmDNSImpl$Operation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/JmDNSImpl$Operation;->ENUM$VALUES:[Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v0=(Reference,[Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/JmDNSImpl$Operation;

    #v2=(Reference,[Ljavax/jmdns/impl/JmDNSImpl$Operation;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
