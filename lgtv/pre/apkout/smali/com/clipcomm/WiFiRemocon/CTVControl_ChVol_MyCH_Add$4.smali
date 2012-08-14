.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Add.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;);
    return-void
.end method


# virtual methods
.method public onHideSoftkeyEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    #v1=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 147
    return-void
.end method
