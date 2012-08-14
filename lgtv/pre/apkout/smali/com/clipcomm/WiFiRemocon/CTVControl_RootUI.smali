.class public Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;
.super Landroid/app/ActivityGroup;
.source "CTVControl_RootUI.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# static fields
.field private static final REQUEST_CODE_KBD_VISIBLE:I = 0x1b49

.field private static final SHAKE_THRESHOLD:I = 0x7d0

.field private static m_myActivityGroup:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;


# instance fields
.field fVolume_curTC:F

.field fVolume_oldTC:F

.field private lastSend:J

.field private lastUpdate:J

.field private last_x:F

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

.field m_bIsOnMuteState:Z

.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_hEventHandler:Landroid/os/Handler;

.field m_hGoNetcast:Landroid/os/Handler;

.field m_mControlTab:Landroid/widget/TabHost;

.field m_mTabWidget:Landroid/widget/TabWidget;

.field private m_mgrSensor:Landroid/hardware/SensorManager;

.field private m_mgrTelephony:Landroid/telephony/TelephonyManager;

.field m_vVibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 26
    #v0=(LongLo);v1=(LongHi);
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 36
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastUpdate:J

    .line 39
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastSend:J

    .line 60
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_bIsOnMuteState:Z

    .line 63
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 112
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_hGoNetcast:Landroid/os/Handler;

    .line 287
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$2;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_hEventHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public static getActivity()Landroid/app/ActivityGroup;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_myActivityGroup:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    return-object v0
.end method


# virtual methods
.method GoNetcast()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_vVibrate:Landroid/os/Vibrator;

    #v0=(Reference,Landroid/os/Vibrator;);
    const-wide/16 v1, 0x64

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 166
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference,Landroid/content/res/Resources;);
    const v2, 0x7f0600a2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestKeyInput(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    return-void
.end method

.method public getCurrentTabIdx()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 109
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, -0x1

    .line 201
    #v1=(Byte);
    const/16 v0, 0x1b49

    #v0=(PosShort);
    if-ne p1, v0, :cond_2

    .line 203
    if-eqz p3, :cond_2

    .line 205
    const-string v0, "result_filter"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 208
    :pswitch_0
    #v0=(Integer);
    const-string v0, "reason"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->processEventHadler(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v0, "tabindex"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 218
    :cond_1
    #v0=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;->GetCurTabHost()Landroid/widget/TabHost;

    move-result-object v0

    #v0=(Reference,Landroid/widget/TabHost;);
    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;->GetCurTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 224
    :pswitch_3
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    #v0=(Integer);
    if-eq v0, v3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 230
    :pswitch_4
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    #v0=(Integer);
    if-eq v0, v4, :cond_0

    .line 232
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 241
    :cond_2
    #v0=(PosShort);
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 205
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 335
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v15

    #v15=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_hEventHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    #v16=(Reference,Landroid/os/Handler;);
    move-object v0, v15

    move-object/from16 v1, v16

    #v1=(Reference,Landroid/os/Handler;);
    move-object/from16 v2, p0

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->AddRef(Landroid/os/Handler;Landroid/content/Context;)V

    .line 336
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 337
    const-string v15, "vibrator"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/os/Vibrator;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_vVibrate:Landroid/os/Vibrator;

    .line 338
    new-instance v15, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v15=(UninitRef,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    move-object v0, v15

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;-><init>(Landroid/app/Activity;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);v15=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 339
    const v15, 0x7f03000a

    #v15=(Integer);
    move-object/from16 v0, p0

    move v1, v15

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->setContentView(I)V

    .line 340
    sput-object p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_myActivityGroup:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    .line 342
    const v15, 0x7f08001b

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iput-object v0, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabHost;);
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    new-instance v16, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;

    #v16=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;);
    move-object/from16 v0, v16

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;);
    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;);v16=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;);
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    .line 367
    new-instance v12, Landroid/util/DisplayMetrics;

    #v12=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 368
    .local v12, outMetrics:Landroid/util/DisplayMetrics;
    #v12=(Reference,Landroid/util/DisplayMetrics;);
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    if-eqz v15, :cond_0

    .line 373
    iget v15, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    #v15=(Integer);
    sparse-switch v15, :sswitch_data_0

    .line 424
    :cond_0
    :goto_0
    #v15=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v15}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v15

    #v15=(Integer);
    if-lt v7, v15, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabHost;);
    move-object/from16 v0, p0

    move-object v1, v15

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->registerForContextMenu(Landroid/view/View;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 479
    .local v8, intent:Landroid/content/Intent;
    #v8=(Reference,Landroid/content/Intent;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    const-string v16, "tabindex"

    #v16=(Reference,Ljava/lang/String;);
    const/16 v17, 0x0

    #v17=(Null);
    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    #v16=(Integer);
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 480
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setCurRootActivity(Landroid/app/Activity;)V

    .line 482
    const-string v15, "sensor"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrSensor:Landroid/hardware/SensorManager;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrSensor:Landroid/hardware/SensorManager;

    move-object v15, v0

    const/16 v16, 0x2

    #v16=(PosByte);
    const/16 v17, 0x1

    #v17=(One);
    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    #v2=(PosByte);
    move/from16 v3, v17

    #v3=(One);
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v5

    .line 485
    .local v5, accelSupported:Z
    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrSensor:Landroid/hardware/SensorManager;

    move-object v15, v0

    const/16 v16, 0x2

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 490
    :cond_1
    const-string v15, "phone"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    move-object v15, v0

    if-eqz v15, :cond_2

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v16, v0

    #v16=(Reference,Landroid/telephony/PhoneStateListener;);
    const/16 v17, 0x20

    #v17=(PosByte);
    invoke-virtual/range {v15 .. v17}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 495
    :cond_2
    #v16=(Conflicted);
    return-void

    .line 376
    .end local v5           #accelSupported:Z
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_0
    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Integer);v16=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabHost;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "VOLCH"

    #v17=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f06001b

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    #v18=(Reference,Landroid/content/res/Resources;);
    const v19, 0x7f020038

    #v19=(Integer);
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 378
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 376
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "TouchPAD"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060030

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    #v18=(Reference,Landroid/content/res/Resources;);
    const v19, 0x7f02009f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 381
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 379
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "NaviKey"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060033

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    #v18=(Reference,Landroid/content/res/Resources;);
    const v19, 0x7f0200a2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 384
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 382
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 387
    :sswitch_1
    #v15=(Integer);v17=(Uninit);v18=(Uninit);v19=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabHost;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "VOLCH"

    #v17=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f06001b

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 389
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;

    #v18=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 387
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "TouchPAD"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060030

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 392
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v18=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 390
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "NaviKey"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060033

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 395
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;

    #v18=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 393
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 399
    :sswitch_2
    #v15=(Integer);v17=(Uninit);v18=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabHost;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "VOLCH"

    #v17=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f06001b

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 401
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;

    #v18=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 399
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "TouchPAD"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060030

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 404
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v18=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 402
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "NaviKey"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060033

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 407
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;

    #v18=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 405
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 411
    :sswitch_3
    #v15=(Integer);v17=(Uninit);v18=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabHost;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "VOLCH"

    #v17=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f06001b

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    #v18=(Reference,Landroid/content/res/Resources;);
    const v19, 0x7f020038

    #v19=(Integer);
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 413
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 411
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "TouchPAD"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060030

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    #v18=(Reference,Landroid/content/res/Resources;);
    const v19, 0x7f02009f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 416
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 414
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    move-object/from16 v16, v0

    const-string v17, "NaviKey"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060033

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    #v18=(Reference,Landroid/content/res/Resources;);
    const v19, 0x7f0200a2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 419
    new-instance v17, Landroid/content/Intent;

    #v17=(UninitRef,Landroid/content/Intent;);
    const-class v18, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;

    move-object/from16 v0, v17

    #v0=(UninitRef,Landroid/content/Intent;);
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v0=(Reference,Landroid/content/Intent;);v17=(Reference,Landroid/content/Intent;);
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v16

    .line 417
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .line 426
    .restart local v7       #i:I
    :cond_3
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Integer);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v15, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const v16, 0x1020006

    #v16=(Integer);
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    #v9=(Reference,Landroid/view/View;);
    check-cast v9, Landroid/widget/ImageView;

    .line 427
    .local v9, iv:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    invoke-virtual {v15, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const v16, 0x1020016

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    #v13=(Reference,Landroid/view/View;);
    check-cast v13, Landroid/widget/TextView;

    .line 428
    .local v13, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f07

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    invoke-virtual {v15, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    #v16=(Null);
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 430
    iget v15, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    #v15=(Integer);
    sparse-switch v15, :sswitch_data_1

    .line 443
    :goto_2
    #v0=(Conflicted);v15=(Conflicted);v16=(PosByte);
    sget-object v15, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v15=(Reference,Ljava/lang/String;);
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    #v15=(Integer);
    const/16 v16, 0x7

    move v0, v15

    #v0=(Integer);
    move/from16 v1, v16

    #v1=(PosByte);
    if-gt v0, v1, :cond_6

    .line 447
    :try_start_0
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "mBottomLeftStrip"

    #v16=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 448
    .local v10, mBottomLeftStrip:Ljava/lang/reflect/Field;
    #v10=(Reference,Ljava/lang/reflect/Field;);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "mBottomRightStrip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 449
    .local v11, mBottomRightStrip:Ljava/lang/reflect/Field;
    #v11=(Reference,Ljava/lang/reflect/Field;);
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v15

    #v15=(Boolean);
    if-nez v15, :cond_4

    .line 451
    const/4 v15, 0x1

    #v15=(One);
    invoke-virtual {v10, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 453
    :cond_4
    #v15=(Boolean);
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v15

    if-nez v15, :cond_5

    .line 455
    const/4 v15, 0x1

    #v15=(One);
    invoke-virtual {v11, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 457
    :cond_5
    #v15=(Boolean);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f020019

    #v17=(Integer);
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object v0, v10

    move-object v1, v15

    #v1=(Reference,Landroid/widget/TabWidget;);
    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f02001a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v10           #mBottomLeftStrip:Ljava/lang/reflect/Field;
    .end local v11           #mBottomRightStrip:Ljava/lang/reflect/Field;
    :goto_3
    #v1=(Conflicted);v10=(Conflicted);v11=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    invoke-virtual {v15, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 473
    .local v14, vvv:Landroid/view/View;
    #v14=(Reference,Landroid/view/View;);
    invoke-virtual/range {p0 .. p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f02009c

    #v16=(Integer);
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 433
    .end local v14           #vvv:Landroid/view/View;
    :sswitch_4
    #v14=(Conflicted);v15=(Integer);v16=(Null);
    const/4 v15, 0x0

    #v15=(Null);
    const/16 v16, 0x6

    #v16=(PosByte);
    const/16 v17, 0x0

    #v17=(Null);
    const/16 v18, 0x0

    #v18=(Null);
    move-object v0, v9

    move v1, v15

    #v1=(Null);
    move/from16 v2, v16

    #v2=(PosByte);
    move/from16 v3, v17

    #v3=(Null);
    move/from16 v4, v18

    #v4=(Null);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 434
    const/4 v15, 0x0

    const/16 v16, 0x0

    #v16=(Null);
    const/16 v17, 0x0

    const/16 v18, 0x3

    #v18=(PosByte);
    move-object v0, v13

    move v1, v15

    move/from16 v2, v16

    #v2=(Null);
    move/from16 v3, v17

    move/from16 v4, v18

    #v4=(PosByte);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_2

    .line 437
    :sswitch_5
    #v1=(Conflicted);v2=(Reference,Ljava/lang/Object;);v3=(Conflicted);v4=(Conflicted);v15=(Integer);v17=(Conflicted);v18=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v15, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    const/16 v16, 0x20

    #v16=(PosByte);
    move/from16 v0, v16

    #v0=(PosByte);
    move-object v1, v15

    #v1=(Reference,Landroid/view/ViewGroup$LayoutParams;);
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 440
    :sswitch_6
    #v0=(Reference,Landroid/widget/TabWidget;);v1=(Conflicted);v15=(Integer);v16=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v15, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    const/16 v16, 0x10

    #v16=(PosByte);
    move/from16 v0, v16

    #v0=(PosByte);
    move-object v1, v15

    #v1=(Reference,Landroid/view/ViewGroup$LayoutParams;);
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 460
    :catch_0
    #v0=(Reference,Ljava/lang/Object;);v1=(Conflicted);v15=(Conflicted);v16=(Conflicted);
    move-exception v15

    #v15=(Reference,Ljava/lang/Exception;);
    move-object v6, v15

    .line 462
    .local v6, e:Ljava/lang/Exception;
    #v6=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 467
    .end local v6           #e:Ljava/lang/Exception;
    :cond_6
    #v0=(Integer);v1=(PosByte);v6=(Conflicted);v15=(Integer);v16=(PosByte);
    move-object/from16 v0, p0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    #v15=(Reference,Landroid/widget/TabWidget;);
    const/16 v16, 0x1

    #v16=(One);
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    const v16, 0x7f020019

    #v16=(Integer);
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabWidget;->setLeftStripDrawable(I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mTabWidget:Landroid/widget/TabWidget;

    move-object v15, v0

    const v16, 0x7f02001a

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TabWidget;->setRightStripDrawable(I)V

    goto/16 :goto_3

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_3
    .end sparse-switch

    .line 430
    :sswitch_data_1
    .sparse-switch
        0x78 -> :sswitch_6
        0xa0 -> :sswitch_5
        0xf0 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 514
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-direct {v0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;-><init>(Landroid/view/Menu;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    .line 515
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->SetMainMenu()V

    .line 517
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    #v3=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrSensor:Landroid/hardware/SensorManager;

    #v0=(Reference,Landroid/hardware/SensorManager;);
    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrSensor:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 307
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrSensor:Landroid/hardware/SensorManager;

    .line 310
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    #v1=(Reference,Landroid/telephony/PhoneStateListener;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 316
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mgrTelephony:Landroid/telephony/TelephonyManager;

    .line 319
    :cond_2
    sput-object v3, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_myActivityGroup:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    .line 320
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->unRegReceiver()V

    .line 323
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 325
    :cond_3
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 326
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_hEventHandler:Landroid/os/Handler;

    #v1=(Reference,Landroid/os/Handler;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->ReleaseRef(Landroid/os/Handler;)V

    .line 327
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 542
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-virtual {v0, p1, p0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 527
    #v2=(One);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 528
    .local v0, item:Landroid/view/MenuItem;
    #v0=(Reference,Landroid/view/MenuItem;);
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 529
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 530
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 532
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method public onSensorChanged(I[F)V
    .locals 10
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 120
    const/4 v6, 0x2

    #v6=(PosByte);
    if-ne p1, v6, :cond_2

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, curTime:J
    #v0=(LongLo);v1=(LongHi);
    iget-wide v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastUpdate:J

    #v6=(LongLo);v7=(LongHi);
    sub-long v6, v0, v6

    const-wide/16 v8, 0x64

    #v8=(LongLo);v9=(LongHi);
    cmp-long v6, v6, v8

    #v6=(Byte);
    if-ltz v6, :cond_2

    .line 128
    iget-wide v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastUpdate:J

    #v6=(LongLo);
    sub-long v2, v0, v6

    .line 129
    .local v2, diffTime:J
    #v2=(LongLo);v3=(LongHi);
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastUpdate:J

    .line 131
    const/4 v6, 0x0

    #v6=(Null);
    aget v5, p2, v6

    .line 132
    .local v5, x:F
    #v5=(Integer);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    cmpl-float v6, v5, v6

    #v6=(Byte);
    if-gtz v6, :cond_0

    const/high16 v6, -0x4080

    #v6=(Integer);
    cmpg-float v6, v5, v6

    #v6=(Byte);
    if-gez v6, :cond_2

    .line 134
    :cond_0
    iget v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->last_x:F

    #v6=(Integer);
    sub-float v6, v5, v6

    #v6=(Float);
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    long-to-float v7, v2

    #v7=(Float);
    div-float/2addr v6, v7

    const v7, 0x461c4000

    #v7=(Integer);
    mul-float v4, v6, v7

    .line 135
    .local v4, speed:F
    #v4=(Float);
    const/high16 v6, 0x44fa

    #v6=(Integer);
    cmpl-float v6, v4, v6

    #v6=(Byte);
    if-ltz v6, :cond_1

    .line 139
    iget-wide v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastSend:J

    #v6=(LongLo);v7=(LongHi);
    sub-long v6, v0, v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    #v6=(Byte);
    if-ltz v6, :cond_1

    .line 140
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->lastSend:J

    .line 142
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_hGoNetcast:Landroid/os/Handler;

    #v6=(Reference,Landroid/os/Handler;);
    new-instance v7, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;

    #v7=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;);
    invoke-direct {v7, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;);
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_1
    #v6=(Conflicted);v7=(Conflicted);
    iput v5, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->last_x:F

    .line 157
    .end local v0           #curTime:J
    .end local v2           #diffTime:J
    .end local v4           #speed:F
    .end local v5           #x:F
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void
.end method

.method processEventHadler(I)V
    .locals 5
    .parameter "nMsg"

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 251
    #v2=(Null);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->sendBroadcastBye()V

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 256
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setKBDActive(Z)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-class v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const/16 v1, 0x1b49

    #v1=(PosShort);
    invoke-virtual {p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    #v0=(Uninit);v1=(Uninit);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 266
    :cond_1
    #v1=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;->GetCurTabHost()Landroid/widget/TabHost;

    move-result-object v1

    #v1=(Reference,Landroid/widget/TabHost;);
    if-eqz v1, :cond_0

    .line 268
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;->GetCurTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 272
    :pswitch_3
    #v1=(Uninit);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    #v1=(Integer);
    if-eq v1, v3, :cond_0

    .line 274
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 278
    :pswitch_4
    #v1=(Uninit);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    #v1=(Integer);
    if-eq v1, v4, :cond_0

    .line 280
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    #v1=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 252
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
