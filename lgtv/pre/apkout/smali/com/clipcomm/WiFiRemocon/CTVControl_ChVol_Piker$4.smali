.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Piker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;);
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    return v0

    .line 178
    :pswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundTap()V

    .line 179
    :cond_1
    #v0=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_SOFT:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 175
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
