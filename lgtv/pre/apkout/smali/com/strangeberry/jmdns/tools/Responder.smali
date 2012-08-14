.class public Lcom/strangeberry/jmdns/tools/Responder;
.super Ljava/lang/Object;
.source "Responder.java"


# direct methods
.method public constructor <init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;)V
    .locals 8
    .parameter "jmdns"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    #p0=(Reference,Lcom/strangeberry/jmdns/tools/Responder;);
    new-instance v0, Ljava/io/BufferedReader;

    #v0=(UninitRef,Ljava/io/BufferedReader;);
    new-instance v6, Ljava/io/FileReader;

    #v6=(UninitRef,Ljava/io/FileReader;);
    invoke-direct {v6, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/io/FileReader;);
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    .local v0, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    #v0=(Reference,Ljava/io/BufferedReader;);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, ln:Ljava/lang/String;
    :goto_1
    #v1=(Reference,Ljava/lang/String;);v6=(Conflicted);
    if-eqz v1, :cond_0

    const-string v6, "#"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    #v6=(Integer);
    if-eqz v6, :cond_1

    .line 59
    :cond_0
    #v6=(Conflicted);
    if-nez v1, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 86
    return-void

    .line 57
    :cond_1
    :try_start_1
    #v6=(Integer);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 63
    :cond_2
    #v6=(Conflicted);
    move-object v2, v1

    .line 64
    .local v2, name:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, type:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, text:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 70
    .local v3, port:I
    #v3=(Integer);
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_3

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    :cond_3
    #v6=(Conflicted);v7=(Conflicted);
    const-string v6, ".local."

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_4

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    const-string v7, "local."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_4
    #v6=(Conflicted);v7=(Conflicted);
    invoke-static {v5, v2, v3, v4}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljavax/jmdns/ServiceInfo;

    move-result-object v6

    #v6=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-virtual {p1, v6}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    .end local v1           #ln:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v6

    .line 84
    #v6=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 85
    throw v6
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/strangeberry/jmdns/tools/Responder;

    #v0=(UninitRef,Lcom/strangeberry/jmdns/tools/Responder;);
    invoke-static {}, Ljavax/jmdns/JmDNS;->create()Ljavax/jmdns/JmDNS;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/JmDNS;);
    array-length v2, p0

    #v2=(Integer);
    if-lez v2, :cond_0

    const/4 v2, 0x0

    #v2=(Null);
    aget-object v2, p0, v2

    :goto_0
    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2}, Lcom/strangeberry/jmdns/tools/Responder;-><init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;)V

    .line 97
    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Responder;);
    return-void

    .line 96
    :cond_0
    #v0=(UninitRef,Lcom/strangeberry/jmdns/tools/Responder;);v2=(Integer);
    const-string v2, "services.txt"

    #v2=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method
