.class public Lcom/clipcomm/WiFiRemocon/WaitMsgbox;
.super Landroid/app/Activity;
.source "WaitMsgbox.java"


# instance fields
.field m_bShowWindow:Z

.field m_hTimer:Landroid/os/Handler;

.field m_vText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/WaitMsgbox;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_bShowWindow:Z

    .line 18
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_hTimer:Landroid/os/Handler;

    .line 13
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_bShowWindow:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_bShowWindow:Z

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->overridePendingTransition(II)V

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->setActMsgBoxInst(Lcom/clipcomm/WiFiRemocon/WaitMsgbox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    #v0=(Boolean);v1=(Conflicted);
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference,Ljava/lang/Throwable;);
    monitor-exit p0

    throw v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 26
    #v3=(One);
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->setActMsgBoxInst(Lcom/clipcomm/WiFiRemocon/WaitMsgbox;)V

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->requestWindowFeature(I)Z

    .line 29
    const v2, 0x7f030004

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->setContentView(I)V

    .line 30
    const v2, 0x7f080010

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_vText:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v2, "text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, strText:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    if-eqz v1, :cond_0

    .line 35
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_vText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_0
    iput-boolean v3, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_bShowWindow:Z

    .line 38
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_hTimer:Landroid/os/Handler;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;-><init>(Lcom/clipcomm/WiFiRemocon/WaitMsgbox;)V

    .line 45
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;);
    const-wide/16 v4, 0x2710

    .line 38
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "strText"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->m_vText:Landroid/widget/TextView;

    #v0=(Reference,Landroid/widget/TextView;);
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
