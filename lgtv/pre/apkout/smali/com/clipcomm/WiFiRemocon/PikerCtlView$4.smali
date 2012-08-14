.class Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;
.super Ljava/lang/Object;
.source "PikerCtlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/PikerCtlView;->processBtnEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

.field private final synthetic val$nBtnDir:I


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    iput p2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->val$nBtnDir:I

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 580
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->val$nBtnDir:I

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;I)V

    .line 581
    .local v0, evt:Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    invoke-interface {v1, v2, v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;->onWheelEvent(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;)V

    .line 585
    :cond_0
    #v2=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    iget-boolean v1, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_vVibrate:Landroid/os/Vibrator;

    sget v2, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_WHELL:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 586
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
