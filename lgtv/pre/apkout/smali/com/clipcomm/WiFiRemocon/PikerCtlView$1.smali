.class Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    .line 337
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    iget v1, v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    .line 343
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->access$0(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    move-result-object v0

    const/4 v1, -0x1

    #v1=(Byte);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Play(II)V

    .line 344
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 345
    return-void
.end method
