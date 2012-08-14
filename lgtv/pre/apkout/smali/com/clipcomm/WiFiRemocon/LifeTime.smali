.class public Lcom/clipcomm/WiFiRemocon/LifeTime;
.super Ljava/lang/Object;
.source "LifeTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;,
        Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;
    }
.end annotation


# static fields
.field public static final DEMO_MYCHLIST_DB_FILE_NAME:Ljava/lang/String; = "demo_mychList.db"

.field public static final SETTINGS_DEFAULT_TVINFO:Ljava/lang/String; = "Pref_DefaultTVInfo"

.field private static volatile uniqueInstance:Lcom/clipcomm/WiFiRemocon/LifeTime;


# instance fields
.field private lockTextChangedHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private m_WL:Landroid/os/PowerManager$WakeLock;

.field m_WiFiManager:Landroid/net/wifi/WifiManager;

.field private m_bAutoMuteMode:Z

.field private m_bDemoTVMode:Z

.field private m_bIsByeByeFromTV:Z

.field m_bIsKeyboardActivated:Z

.field private m_bShowDemoTV:Z

.field public m_bSoundEffect:Z

.field public m_bVibrateMode:Z

.field public m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

.field private m_curDestInfo:Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

.field m_fTouchSensitivity:F

.field private m_hRecvCHInfoHandler:Landroid/os/Handler;

.field private m_nAliveInstNum:I

.field m_nMyIPAddr:I

.field private m_nRefCnt:I

.field m_rootActivity:Landroid/app/Activity;

.field private m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field m_stackEventHandler:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private m_strIP:Ljava/lang/String;

.field private m_strSession:Ljava/lang/String;

.field private m_targetTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

.field m_threadIPCheck:Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 310
    #v1=(Null);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    .line 86
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    .line 87
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bDemoTVMode:Z

    .line 88
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bShowDemoTV:Z

    .line 89
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bAutoMuteMode:Z

    .line 97
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    .line 100
    iput v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    .line 105
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsByeByeFromTV:Z

    .line 108
    new-instance v0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;-><init>(Lcom/clipcomm/WiFiRemocon/LifeTime;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_curDestInfo:Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    .line 110
    new-instance v0, Lcom/clipcomm/WiFiRemocon/UDPRequest;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/UDPRequest;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    .line 294
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rootActivity:Landroid/app/Activity;

    .line 375
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v0=(UninitRef,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference,Ljava/util/LinkedList;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_stackEventHandler:Ljava/util/LinkedList;

    .line 387
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v0=(UninitRef,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->lockTextChangedHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 415
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsKeyboardActivated:Z

    .line 417
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_hRecvCHInfoHandler:Landroid/os/Handler;

    .line 441
    iput v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    .line 516
    const/high16 v0, 0x4040

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_fTouchSensitivity:F

    .line 526
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    .line 312
    return-void
.end method

.method private deleteActiveHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "hActiveHandler"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 359
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_stackEventHandler:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 361
    return-void
.end method

.method public static getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    if-nez v0, :cond_1

    .line 138
    const-class v0, Lcom/clipcomm/WiFiRemocon/LifeTime;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;-><init>()V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    sput-object v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/LifeTime;

    .line 138
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    #v1=(Conflicted);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/LifeTime;

    return-object v0

    .line 138
    :catchall_0
    move-exception v1

    :try_start_1
    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setActivityHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "hActiveHandler"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 382
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_stackEventHandler:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 384
    return-void
.end method


# virtual methods
.method public AddRef(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .parameter "hActiveHandler"
    .parameter "context"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setActivityHandler(Landroid/os/Handler;)V

    .line 326
    iget v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    #v1=(Integer);
    if-nez v1, :cond_0

    .line 328
    const-string v1, "power"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/os/PowerManager;

    .line 329
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "WiFiRemocon"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    #v1=(Reference,Landroid/os/PowerManager$WakeLock;);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setWL(Landroid/os/PowerManager$WakeLock;)V

    .line 330
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getWL()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 332
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    .line 333
    return-void
.end method

.method GetContextUIState()I
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->GetInitUIState(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 285
    #v1=(Null);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 290
    :goto_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);v1=(Reference,Ljava/lang/String;);v2=(Conflicted);
    return-object v0

    .line 286
    :cond_0
    #v0=(Boolean);v1=(Null);v2=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    if-nez v0, :cond_1

    move-object v0, v1

    #v0=(Null);
    goto :goto_0

    .line 287
    :cond_1
    #v0=(Reference,Ljava/lang/String;);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    #v0=(Null);
    goto :goto_0

    .line 289
    :cond_2
    #v0=(Reference,Ljava/lang/String;);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_curDestInfo:Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->SetInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_curDestInfo:Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    goto :goto_0
.end method

.method GetIntentContextUIState(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 160
    #v1=(Null);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    #v0=(Boolean);v1=(PosByte);
    return v0

    .line 164
    :cond_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);v1=(Null);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetContextUIState()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    :goto_1
    #v0=(Conflicted);v1=(PosByte);
    move v0, v2

    .line 176
    #v0=(One);
    goto :goto_0

    .line 167
    :pswitch_0
    #v0=(Integer);v1=(Null);
    const-string v0, "tabindex"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 170
    :pswitch_1
    #v0=(Integer);
    const-string v0, "tabindex"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 173
    :pswitch_2
    #v0=(Integer);
    const-string v0, "tabindex"

    #v0=(Reference,Ljava/lang/String;);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized ReleaseRef(Landroid/os/Handler;)V
    .locals 2
    .parameter "hActiveHandler"

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->deleteActiveHandler(Landroid/os/Handler;)V

    .line 343
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    #v0=(Integer);
    if-lez v0, :cond_0

    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    const/4 v1, 0x1

    #v1=(One);
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    .line 345
    :cond_0
    #v1=(Conflicted);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nRefCnt:I

    if-nez v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WL:Landroid/os/PowerManager$WakeLock;

    #v0=(Reference,Landroid/os/PowerManager$WakeLock;);
    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 350
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WL:Landroid/os/PowerManager$WakeLock;

    .line 352
    :cond_1
    #v0=(Reference,Landroid/os/PowerManager$WakeLock;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->Stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :cond_2
    #v0=(Conflicted);
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public Start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "strIP"
    .parameter "strSession"

    .prologue
    .line 451
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    .line 452
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    const/4 v1, 0x1

    #v1=(One);
    if-le v0, v1, :cond_1

    .line 454
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsByeByeFromTV:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestByebye(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->close()V

    .line 468
    :goto_0
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    .line 469
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->create(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)Z

    .line 471
    return-void

    .line 462
    :cond_1
    #v0=(Integer);v1=(One);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;-><init>(Lcom/clipcomm/WiFiRemocon/LifeTime;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_threadIPCheck:Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;

    .line 463
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_threadIPCheck:Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->start()V

    .line 464
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->getInstance()Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->start()V

    .line 465
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->getInstance()Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->start()Z

    goto :goto_0
.end method

.method public declared-synchronized Stop()V
    .locals 2

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    #v0=(Integer);
    if-lez v0, :cond_0

    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    const/4 v1, 0x1

    #v1=(One);
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    .line 481
    :cond_0
    #v1=(Conflicted);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nAliveInstNum:I

    if-nez v0, :cond_4

    .line 483
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->close()V

    .line 487
    :cond_1
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsByeByeFromTV:Z

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestByebye(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_threadIPCheck:Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;);
    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_threadIPCheck:Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->Quit()V

    .line 494
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_threadIPCheck:Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;

    .line 496
    :cond_3
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->getInstance()Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->stop()V

    .line 497
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->getInstance()Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->stop()V

    .line 498
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_4
    #v0=(Integer);
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public UpdateDestInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "strIP"
    .parameter "strSession"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strIP:Ljava/lang/String;

    .line 512
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_strSession:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->create(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)Z

    .line 514
    return-void
.end method

.method public getActiveHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, hActHandler:Landroid/os/Handler;
    #v0=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v1=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 367
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_stackEventHandler:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_stackEventHandler:Ljava/util/LinkedList;

    #v1=(Reference,Ljava/util/LinkedList;);
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hActHandler:Landroid/os/Handler;
    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Landroid/os/Handler;

    .line 371
    .restart local v0       #hActHandler:Landroid/os/Handler;
    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rwlRegiEvtHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v1=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 372
    return-object v0
.end method

.method getCurRootActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rootActivity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    return-object v0
.end method

.method public getDefaultTV(Landroid/app/Activity;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 3
    .parameter "activity"

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, mode:I
    #v1=(Null);
    const-string v2, "Pref_DefaultTVInfo"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, instShPref:Landroid/content/SharedPreferences;
    #v0=(Reference,Landroid/content/SharedPreferences;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;->getSPData(Landroid/content/SharedPreferences;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    return-object v2
.end method

.method public getRecvCHInfoHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_hRecvCHInfoHandler:Landroid/os/Handler;

    #v0=(Reference,Landroid/os/Handler;);
    return-object v0
.end method

.method public getTargetTVInfo()Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_targetTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method

.method public getTouchSensitivity()F
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_fTouchSensitivity:F

    #v0=(Integer);
    return v0
.end method

.method public getUDPRequest()Lcom/clipcomm/WiFiRemocon/UDPRequest;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_ctlUDPRequest:Lcom/clipcomm/WiFiRemocon/UDPRequest;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPRequest;);
    return-object v0
.end method

.method public getWL()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WL:Landroid/os/PowerManager$WakeLock;

    #v0=(Reference,Landroid/os/PowerManager$WakeLock;);
    return-object v0
.end method

.method public isAutoMuteMode()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bAutoMuteMode:Z

    #v0=(Boolean);
    return v0
.end method

.method public isDemoTVMode()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bDemoTVMode:Z

    #v0=(Boolean);
    return v0
.end method

.method public isKBDActivated()Z
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->lockTextChangedHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v1=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 410
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsKeyboardActivated:Z

    .line 411
    .local v0, bValue:Z
    #v0=(Boolean);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->lockTextChangedHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 412
    return v0
.end method

.method public isShowDemoTV()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bShowDemoTV:Z

    #v0=(Boolean);
    return v0
.end method

.method public isVibrateMode()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    return v0
.end method

.method public onByeByeFromTV(Z)V
    .locals 0
    .parameter "bByeByefromTV"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsByeByeFromTV:Z

    .line 432
    return-void
.end method

.method public setAutoMuteMode(Z)V
    .locals 0
    .parameter "bMode"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bAutoMuteMode:Z

    return-void
.end method

.method setCurRootActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_rootActivity:Landroid/app/Activity;

    return-void
.end method

.method public setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V
    .locals 4
    .parameter "activity"
    .parameter "info"

    .prologue
    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, mode:I
    #v2=(Null);
    const-string v3, "Pref_DefaultTVInfo"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v3, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 217
    .local v1, instShPref:Landroid/content/SharedPreferences;
    #v1=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, instEditor:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2, v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;->putSPData(Landroid/content/SharedPreferences$Editor;)V

    .line 226
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    return-void

    .line 224
    :cond_0
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;->resetSPData(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public setDemoTVMode(Z)V
    .locals 0
    .parameter "bMode"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bDemoTVMode:Z

    return-void
.end method

.method public setKBDActive(Z)V
    .locals 1
    .parameter "bValue"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->lockTextChangedHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    #v0=(Reference,Ljava/util/concurrent/locks/ReentrantReadWriteLock;);
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 397
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bIsKeyboardActivated:Z

    .line 398
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->lockTextChangedHandler:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 399
    return-void
.end method

.method public setRecvCHInfoHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hRecvCHInfoHandler"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_hRecvCHInfoHandler:Landroid/os/Handler;

    .line 427
    return-void
.end method

.method public setTargetTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_targetTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 73
    return-void
.end method

.method public setTouchSensitivity(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 519
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_fTouchSensitivity:F

    .line 520
    return-void
.end method

.method public setWL(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .parameter "wl"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WL:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public setWiFiManager(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "WiFiManager"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    .line 531
    return-void
.end method

.method public showDemoTV(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bShowDemoTV:Z

    return-void
.end method
