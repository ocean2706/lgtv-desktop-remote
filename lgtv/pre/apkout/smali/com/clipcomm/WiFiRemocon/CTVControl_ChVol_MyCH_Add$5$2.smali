.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Add.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;->onWheelEvent(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    move-result-object v0

    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)Lcom/clipcomm/WiFiRemocon/CInputTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->Input()V

    .line 188
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getUDPRequest()Lcom/clipcomm/WiFiRemocon/UDPRequest;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;);
    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->HandlekeyInput(I)Z

    .line 190
    return-void
.end method
