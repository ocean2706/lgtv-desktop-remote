.class public Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;
.super Landroid/app/Activity;
.source "CWiFiRemocon_start.java"


# static fields
.field static final DEF_MSG_WIFI_ASSOC:I = 0x2

.field static final DEF_MSG_WIFI_ASSOC_TIMEOUT:I = 0x3

.field static final DEF_MSG_WIFI_ON:I = 0x1


# instance fields
.field private doRequestAuthSession:Ljava/lang/Runnable;

.field private doResponseCannotFountTV:Ljava/lang/Runnable;

.field private doResponseReqAuthSession:Ljava/lang/Runnable;

.field m_WiFiManager:Landroid/net/wifi/WifiManager;

.field m_bIsFirst:Z

.field m_bSetOnWifi:Z

.field m_brWifiState:Landroid/content/BroadcastReceiver;

.field private m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

.field m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

.field private m_hReqAuthSession:Landroid/os/Handler;

.field private m_hWaitDefaultTV:Landroid/os/Handler;

.field private m_hWiFiEnable:Landroid/os/Handler;

.field m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

.field m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

.field private m_strAuthSessionResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    #v1=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 29
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hReqAuthSession:Landroid/os/Handler;

    .line 31
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hWaitDefaultTV:Landroid/os/Handler;

    .line 32
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bSetOnWifi:Z

    .line 36
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 37
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 63
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    .line 64
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_brWifiState:Landroid/content/BroadcastReceiver;

    .line 67
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bIsFirst:Z

    .line 228
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doRequestAuthSession:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doResponseCannotFountTV:Ljava/lang/Runnable;

    .line 308
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doResponseReqAuthSession:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method private RequestAuthSession()V
    .locals 4

    .prologue
    .line 242
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v1, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 243
    .local v1, strNewIP:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    if-eqz v1, :cond_2

    .line 245
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iput-object v1, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->getCursorFromMACAddr(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 247
    .local v0, cursorDBTVInfo:Landroid/database/Cursor;
    #v0=(Reference,Landroid/database/Cursor;);
    if-eqz v0, :cond_0

    .line 249
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    const/4 v3, 0x5

    #v3=(PosByte);
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    iput-object v3, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->requestAuthSession(Lcom/clipcomm/WiFiRemocon/TVInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_strAuthSessionResult:Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_strAuthSessionResult:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hReqAuthSession:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doResponseReqAuthSession:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    .end local v0           #cursorDBTVInfo:Landroid/database/Cursor;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 259
    .restart local v0       #cursorDBTVInfo:Landroid/database/Cursor;
    :cond_1
    #v0=(Reference,Landroid/database/Cursor;);v2=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hReqAuthSession:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doResponseCannotFountTV:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 264
    .end local v0           #cursorDBTVInfo:Landroid/database/Cursor;
    :cond_2
    #v0=(Uninit);v3=(Uninit);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hReqAuthSession:Landroid/os/Handler;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doResponseCannotFountTV:Ljava/lang/Runnable;

    #v3=(Reference,Ljava/lang/Runnable;);
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->RequestAuthSession()V

    return-void
.end method

.method static synthetic access$1(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method

.method static synthetic access$2(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_strAuthSessionResult:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hWiFiEnable:Landroid/os/Handler;

    #v0=(Reference,Landroid/os/Handler;);
    return-object v0
.end method

.method static synthetic access$4(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->doRequestAuthSession:Ljava/lang/Runnable;

    #v0=(Reference,Ljava/lang/Runnable;);
    return-object v0
.end method


# virtual methods
.method declared-synchronized FirstRun()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bIsFirst:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method InitConfigValue()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    #v4=(Null);
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    #v0=(Reference,Landroid/content/SharedPreferences;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    const-string v2, "config_vibration_feedback"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    .line 57
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    const-string v2, "config_sound_effects"

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    .line 58
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    const-string v2, "config_demo_tv"

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->showDemoTV(Z)V

    .line 59
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    const-string v2, "config_auto_mute"

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setAutoMuteMode(Z)V

    .line 60
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    const-string v2, "touch_sensitivity"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setTouchSensitivity(F)V

    .line 61
    return-void
.end method

.method declared-synchronized IsFirstRun()Z
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bIsFirst:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v0=(Boolean);
    monitor-exit p0

    return v0

    :catchall_0
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method StartWiFiRemocon()V
    .locals 6

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->FirstRun()V

    .line 193
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;-><init>(Landroid/content/Context;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    .line 194
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->open()V

    .line 196
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getDefaultTV(Landroid/app/Activity;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 197
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    .local v0, myResource:Landroid/content/res/Resources;
    #v0=(Reference,Landroid/content/res/Resources;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "["

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f060014

    #v3=(Integer);
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, strMsg:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v2, p0, v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hWaitDefaultTV:Landroid/os/Handler;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    .line 210
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;);
    iget-boolean v4, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bSetOnWifi:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    const/16 v4, 0xbb8

    :goto_0
    #v4=(PosShort);
    int-to-long v4, v4

    .line 202
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    .end local v0           #myResource:Landroid/content/res/Resources;
    .end local v1           #strMsg:Ljava/lang/String;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 210
    .restart local v0       #myResource:Landroid/content/res/Resources;
    .restart local v1       #strMsg:Ljava/lang/String;
    :cond_0
    #v0=(Reference,Landroid/content/res/Resources;);v1=(Reference,Ljava/lang/String;);v4=(Boolean);v5=(Uninit);
    const/16 v4, 0x64

    #v4=(PosByte);
    goto :goto_0

    .line 214
    .end local v0           #myResource:Landroid/content/res/Resources;
    .end local v1           #strMsg:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hWaitDefaultTV:Landroid/os/Handler;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    .line 223
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;);
    iget-boolean v4, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bSetOnWifi:Z

    #v4=(Boolean);
    if-eqz v4, :cond_2

    const/16 v4, 0x3e8

    :goto_2
    #v4=(PosShort);
    int-to-long v4, v4

    .line 214
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 223
    :cond_2
    #v4=(Boolean);v5=(Uninit);
    const/16 v4, 0xa

    #v4=(PosByte);
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 99
    #v3=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->InitConfigValue()V

    .line 101
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v1, p0}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->LoadSound(Landroid/content/Context;)V

    .line 103
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;-><init>()V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 104
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;-><init>()V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 106
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    .line 107
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    #v2=(Reference,Landroid/net/wifi/WifiManager;);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setWiFiManager(Landroid/net/wifi/WifiManager;)V

    .line 109
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_hWiFiEnable:Landroid/os/Handler;

    .line 137
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_brWifiState:Landroid/content/BroadcastReceiver;

    .line 164
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    #v1=(Reference,Landroid/net/wifi/WifiManager;);
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->StartWiFiRemocon()V

    .line 184
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 170
    :pswitch_0
    #v0=(Uninit);v1=(Integer);v2=(Reference,Landroid/net/wifi/WifiManager;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    const v2, 0x7f060003

    #v2=(Integer);
    invoke-virtual {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;I)V

    .line 171
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    #v0=(UninitRef,Landroid/content/IntentFilter;);
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, intentFilter:Landroid/content/IntentFilter;
    #v0=(Reference,Landroid/content/IntentFilter;);
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_brWifiState:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iput-boolean v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_bSetOnWifi:Z

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->close()V

    .line 44
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->exit()V

    .line 45
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->exit()V

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 48
    return-void
.end method
