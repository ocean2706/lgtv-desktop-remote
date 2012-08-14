.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 154
    #v3=(Null);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    const-class v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "777"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "777"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "1"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "0"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "Demo TV-0"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "Demo TV-0"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    const-string v2, "cable"

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 164
    const-string v1, "cur_ch"

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    invoke-virtual {v1, v0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iput-boolean v4, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    .line 178
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 170
    :cond_1
    #v1=(Boolean);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-static {v1, v2}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->GetCurrentChannel(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 172
    const-string v1, "cur_ch"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    invoke-virtual {v1, v0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iput-boolean v4, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    goto :goto_0
.end method
