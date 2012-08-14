.class Lcom/clipcomm/WiFiRemocon/CInputTimer;
.super Ljava/lang/Thread;
.source "CInputTimer.java"


# instance fields
.field private m_bInputExist:Z

.field private m_bIsRunning:Z

.field private m_hCallBackEvtHandler:Landroid/os/Handler;

.field private m_nTimeout:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .parameter "hCallBackEvtHandler"
    .parameter "nTimeout"

    .prologue
    const/4 v0, 0x0

    .line 18
    #v0=(Null);
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CInputTimer;);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bIsRunning:Z

    .line 28
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bInputExist:Z

    .line 20
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_hCallBackEvtHandler:Landroid/os/Handler;

    .line 21
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_nTimeout:I

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized Input()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public Quit()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bIsRunning:Z

    .line 74
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->Input()V

    .line 75
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->Quit()V

    .line 84
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 42
    #v3=(Null);
    iput-boolean v4, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bIsRunning:Z

    .line 43
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bIsRunning:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 66
    return-void

    .line 47
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_nTimeout:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/clipcomm/WiFiRemocon/CInputTimer;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bInputExist:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 57
    iput-boolean v3, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bInputExist:Z

    .line 58
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_hCallBackEvtHandler:Landroid/os/Handler;

    #v1=(Reference,Landroid/os/Handler;);
    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_hCallBackEvtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 49
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/InterruptedException;);
    move-object v0, v1

    .line 52
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference,Ljava/lang/InterruptedException;);
    iput-boolean v4, p0, Lcom/clipcomm/WiFiRemocon/CInputTimer;->m_bInputExist:Z

    goto :goto_0
.end method
