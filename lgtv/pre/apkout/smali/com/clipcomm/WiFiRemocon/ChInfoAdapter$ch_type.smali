.class public final enum Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;
.super Ljava/lang/Enum;
.source "ChInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ch_type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

.field public static final enum NOVALUE:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

.field public static final enum cable:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

.field public static final enum satellite:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 69
    #v2=(Null);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    const-string v1, "NOVALUE"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    .line 70
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    const-string v1, "cable"

    invoke-direct {v0, v1, v3}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->cable:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    .line 71
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    const-string v1, "satellite"

    invoke-direct {v0, v1, v4}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->satellite:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    .line 67
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->cable:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->satellite:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    return-void
.end method

.method public static toCHType(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;
    .locals 2
    .parameter "strName"

    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_0
    #v0=(Conflicted);v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    return-object p0
.end method

.method public static values()[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v2=(Reference,[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
