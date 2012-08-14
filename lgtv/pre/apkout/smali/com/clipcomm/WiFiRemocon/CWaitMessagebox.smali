.class public Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;
.super Ljava/lang/Object;
.source "CWaitMessagebox.java"


# static fields
.field private static m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

.field private static m_cxtCurParent:Landroid/app/Activity;

.field private static m_nWndCnt:I


# instance fields
.field m_bExit:Z

.field m_bShowWnd:Z

.field m_cxtParent:Landroid/app/Activity;

.field m_hExitHandler:Landroid/os/Handler;

.field m_strText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    #v0=(Null);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    .line 21
    sput-object v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtCurParent:Landroid/app/Activity;

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    #v0=(Null);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bExit:Z

    .line 30
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bShowWnd:Z

    .line 56
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_hExitHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static declared-synchronized getActMsgBoxInst()Lcom/clipcomm/WiFiRemocon/WaitMsgbox;
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(Reference,Ljava/lang/Class;);
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/WaitMsgbox;);
    monitor-exit v0

    return-object v1

    :catchall_0
    #v1=(Uninit);
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setActMsgBoxInst(Lcom/clipcomm/WiFiRemocon/WaitMsgbox;)V
    .locals 2
    .parameter "msgbox"

    .prologue
    .line 49
    const-class v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(Reference,Ljava/lang/Class;);
    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0

    throw v1
.end method

.method private show()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    if-nez v0, :cond_0

    .line 189
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 171
    :cond_0
    #v0=(Reference,Landroid/app/Activity;);v1=(Uninit);
    sget v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->showMsgbox()V

    .line 187
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bShowWnd:Z

    .line 188
    sget v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    goto :goto_0

    .line 175
    :cond_1
    #v1=(Uninit);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtCurParent:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    if-eq v0, v1, :cond_3

    .line 177
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);
    sget v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    #v0=(Integer);
    if-gtz v0, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->showMsgbox()V

    goto :goto_1

    .line 179
    :cond_2
    const-wide/16 v0, 0xa

    :try_start_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_2

    .line 185
    :cond_3
    #v1=(Reference,Landroid/app/Activity;);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_strText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showMsgbox()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    #v3=(Null);
    iput-boolean v3, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bExit:Z

    .line 157
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    sput-object v1, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtCurParent:Landroid/app/Activity;

    .line 158
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    const-class v2, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "text"

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_strText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 161
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_hExitHandler:Landroid/os/Handler;

    #v0=(Reference,Landroid/os/Handler;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;-><init>(Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;)V

    .line 80
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;);
    const-wide/16 v2, 0x1f4

    .line 73
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method

.method cancel_immediately()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->hide()V

    .line 89
    return-void
.end method

.method exit()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->hide()V

    .line 97
    return-void
.end method

.method hide()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    #v1=(One);
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bShowWnd:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 106
    :cond_1
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bShowWnd:Z

    .line 108
    sget v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    #v0=(Integer);
    if-lez v0, :cond_2

    .line 110
    sget v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    sub-int/2addr v0, v1

    sput v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    .line 112
    :cond_2
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bExit:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 114
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_bExit:Z

    .line 115
    sget v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_nWndCnt:I

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/WaitMsgbox;);
    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_actWaitMsgBox:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->finish()V

    goto :goto_0
.end method

.method show(Landroid/app/Activity;I)V
    .locals 2
    .parameter "cxtParent"
    .parameter "nResourceID"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    .local v0, myResource:Landroid/content/res/Resources;
    #v0=(Reference,Landroid/content/res/Resources;);
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, strText:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, p1, v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "cxtParent"
    .parameter "strText"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_cxtParent:Landroid/app/Activity;

    .line 134
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->m_strText:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show()V

    .line 136
    return-void
.end method
