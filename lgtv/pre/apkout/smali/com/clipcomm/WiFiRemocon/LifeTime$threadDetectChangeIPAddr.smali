.class Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;
.super Ljava/lang/Thread;
.source "LifeTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/LifeTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "threadDetectChangeIPAddr"
.end annotation


# instance fields
.field m_bIsRunning:Z

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/LifeTime;)V
    .locals 1
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 536
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->m_bIsRunning:Z

    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    and-int/lit16 v1, p1, 0xff

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 586
    shr-int/lit8 v1, p1, 0x8

    #v1=(Integer);
    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 587
    shr-int/lit8 v1, p1, 0x10

    #v1=(Short);
    and-int/lit16 v1, v1, 0xff

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 588
    shr-int/lit8 v1, p1, 0x18

    #v1=(Byte);
    and-int/lit16 v1, v1, 0xff

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Quit()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->m_bIsRunning:Z

    .line 546
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->interrupt()V

    .line 547
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->Quit()V

    .line 552
    return-void
.end method

.method getIPAddress()I
    .locals 2

    .prologue
    .line 578
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 580
    :goto_0
    #v0=(Conflicted);v1=(Integer);
    return v1

    .line 579
    :cond_0
    #v0=(Uninit);v1=(Reference,Landroid/net/wifi/WifiManager;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_WiFiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 580
    .local v0, dhcpInfo:Landroid/net/DhcpInfo;
    #v0=(Reference,Landroid/net/DhcpInfo;);
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    #v1=(Integer);
    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 558
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->getIPAddress()I

    move-result v2

    #v2=(Integer);
    iput v2, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nMyIPAddr:I

    .line 559
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->m_bIsRunning:Z

    .line 562
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->m_bIsRunning:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 574
    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->getIPAddress()I

    move-result v0

    .line 564
    .local v0, nCurIPAddr:I
    #v0=(Integer);
    if-eqz v0, :cond_1

    .line 566
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget v1, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nMyIPAddr:I

    #v1=(Integer);
    if-eq v1, v0, :cond_1

    .line 568
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget v2, v2, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nMyIPAddr:I

    #v2=(Integer);
    invoke-direct {p0, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {p0, v0}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->intToIp(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestUpdate(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    iput v0, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_nMyIPAddr:I

    .line 572
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const-wide/16 v1, 0x7d0

    :try_start_0
    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime$threadDetectChangeIPAddr;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method
