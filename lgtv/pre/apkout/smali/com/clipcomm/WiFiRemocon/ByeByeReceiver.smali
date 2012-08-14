.class public Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ByeByeReceiver.java"


# static fields
.field public static final BROADCAST_BYEBYE:Ljava/lang/String; = "com.clipcomm.WiFiRemocon.BYEBYE"


# instance fields
.field private m_bIsLeafUI:Z

.field m_recvActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "curActivity"

    .prologue
    const/4 v2, 0x0

    .line 62
    #v2=(Null);
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    .line 24
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_bIsLeafUI:Z

    .line 64
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_bIsLeafUI:Z

    .line 65
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    .line 66
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    #v0=(UninitRef,Landroid/content/IntentFilter;);
    const-string v1, "com.clipcomm.WiFiRemocon.BYEBYE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    #v0=(Reference,Landroid/content/IntentFilter;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "curActivity"
    .parameter "bIsLeafUI"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_bIsLeafUI:Z

    .line 82
    iput-boolean p2, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_bIsLeafUI:Z

    .line 83
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    .line 84
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    #v0=(UninitRef,Landroid/content/IntentFilter;);
    const-string v1, "com.clipcomm.WiFiRemocon.BYEBYE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    #v0=(Reference,Landroid/content/IntentFilter;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public static sendBroadcastBye()V
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, curActivity:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    const-string v2, "com.clipcomm.WiFiRemocon.BYEBYE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    const-string v2, "toRootUI"

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public static sendBroadcastByeBye(Z)V
    .locals 3
    .parameter "bByeByefromTV"

    .prologue
    .line 33
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v0

    .line 34
    .local v0, curActivity:Landroid/app/Activity;
    #v0=(Reference,Landroid/app/Activity;);
    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->onByeByeFromTV(Z)V

    .line 37
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    const-string v2, "com.clipcomm.WiFiRemocon.BYEBYE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    #v1=(Conflicted);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 116
    :cond_1
    #v0=(Uninit);v1=(Reference,Landroid/app/Activity;);v2=(Uninit);
    const-string v1, "toRootUI"

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 117
    .local v0, bToRootUI:Z
    #v0=(Boolean);
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_bIsLeafUI:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :cond_2
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method unRegReceiver()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    #v0=(Reference,Landroid/app/Activity;);
    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->m_recvActivity:Landroid/app/Activity;

    .line 103
    :cond_0
    #v0=(Reference,Landroid/app/Activity;);
    return-void
.end method
