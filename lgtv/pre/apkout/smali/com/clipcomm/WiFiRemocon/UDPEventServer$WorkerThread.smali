.class Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;
.super Ljava/lang/Thread;
.source "UDPEventServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/UDPEventServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkerThread"
.end annotation


# instance fields
.field private receiveData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "receiveData"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 127
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;->receiveData:[B

    .line 132
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;->receiveData:[B

    .line 133
    return-void
.end method


# virtual methods
.method handleEvent([B)V
    .locals 0
    .parameter "receiveData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;->interrupt()V

    .line 154
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 139
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 150
    :goto_1
    #v0=(Conflicted);
    return-void

    .line 141
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;->receiveData:[B

    #v0=(Reference,[B);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/UDPEventServer$WorkerThread;->handleEvent([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    #v0=(Reference,Ljava/io/IOException;);
    goto :goto_1
.end method
