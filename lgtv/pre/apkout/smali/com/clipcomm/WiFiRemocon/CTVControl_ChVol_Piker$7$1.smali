.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Piker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;);
    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007d

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestKeyInput(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    return-void
.end method
