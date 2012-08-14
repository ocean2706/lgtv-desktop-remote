.class public Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;
.super Landroid/app/Activity;
.source "CTVControl_ChVol_MyCH_Edit_Name.java"


# instance fields
.field m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

.field m_bChangedMyChInfo:Z

.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

.field m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

.field m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

.field m_mEditDispnameActListener:Landroid/widget/TextView$OnEditorActionListener;

.field m_mIMM:Landroid/view/inputmethod/InputMethodManager;

.field m_vCHHyphen:Landroid/widget/TextView;

.field m_vCHMajor:Landroid/widget/TextView;

.field m_vCHMinor:Landroid/widget/TextView;

.field m_vEditDispname:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_bChangedMyChInfo:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 112
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_mEditDispnameActListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 28
    return-void
.end method


# virtual methods
.method DispCurChInfo()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    #v4=(PosByte);
    const/4 v3, 0x0

    .line 173
    #v3=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMajor:Landroid/widget/TextView;

    #v1=(Reference,Landroid/widget/TextView;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMinor:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v0, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 178
    .local v0, majorDig:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    const-string v2, "65535"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMajor:Landroid/widget/TextView;

    #v1=(Reference,Landroid/widget/TextView;);
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHHyphen:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMinor:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_0
    #v2=(Conflicted);
    return-void

    .line 190
    :cond_0
    #v1=(Integer);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMajor:Landroid/widget/TextView;

    #v1=(Reference,Landroid/widget/TextView;);
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMinor:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHHyphen:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    .line 70
    #v3=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v1, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    invoke-direct {v1, p0, v3}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;-><init>(Landroid/app/Activity;Z)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 72
    const v1, 0x7f030013

    #v1=(Integer);
    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    .line 74
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->setOnHideSoftkeyEventListener(Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;)V

    .line 83
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->setContentView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "cur_ch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 88
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    const v1, 0x7f080053

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMajor:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f080055

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHMinor:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f080054

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vCHHyphen:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f080056

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vEditDispname:Landroid/widget/EditText;

    .line 95
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vEditDispname:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_mEditDispnameActListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 96
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vEditDispname:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_curCHInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_vEditDispname:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 98
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    const-string v2, "demo_mychList.db"

    invoke-direct {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->open()V

    .line 107
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->DispCurChInfo()V

    .line 108
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->registerForContextMenu(Landroid/view/View;)V

    .line 109
    return-void

    .line 104
    :cond_0
    #v1=(Boolean);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    invoke-direct {v1, p0, v4}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-direct {v0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;-><init>(Landroid/view/Menu;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    .line 139
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->SetMainMenu()V

    .line 140
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->unRegReceiver()V

    .line 162
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 164
    :cond_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->close()V

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 150
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-virtual {v0, p1, p0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onOptionsItemSelected_2depth(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
