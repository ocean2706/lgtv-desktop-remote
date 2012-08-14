.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Piker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;->onWheelEvent(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getUDPRequest()Lcom/clipcomm/WiFiRemocon/UDPRequest;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;);
    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060085

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->HandlekeyInput(I)Z

    .line 115
    return-void
.end method
