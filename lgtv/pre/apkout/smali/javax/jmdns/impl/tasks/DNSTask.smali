.class public abstract Ljavax/jmdns/impl/tasks/DNSTask;
.super Ljava/util/TimerTask;
.source "DNSTask.java"


# instance fields
.field private final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method protected constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .parameter "jmDNSImpl"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 34
    #p0=(Reference,Ljavax/jmdns/impl/tasks/DNSTask;);
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    .line 35
    return-void
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .parameter "out"
    .parameter "in"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    move-object v5, p1

    .line 229
    .local v5, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-object v5

    .line 231
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 234
    .local v1, flags:I
    #v1=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 235
    .local v4, multicast:Z
    #v4=(Boolean);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 236
    .local v3, maxUDPPayload:I
    #v3=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 238
    .local v2, id:I
    #v2=(Integer);
    or-int/lit16 v6, v1, 0x200

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 239
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 240
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 242
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 243
    .restart local v5       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .parameter "out"
    .parameter "in"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    move-object v5, p1

    .line 124
    .local v5, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-object v5

    .line 126
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 129
    .local v1, flags:I
    #v1=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 130
    .local v4, multicast:Z
    #v4=(Boolean);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 131
    .local v3, maxUDPPayload:I
    #v3=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 133
    .local v2, id:I
    #v2=(Integer);
    or-int/lit16 v6, v1, 0x200

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 134
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 135
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 137
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 138
    .restart local v5       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .parameter "out"
    .parameter "rec"
    .parameter "now"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    move-object v5, p1

    .line 159
    .local v5, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-object v5

    .line 161
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 164
    .local v1, flags:I
    #v1=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 165
    .local v4, multicast:Z
    #v4=(Boolean);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 166
    .local v3, maxUDPPayload:I
    #v3=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 168
    .local v2, id:I
    #v2=(Integer);
    or-int/lit16 v6, v1, 0x200

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 169
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 170
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 172
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 173
    .restart local v5       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_0
.end method

.method public addAuthorativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .parameter "out"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    move-object v5, p1

    .line 193
    .local v5, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-object v5

    .line 195
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 198
    .local v1, flags:I
    #v1=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 199
    .local v4, multicast:Z
    #v4=(Boolean);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 200
    .local v3, maxUDPPayload:I
    #v3=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 202
    .local v2, id:I
    #v2=(Integer);
    or-int/lit16 v6, v1, 0x200

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 203
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 204
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 206
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 207
    .restart local v5       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V

    goto :goto_0
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 7
    .parameter "out"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v5, p1

    .line 88
    .local v5, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_0
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    return-object v5

    .line 90
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference,Ljava/io/IOException;);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v1

    .line 93
    .local v1, flags:I
    #v1=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v4

    .line 94
    .local v4, multicast:Z
    #v4=(Boolean);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v3

    .line 95
    .local v3, maxUDPPayload:I
    #v3=(Integer);
    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v2

    .line 97
    .local v2, id:I
    #v2=(Integer);
    or-int/lit16 v6, v1, 0x200

    #v6=(Integer);
    invoke-virtual {v5, v6}, Ljavax/jmdns/impl/DNSOutgoing;->setFlags(I)V

    .line 98
    invoke-virtual {v5, v2}, Ljavax/jmdns/impl/DNSOutgoing;->setId(I)V

    .line 99
    iget-object v6, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v6=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-virtual {v6, v5}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 101
    new-instance v5, Ljavax/jmdns/impl/DNSOutgoing;

    .end local v5           #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v5, v1, v4, v3}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 102
    .restart local v5       #newOut:Ljavax/jmdns/impl/DNSOutgoing;
    #v5=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v5, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    goto :goto_0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract start(Ljava/util/Timer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method
