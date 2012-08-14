.class Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;
.super Ljava/lang/Object;
.source "CTVControl_Touchpad_pad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_SOFT:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 451
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 453
    const v2, 0x7f06008d

    .line 452
    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestTouchClick(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    return-void
.end method
