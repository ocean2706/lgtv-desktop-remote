.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Numpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;

.field private final synthetic val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    iget v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;->m_nKeycodeID:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 134
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    move-result-object v0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_SOFT:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 138
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 131
    :pswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    move-result-object v0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_HARD:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 129
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x7f060080
        :pswitch_0
    .end packed-switch
.end method
