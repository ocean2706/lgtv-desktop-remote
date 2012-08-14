.class public final enum Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
.super Ljava/lang/Enum;
.source "HTTPPostServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "req_name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ChannelChanged:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum CursorVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field private static final synthetic ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum KeyboardVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum NavigationButtonVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum TextEdited:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum VolChVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum alive:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum byebye:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field public static final enum update:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 333
    #v3=(Null);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "NOVALUE"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 334
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "alive"

    invoke-direct {v0, v1, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->alive:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 335
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "update"

    invoke-direct {v0, v1, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->update:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 336
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "byebye"

    invoke-direct {v0, v1, v6}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->byebye:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 337
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "KeyboardVisible"

    invoke-direct {v0, v1, v7}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->KeyboardVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 338
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "VolChVisible"

    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->VolChVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 339
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "CursorVisible"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->CursorVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 340
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "TextEdited"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->TextEdited:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 341
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "ChannelChanged"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ChannelChanged:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 342
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    const-string v1, "NavigationButtonVisible"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NavigationButtonVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    .line 331
    const/16 v0, 0xa

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->alive:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->update:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->byebye:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v1, v0, v6

    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->KeyboardVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->VolChVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->CursorVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->TextEdited:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ChannelChanged:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NavigationButtonVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    aput-object v2, v0, v1

    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    return-void
.end method

.method public static toReqName(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
    .locals 2
    .parameter "strName"

    .prologue
    .line 354
    :try_start_0
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 358
    :goto_0
    #v0=(Conflicted);v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    return-object v1

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, ex:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    return-object p0
.end method

.method public static values()[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v2=(Reference,[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
