.class public Ljavax/jmdns/impl/JmDNSImpl$Shutdown;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Shutdown"
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$Shutdown;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Ljavax/jmdns/impl/JmDNSImpl$Shutdown;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1449
    :try_start_0
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$Shutdown;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    #v1=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, v1, Ljavax/jmdns/impl/JmDNSImpl;->_shutdown:Ljava/lang/Thread;

    .line 1450
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$Shutdown;->this$0:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :goto_0
    #v0=(Conflicted);v2=(Reference,Ljava/lang/String;);v3=(Conflicted);
    return-void

    .line 1452
    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .line 1454
    .local v0, exception:Ljava/lang/Throwable;
    #v0=(Reference,Ljava/lang/Throwable;);
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "Error while shuting down. "

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
