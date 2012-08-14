.class Lcom/clipcomm/WiFiRemocon/CWheelAniThread;
.super Ljava/lang/Thread;
.source "CWheelAniThread.java"


# instance fields
.field private m_bIsRunning:Z

.field private m_hCallBackEvtHandler:Landroid/os/Handler;

.field private m_nDir:I

.field private m_nSpeed:I


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "hCallBackEvtHandler"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_bIsRunning:Z

    .line 17
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_hCallBackEvtHandler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized Play(II)V
    .locals 1
    .parameter "nDir"
    .parameter "nSpeed"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nDir:I

    .line 120
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    .line 121
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public Quit()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_bIsRunning:Z

    .line 95
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Stop()V

    .line 96
    return-void
.end method

.method public declared-synchronized Stop()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    #v0=(Null);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nDir:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    .line 108
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Quit()V

    .line 102
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    #v4=(One);
    iput-boolean v4, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_bIsRunning:Z

    .line 30
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_bIsRunning:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 87
    return-void

    .line 32
    :cond_0
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    #v2=(Integer);
    if-nez v2, :cond_2

    .line 36
    const-wide/16 v2, 0x1388

    :try_start_0
    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    #v2=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_0

    .line 45
    :cond_1
    #v2=(Integer);v3=(Conflicted);
    const/4 v1, 0x1

    .line 46
    .local v1, nDelta:I
    #v1=(One);
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    packed-switch v2, :pswitch_data_0

    .line 63
    const/4 v1, 0x4

    .line 66
    :goto_1
    #v1=(PosByte);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    #v0=(Integer);v2=(Conflicted);
    const/16 v2, 0xc

    #v2=(PosByte);
    if-le v0, v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_hCallBackEvtHandler:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    iget v3, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nDir:I

    #v3=(Integer);
    mul-int/lit16 v3, v3, 0x3e7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    #v2=(Integer);
    sub-int/2addr v2, v4

    iput v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    .line 43
    .end local v0           #i:I
    .end local v1           #nDelta:I
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nSpeed:I

    if-gtz v2, :cond_1

    goto :goto_0

    .line 50
    .restart local v1       #nDelta:I
    :pswitch_0
    #v1=(One);
    const/4 v1, 0x1

    .line 51
    goto :goto_1

    .line 55
    :pswitch_1
    const/4 v1, 0x2

    .line 56
    #v1=(PosByte);
    goto :goto_1

    .line 60
    :pswitch_2
    #v1=(One);
    const/4 v1, 0x3

    .line 61
    #v1=(PosByte);
    goto :goto_1

    .line 68
    .restart local v0       #i:I
    :cond_3
    #v0=(Integer);v2=(PosByte);
    if-nez v0, :cond_5

    .line 66
    :cond_4
    :goto_3
    #v2=(Conflicted);
    add-int/2addr v0, v1

    goto :goto_2

    .line 72
    :cond_5
    #v2=(PosByte);
    const-wide/16 v2, 0x6

    :try_start_1
    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_4
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_hCallBackEvtHandler:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    if-eqz v2, :cond_4

    .line 80
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_hCallBackEvtHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->m_nDir:I

    #v3=(Integer);
    mul-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 74
    :catch_1
    #v2=(LongLo);v3=(LongHi);
    move-exception v2

    #v2=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_4

    .line 46
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
