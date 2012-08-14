.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 220
    #v4=(One);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->isExistCH(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v0, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 225
    .local v0, majorDig:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    const-string v2, "65535"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vGuideText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is duplicated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    return-void

    .line 232
    :cond_0
    #v1=(Integer);v3=(Uninit);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vGuideText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is duplicated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    .end local v0           #majorDig:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Boolean);v3=(Uninit);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->insertChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)J

    .line 242
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v0, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 244
    .restart local v0       #majorDig:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    const-string v2, "65535"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vGuideText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iput-boolean v4, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_bChangedMyChInfo:Z

    goto/16 :goto_0

    .line 252
    :cond_2
    #v1=(Integer);v3=(Uninit);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vGuideText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "\'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
