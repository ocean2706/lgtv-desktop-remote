.class public Lcom/clipcomm/WiFiRemocon/HTTPPostServer;
.super Ljava/lang/Object;
.source "HTTPPostServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;,
        Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;,
        Lcom/clipcomm/WiFiRemocon/HTTPPostServer$WorkerThread;
    }
.end annotation


# static fields
.field public static final ALIVE:I = 0x1

.field public static final BYEBYE:I = 0x3

.field public static final CHANNELCHANGED:I = 0xa

.field public static final CURSORVISIBLE:I = 0x7

.field public static final KEYBOARDHIDE:I = 0x5

.field public static final KEYBOARDVISIBLE:I = 0x4

.field public static final NAVIBTNVISIBLE:I = 0x9

.field public static final TEXTEDITED:I = 0x8

.field public static final UPDATE:I = 0x2

.field public static final VOLCHVISIBLE:I = 0x6

.field private static volatile uniqueInstance:Lcom/clipcomm/WiFiRemocon/HTTPPostServer;


# instance fields
.field private m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    .line 90
    return-void
.end method

.method public static ParseChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "info"
    .parameter "strContents"

    .prologue
    .line 309
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_0
    #v0=(Boolean);
    return v0

    .line 311
    :cond_1
    #v0=(Uninit);
    const-string v0, "major"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 312
    const-string v0, "minor"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 313
    const-string v0, "sourceIndex"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 314
    const-string v0, "physicalNum"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 315
    const-string v0, "chtype"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 316
    const-string v0, "chname"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 319
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public static getInstance()Lcom/clipcomm/WiFiRemocon/HTTPPostServer;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer;);
    if-nez v0, :cond_1

    .line 137
    const-class v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer;);
    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;-><init>()V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer;);
    sput-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    .line 137
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    #v1=(Conflicted);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/HTTPPostServer;

    return-object v0

    .line 137
    :catchall_0
    move-exception v1

    :try_start_1
    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;);
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->stop()V

    .line 104
    :cond_0
    :try_start_0
    new-instance v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;);
    const/16 v2, 0x1f90

    #v2=(PosShort);
    invoke-direct {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;-><init>(I)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    const-string v2, "HTTPPostServer:RequestListenerThread"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->setName(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->setDaemon(Z)V

    .line 114
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->start()V

    .line 116
    :cond_1
    #v2=(Conflicted);
    return-void

    .line 106
    :catch_0
    #v0=(Uninit);v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .line 108
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->Quit()V

    .line 124
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;->interrupt()V

    .line 125
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer;->m_thread:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$RequestListenerThread;

    .line 126
    return-void
.end method
