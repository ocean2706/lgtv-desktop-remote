.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->GetCurChInfo()V

    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    return-void
.end method
