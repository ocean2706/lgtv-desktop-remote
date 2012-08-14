.class public Lcom/clipcomm/WiFiRemocon/UDPEventServer;
.super Ljava/lang/Object;
.source "UDPEventServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;,
        Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;
    }
.end annotation


# static fields
.field private static volatile uniqueInstance:Lcom/clipcomm/WiFiRemocon/UDPEventServer;


# instance fields
.field private m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/clipcomm/WiFiRemocon/UDPEventServer;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer;);
    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer;);
    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/UDPEventServer;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/UDPEventServer;-><init>()V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer;);
    sput-object v1, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    #v1=(Conflicted);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/UDPEventServer;

    return-object v0

    .line 56
    :catchall_0
    move-exception v1

    :try_start_1
    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static retvalue()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method


# virtual methods
.method public start()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    #v2=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;);
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->stop()V

    .line 33
    :cond_0
    new-instance v0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;);
    const/16 v1, 0x1f90

    #v1=(PosShort);
    invoke-direct {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;-><init>(I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    .line 35
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    const-string v1, "UDPEventServer:RequestListenerThread"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->setName(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    invoke-virtual {v0, v2}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->setDaemon(Z)V

    .line 39
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->start()V

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_1
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;);v1=(PosShort);
    move v0, v2

    #v0=(Null);
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->Quit()V

    .line 48
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;->interrupt()V

    .line 49
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer;->m_thread:Lcom/clipcomm/WiFiRemocon/UDPEventServer$RequestListenerThread;

    .line 50
    return-void
.end method
