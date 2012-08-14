.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;

.field private final synthetic val$selectedChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;->val$selectedChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;->val$selectedChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestHandleChannelChange(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Ljava/lang/String;

    .line 457
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    move-result-object v0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_HARD:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 458
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
