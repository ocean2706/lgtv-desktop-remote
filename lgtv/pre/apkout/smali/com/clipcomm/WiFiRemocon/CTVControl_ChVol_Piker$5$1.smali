.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Piker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    move-result-object v0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_HARD:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 199
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
