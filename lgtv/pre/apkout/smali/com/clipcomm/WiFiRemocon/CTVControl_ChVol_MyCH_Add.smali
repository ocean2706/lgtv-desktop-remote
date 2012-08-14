.class public Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;
.super Landroid/app/Activity;
.source "CTVControl_ChVol_MyCH_Add.java"


# instance fields
.field m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

.field m_bChangedMyChInfo:Z

.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

.field m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

.field m_hEvtChInfo:Landroid/os/Handler;

.field m_hEvtInputTimeout:Landroid/os/Handler;

.field m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

.field m_mEditDispnameActListener:Landroid/widget/TextView$OnEditorActionListener;

.field m_mIMM:Landroid/view/inputmethod/InputMethodManager;

.field m_nDemoIndex:I

.field m_pParentActivity:Landroid/app/Activity;

.field private m_thInputTimer:Lcom/clipcomm/WiFiRemocon/CInputTimer;

.field m_vBtnAddCh:Landroid/widget/Button;

.field m_vBtnChName:Landroid/widget/Button;

.field m_vCHHyphen:Landroid/widget/TextView;

.field m_vCHMajor:Landroid/widget/TextView;

.field m_vCHMinor:Landroid/widget/TextView;

.field m_vEditDispname:Landroid/widget/EditText;

.field m_vGuideText:Landroid/widget/TextView;

.field m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    #v1=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_bChangedMyChInfo:Z

    .line 85
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 88
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_thInputTimer:Lcom/clipcomm/WiFiRemocon/CInputTimer;

    .line 295
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_mEditDispnameActListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)Lcom/clipcomm/WiFiRemocon/CInputTimer;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_thInputTimer:Lcom/clipcomm/WiFiRemocon/CInputTimer;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CInputTimer;);
    return-object v0
.end method


# virtual methods
.method DispCurChInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    #v4=(PosByte);
    const/4 v3, 0x0

    .line 393
    #v3=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    #v1=(Reference,Landroid/widget/Button;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMajor:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMinor:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v0, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 399
    .local v0, majorDig:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    const-string v2, "65535"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMajor:Landroid/widget/TextView;

    #v1=(Reference,Landroid/widget/TextView;);
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHHyphen:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMinor:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    :goto_0
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vGuideText:Landroid/widget/TextView;

    const v2, 0x7f060029

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    return-void

    .line 407
    :cond_0
    #v1=(Integer);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    #v1=(Reference,Landroid/widget/Button;);
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMajor:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMinor:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHHyphen:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method GetCurChInfo()V
    .locals 3

    .prologue
    .line 353
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "Demo TV-"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_nDemoIndex:I

    #v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_nDemoIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->DispCurChInfo()V

    .line 364
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_bChangedMyChInfo:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 321
    const/4 v1, -0x1

    #v1=(Byte);
    invoke-virtual {p0, v1, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->setResult(ILandroid/content/Intent;)V

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->finish()V

    .line 328
    return-void

    .line 325
    :cond_0
    #v1=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 105
    #v4=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v1, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;-><init>(Landroid/app/Activity;Z)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 108
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$2;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_hEvtInputTimeout:Landroid/os/Handler;

    .line 117
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CInputTimer;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CInputTimer;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_hEvtInputTimeout:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    const/16 v3, 0x12c

    #v3=(PosShort);
    invoke-direct {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/CInputTimer;-><init>(Landroid/os/Handler;I)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CInputTimer;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_thInputTimer:Lcom/clipcomm/WiFiRemocon/CInputTimer;

    .line 118
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$3;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_hEvtChInfo:Landroid/os/Handler;

    .line 134
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_hEvtChInfo:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setRecvCHInfoHandler(Landroid/os/Handler;)V

    .line 137
    const v1, 0x7f030012

    #v1=(Integer);
    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    .line 139
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$4;);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->setOnHideSoftkeyEventListener(Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;)V

    .line 149
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->setContentView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 153
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "cur_ch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 155
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 157
    const v1, 0x7f08004c

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMajor:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f08004e

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHMinor:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f08004d

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vCHHyphen:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f080052

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vGuideText:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f080047

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    .line 162
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setOnWheelEventListener(Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;)V

    .line 198
    const v1, 0x7f08004f

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    .line 199
    const v1, 0x7f080051

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnAddCh:Landroid/widget/Button;

    .line 200
    const v1, 0x7f080050

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    .line 201
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vEditDispname:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_mEditDispnameActListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnChName:Landroid/widget/Button;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$6;);
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vBtnAddCh:Landroid/widget/Button;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$7;);
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    const-string v2, "demo_mychList.db"

    invoke-direct {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->open()V

    .line 289
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->DispCurChInfo()V

    .line 290
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_thInputTimer:Lcom/clipcomm/WiFiRemocon/CInputTimer;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->start()V

    .line 291
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->registerForContextMenu(Landroid/view/View;)V

    .line 292
    return-void

    .line 286
    :cond_0
    #v1=(Boolean);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    invoke-direct {v1, p0, v4}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 373
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-direct {v0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;-><init>(Landroid/view/Menu;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    .line 374
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->SetMainMenu()V

    .line 375
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    #v1=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->unRegReceiver()V

    .line 339
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 341
    :cond_0
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setRecvCHInfoHandler(Landroid/os/Handler;)V

    .line 342
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_thInputTimer:Lcom/clipcomm/WiFiRemocon/CInputTimer;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->destroy()V

    .line 343
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->pause()V

    .line 344
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->close()V

    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 385
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-virtual {v0, p1, p0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onOptionsItemSelected_2depth(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
