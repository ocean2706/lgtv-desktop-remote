.class public Lcom/clipcomm/WiFiRemocon/CRegionDepUI;
.super Ljava/lang/Object;
.source "CRegionDepUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$CRegionDepUI$region_state_token:[I = null

.field static final REGION_EU:I = 0x2

.field static final REGION_FR:I = 0x3

.field static final REGION_KR:I = 0x1

.field static final REGION_US:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$CRegionDepUI$region_state_token()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CRegionDepUI;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$CRegionDepUI$region_state_token:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->values()[Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->EU:Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->FR:Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->ordinal()I

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
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->KR:Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->NOVALUE:Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->ordinal()I

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
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->US:Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/CRegionDepUI;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$CRegionDepUI$region_state_token:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI;);
    return-void
.end method

.method public static getFunctionIndent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "cxtFrom"

    .prologue
    .line 74
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public static getRegionCode(Ljava/lang/String;)I
    .locals 3
    .parameter "strRegion"

    .prologue
    const/4 v2, 0x0

    .line 85
    #v2=(Null);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$CRegionDepUI$region_state_token()[I

    move-result-object v0

    #v0=(Reference,[I);
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->toStateToken(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI$region_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 98
    :goto_0
    #v0=(PosByte);
    return v0

    :pswitch_0
    #v0=(Integer);
    move v0, v2

    .line 88
    #v0=(Null);
    goto :goto_0

    .line 90
    :pswitch_1
    #v0=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 92
    :pswitch_2
    #v0=(Integer);
    const/4 v0, 0x2

    #v0=(PosByte);
    goto :goto_0

    .line 94
    :pswitch_3
    #v0=(Integer);
    const/4 v0, 0x3

    #v0=(PosByte);
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
