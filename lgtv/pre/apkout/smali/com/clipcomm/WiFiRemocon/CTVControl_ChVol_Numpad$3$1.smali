.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Numpad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;

.field private final synthetic val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;);
    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    iget v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;->m_nKeycodeID:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestKeyInput(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    return-void
.end method
