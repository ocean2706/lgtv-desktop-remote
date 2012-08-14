.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Add.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 212
    return-void
.end method
