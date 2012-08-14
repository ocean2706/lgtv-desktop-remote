.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Add.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;);
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 300
    #v2=(Null);
    const/4 v0, 0x6

    #v0=(PosByte);
    if-ne p2, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    #v1=(Reference,Ljava/lang/CharSequence;);
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-virtual {v0, v2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->DispCurChInfo()V

    .line 308
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return v2
.end method
