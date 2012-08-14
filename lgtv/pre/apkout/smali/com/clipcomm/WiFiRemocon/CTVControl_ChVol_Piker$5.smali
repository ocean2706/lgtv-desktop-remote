.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;);
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    return v0

    .line 192
    :pswitch_0
    #v0=(Integer);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundMode()V

    .line 193
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5$1;);
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 189
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
