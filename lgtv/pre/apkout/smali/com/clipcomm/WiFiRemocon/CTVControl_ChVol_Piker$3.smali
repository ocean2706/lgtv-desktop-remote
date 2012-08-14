.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Piker.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;);
    return-object v0
.end method


# virtual methods
.method public onWheelEvent(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;)V
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual {p2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 144
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
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundTap()V

    .line 145
    :cond_0
    #v0=(Conflicted);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$1;);
    invoke-virtual {p1, v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 156
    :pswitch_1
    #v0=(Integer);
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

    .line 157
    :cond_1
    #v0=(Conflicted);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3$2;);
    invoke-virtual {p1, v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
