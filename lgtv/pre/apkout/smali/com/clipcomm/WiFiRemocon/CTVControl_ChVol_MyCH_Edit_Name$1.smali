.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Edit_Name.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;);
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 117
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ne p2, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    #v2=(Reference,Ljava/lang/CharSequence;);
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->updateChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;);
    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {v1, v2, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->setResult(ILandroid/content/Intent;)V

    .line 124
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->finish()V

    .line 127
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    return v1
.end method
