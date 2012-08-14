.class Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;
.super Landroid/os/Handler;
.source "CTVControl_RootUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    .line 287
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget v1, p1, Landroid/os/Message;->arg1:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->processEventHadler(I)V

    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 294
    return-void
.end method
