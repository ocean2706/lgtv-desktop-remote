.class public Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;
.super Landroid/app/Activity;
.source "CPairingDevice_Main.java"


# static fields
.field private static final INPUT_PINCODE:I = 0x1


# instance fields
.field private doReqCancelAuthKey:Ljava/lang/Runnable;

.field private doRequestAuthKey:Ljava/lang/Runnable;

.field private doRequestAuthSession:Ljava/lang/Runnable;

.field private doResponseReqAuthKey:Ljava/lang/Runnable;

.field private doResponseReqAuthSession:Ljava/lang/Runnable;

.field mMenuBackClickListener:Landroid/view/View$OnClickListener;

.field mMenuInputPincodeClickListener:Landroid/view/View$OnClickListener;

.field private m_bNeedToCancelAuthKey:Z

.field private m_bSetDefaultTV:Z

.field private m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

.field m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

.field private m_hReqAuthKeyEvt:Landroid/os/Handler;

.field private m_hReqAuthSession:Landroid/os/Handler;

.field m_itdDeviceInfo:Landroid/content/Intent;

.field m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

.field private m_strAuthSessionResult:Ljava/lang/String;

.field private m_strPincode:Ljava/lang/String;

.field private m_strResult:Ljava/lang/String;

.field m_vBtnInputPincode:Landroid/widget/Button;

.field m_vBtnMenuBack:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    #v0=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bNeedToCancelAuthKey:Z

    .line 38
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bSetDefaultTV:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_hReqAuthKeyEvt:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_hReqAuthSession:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 75
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$1;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doReqCancelAuthKey:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doRequestAuthKey:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$3;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$3;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$3;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$3;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doRequestAuthSession:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doResponseReqAuthSession:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$5;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$5;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$5;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$5;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doResponseReqAuthKey:Ljava/lang/Runnable;

    .line 290
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->mMenuBackClickListener:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->mMenuInputPincodeClickListener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method

.method private ReqCancelAuthKey()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->cancelRequestAuthKey(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    return-void
.end method

.method private RequestAuthKey()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->requestAuthKey(Lcom/clipcomm/WiFiRemocon/TVInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strResult:Ljava/lang/String;

    .line 265
    :goto_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_hReqAuthKeyEvt:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doResponseReqAuthKey:Ljava/lang/Runnable;

    #v1=(Reference,Ljava/lang/Runnable;);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void

    .line 262
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const-wide/16 v0, 0x64

    :try_start_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    #v0=(Conflicted);
    const-string v0, "200"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strResult:Ljava/lang/String;

    goto :goto_0

    .line 262
    :catch_0
    #v0=(LongLo);
    move-exception v0

    #v0=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_1
.end method

.method private RequestAuthSession()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strPincode:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->requestAuthSession(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strAuthSessionResult:Ljava/lang/String;

    .line 187
    :goto_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_hReqAuthSession:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doResponseReqAuthSession:Ljava/lang/Runnable;

    #v1=(Reference,Ljava/lang/Runnable;);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void

    .line 184
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const-wide/16 v0, 0x320

    :try_start_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_1
    #v0=(Conflicted);
    const-string v0, "200"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strAuthSessionResult:Ljava/lang/String;

    goto :goto_0

    .line 184
    :catch_0
    #v0=(LongLo);
    move-exception v0

    #v0=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_1
.end method

.method private ResponseReqAuthKey()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 282
    #v2=(One);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strResult:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "200"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_vBtnInputPincode:Landroid/widget/Button;

    #v0=(Reference,Landroid/widget/Button;);
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 285
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bNeedToCancelAuthKey:Z

    .line 287
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->ReqCancelAuthKey()V

    return-void
.end method

.method static synthetic access$1(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->RequestAuthKey()V

    return-void
.end method

.method static synthetic access$2(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->RequestAuthSession()V

    return-void
.end method

.method static synthetic access$3(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strAuthSessionResult:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$4(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bNeedToCancelAuthKey:Z

    return-void
.end method

.method static synthetic access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method

.method static synthetic access$6(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strPincode:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$7(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bSetDefaultTV:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$8(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doRequestAuthKey:Ljava/lang/Runnable;

    #v0=(Reference,Ljava/lang/Runnable;);
    return-object v0
.end method

.method static synthetic access$9(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->ResponseReqAuthKey()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    return-void

    .line 100
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne p2, v3, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, myResource:Landroid/content/res/Resources;
    #v0=(Reference,Landroid/content/res/Resources;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "["

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v4, v4, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f060014

    #v4=(Integer);
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, strMsg:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v3, p0, v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 106
    const-string v3, "pincode"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_strPincode:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/lang/Thread;

    #v2=(UninitRef,Ljava/lang/Thread;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doRequestAuthSession:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .local v2, thread:Ljava/lang/Thread;
    #v2=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 132
    #v6=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/high16 v3, 0x7f03

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->setContentView(I)V

    .line 135
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;-><init>()V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 137
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_itdDeviceInfo:Landroid/content/Intent;

    .line 138
    const v3, 0x7f080002

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_vBtnMenuBack:Landroid/widget/Button;

    .line 139
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_vBtnMenuBack:Landroid/widget/Button;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->mMenuBackClickListener:Landroid/view/View$OnClickListener;

    #v4=(Reference,Landroid/view/View$OnClickListener;);
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v3, 0x7f080001

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_vBtnInputPincode:Landroid/widget/Button;

    .line 142
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_vBtnInputPincode:Landroid/widget/Button;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->mMenuInputPincodeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_itdDeviceInfo:Landroid/content/Intent;

    const-string v4, "set_default_tv"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bSetDefaultTV:Z

    .line 144
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_itdDeviceInfo:Landroid/content/Intent;

    #v3=(Reference,Landroid/content/Intent;);
    const-string v4, "TVInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 145
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;-><init>(Landroid/content/Context;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    .line 146
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->open()V

    .line 148
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060010

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference,[Ljava/lang/Object;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v5, v5, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, strText:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const/high16 v3, 0x7f08

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/TextView;

    .line 150
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef,Ljava/lang/Thread;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doRequestAuthKey:Ljava/lang/Runnable;

    #v3=(Reference,Ljava/lang/Runnable;);
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    .local v1, thread:Ljava/lang/Thread;
    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->close()V

    .line 62
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 64
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_bNeedToCancelAuthKey:Z

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->doReqCancelAuthKey:Ljava/lang/Runnable;

    #v1=(Reference,Ljava/lang/Runnable;);
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    .local v0, thread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->exit()V

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    return-void
.end method
