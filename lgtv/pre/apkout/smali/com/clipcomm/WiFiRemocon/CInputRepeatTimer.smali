.class Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;
.super Ljava/lang/Thread;
.source "CInputRepeatTimer.java"


# instance fields
.field private m_bFirstInput:Z

.field private m_bIsRunning:Z

.field private m_bPushDown:Z

.field private m_hCallBackEvtHandler:Landroid/os/Handler;

.field private m_nTimeout:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 2
    .parameter "hCallBackEvtHandler"
    .parameter "nTimeout"

    .prologue
    const/4 v1, 0x0

    .line 16
    #v1=(Null);
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bFirstInput:Z

    .line 26
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bIsRunning:Z

    .line 32
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bPushDown:Z

    .line 18
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_hCallBackEvtHandler:Landroid/os/Handler;

    .line 19
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_nTimeout:I

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized Input(Z)V
    .locals 1
    .parameter "bPushDown"

    .prologue
    .line 103
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 105
    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bFirstInput:Z

    .line 107
    :cond_0
    #v0=(Conflicted);
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bPushDown:Z

    .line 108
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public Quit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bIsRunning:Z

    .line 87
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 88
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Quit()V

    .line 94
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    #v3=(Null);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bIsRunning:Z

    .line 41
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bIsRunning:Z

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 79
    return-void

    .line 43
    :cond_1
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bPushDown:Z

    if-nez v1, :cond_2

    .line 47
    const-wide/16 v1, 0x1388

    :try_start_0
    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_0

    .line 57
    :cond_2
    :try_start_1
    #v1=(Boolean);v2=(Conflicted);
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bFirstInput:Z

    if-eqz v1, :cond_3

    .line 59
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bFirstInput:Z

    .line 60
    const-wide/16 v1, 0x12c

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_1
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_bPushDown:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_hCallBackEvtHandler:Landroid/os/Handler;

    #v1=(Reference,Landroid/os/Handler;);
    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_hCallBackEvtHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 64
    :cond_3
    :try_start_2
    #v1=(Boolean);v2=(Conflicted);
    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->m_nTimeout:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    #v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/InterruptedException;);
    move-object v0, v1

    .line 69
    .local v0, e:Ljava/lang/InterruptedException;
    #v0=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_0
.end method
