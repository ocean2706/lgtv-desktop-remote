.class public final enum Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;
.super Ljava/lang/Enum;
.source "HTTPPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "req_type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

.field public static final enum NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

.field public static final enum auth:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

.field public static final enum command:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

.field public static final enum event:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    #v5=(PosByte);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 28
    #v2=(Null);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    const-string v1, "NOVALUE"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    .line 29
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    const-string v1, "command"

    invoke-direct {v0, v1, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->command:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    .line 30
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    const-string v1, "event"

    invoke-direct {v0, v1, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->event:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    .line 31
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    const-string v1, "auth"

    invoke-direct {v0, v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->auth:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    .line 26
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->command:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->event:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->auth:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    return-void
.end method

.method public static toReqType(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;
    .locals 2
    .parameter "strName"

    .prologue
    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    :goto_0
    #v0=(Conflicted);v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, ex:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    return-object p0
.end method

.method public static values()[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;

    #v2=(Reference,[Lcom/clipcomm/WiFiRemocon/HTTPPostRequest$req_type;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
