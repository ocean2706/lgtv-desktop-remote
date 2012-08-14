.class Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;
.super Landroid/os/Handler;
.source "PikerCtlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/PikerCtlView;->InitPikeControl(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    .line 357
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    #v0=(Integer);
    rem-int/lit16 v0, v0, 0x3e7

    if-nez v0, :cond_1

    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    if-gez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->processBtnEvent(I)V

    .line 377
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 370
    :cond_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->processBtnEvent(I)V

    goto :goto_0

    .line 374
    :cond_1
    #v0=(Integer);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->access$1()I

    move-result v1

    #v1=(Integer);
    const-wide v2, 0x3fa657184ae74487L

    #v2=(LongLo);v3=(LongHi);
    iget v4, p1, Landroid/os/Message;->what:I

    #v4=(Integer);
    int-to-double v4, v4

    #v4=(DoubleLo);v5=(DoubleHi);
    mul-double/2addr v2, v4

    #v2=(DoubleLo);v3=(DoubleHi);
    double-to-float v2, v2

    #v2=(Float);
    invoke-static {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->access$2(Lcom/clipcomm/WiFiRemocon/PikerCtlView;IF)V

    .line 375
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->invalidate()V

    .line 376
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
