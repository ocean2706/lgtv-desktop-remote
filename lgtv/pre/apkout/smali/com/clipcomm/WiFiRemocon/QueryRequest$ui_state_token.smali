.class public final enum Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;
.super Ljava/lang/Enum;
.source "QueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/QueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ui_state_token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

.field public static final enum NOVALUE:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

.field public static final enum NavigationButton:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

.field public static final enum TouchPad:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

.field public static final enum VolCh:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;


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

    .line 121
    #v2=(Null);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    const-string v1, "NOVALUE"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NOVALUE:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    .line 122
    new-instance v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    const-string v1, "VolCh"

    invoke-direct {v0, v1, v3}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->VolCh:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    .line 123
    new-instance v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    const-string v1, "TouchPad"

    invoke-direct {v0, v1, v4}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->TouchPad:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    .line 124
    new-instance v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    const-string v1, "NavigationButton"

    invoke-direct {v0, v1, v5}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;-><init>(Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NavigationButton:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    .line 119
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NOVALUE:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->VolCh:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->TouchPad:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NavigationButton:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    aput-object v1, v0, v5

    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    return-void
.end method

.method public static toStateToken(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;
    .locals 2
    .parameter "strName"

    .prologue
    .line 130
    :try_start_0
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    #v0=(Conflicted);v1=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NOVALUE:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    return-object p0
.end method

.method public static values()[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ENUM$VALUES:[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v2=(Reference,[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
