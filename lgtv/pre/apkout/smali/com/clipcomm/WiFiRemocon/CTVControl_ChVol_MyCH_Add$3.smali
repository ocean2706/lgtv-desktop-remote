.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;
.super Landroid/os/Handler;
.source "CTVControl_ChVol_MyCH_Add.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 123
    iget v0, p1, Landroid/os/Message;->arg1:I

    #v0=(Integer);
    const/16 v1, 0xa

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #v0=(Reference,Ljava/lang/Object;);
    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->ParseChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;Ljava/lang/String;)Z

    .line 128
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->DispCurChInfo()V

    .line 130
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 131
    return-void
.end method
