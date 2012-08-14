.class public Lcom/strangeberry/jmdns/tools/Main;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/strangeberry/jmdns/tools/Main$SampleListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/strangeberry/jmdns/tools/Main;);
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    array-length v0, p0

    .line 102
    .local v0, argc:I
    #v0=(Integer);
    const/4 v1, 0x0

    .line 103
    .local v1, debug:Z
    #v1=(Null);
    const/4 v3, 0x0

    .line 105
    .local v3, intf:Ljava/net/InetAddress;
    #v3=(Null);
    if-lez v0, :cond_0

    const-string v2, "-d"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    aget-object v4, p0, v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 107
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    #v2=(Null);
    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v1, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    .end local v1           #debug:Z
    new-instance v2, Ljava/util/logging/ConsoleHandler;

    #v2=(UninitRef,Ljava/util/logging/ConsoleHandler;);
    invoke-direct {v2}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 111
    .local v2, handler:Ljava/util/logging/ConsoleHandler;
    #v2=(Reference,Ljava/util/logging/ConsoleHandler;);
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #v1=(Reference,Ljava/util/logging/Level;);
    invoke-virtual {v2, v1}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 112
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    #v5=(Conflicted);
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_4

    .line 120
    const/4 v1, 0x1

    .line 123
    .end local v2           #handler:Ljava/util/logging/ConsoleHandler;
    .local v1, debug:Z
    :cond_0
    #v1=(Boolean);v2=(Conflicted);v4=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    if-le v0, v2, :cond_e

    const-string v2, "-i"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    aget-object v4, p0, v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_e

    .line 125
    const/4 v2, 0x1

    #v2=(One);
    aget-object v2, p0, v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 126
    .end local v3           #intf:Ljava/net/InetAddress;
    .local v2, intf:Ljava/net/InetAddress;
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    add-int/lit8 v0, v0, -0x2

    invoke-static {p0, v3, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v2

    .end local v2           #intf:Ljava/net/InetAddress;
    .local v9, intf:Ljava/net/InetAddress;
    #v9=(Reference,Ljava/net/InetAddress;);
    move v2, v0

    .end local v0           #argc:I
    .local v2, argc:I
    #v2=(Integer);
    move-object v0, v9

    .line 128
    .end local v9           #intf:Ljava/net/InetAddress;
    .local v0, intf:Ljava/net/InetAddress;
    :goto_1
    #v0=(Reference,Ljava/net/InetAddress;);v4=(Conflicted);v9=(Conflicted);
    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 133
    :cond_1
    const-string v3, "Browser"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v0, v3}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v6

    .line 135
    .local v6, jmdns:Ljavax/jmdns/JmDNS;
    #v6=(Reference,Ljavax/jmdns/JmDNS;);
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    #v0=(One);
    if-lt v2, v0, :cond_6

    .end local v0           #intf:Ljava/net/InetAddress;
    const-string v0, "-browse"

    #v0=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    aget-object v3, p0, v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_6

    .line 137
    :cond_2
    #v0=(Conflicted);
    new-instance v0, Lcom/strangeberry/jmdns/tools/Browser;

    #v0=(UninitRef,Lcom/strangeberry/jmdns/tools/Browser;);
    invoke-direct {v0, v6}, Lcom/strangeberry/jmdns/tools/Browser;-><init>(Ljavax/jmdns/JmDNS;)V

    .line 138
    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    const/4 v0, 0x2

    .end local v1           #debug:Z
    .local v0, i:I
    :goto_2
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, v2, :cond_5

    .line 202
    .end local v0           #i:I
    .end local v2           #argc:I
    .end local p0
    :cond_3
    :goto_3
    #v0=(Conflicted);v2=(Conflicted);v7=(Conflicted);v8=(Conflicted);p0=(Conflicted);
    return-void

    .line 114
    .end local v6           #jmdns:Ljavax/jmdns/JmDNS;
    .local v0, argc:I
    .local v1, enumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .local v2, handler:Ljava/util/logging/ConsoleHandler;
    .restart local v3       #intf:Ljava/net/InetAddress;
    .restart local p0
    :cond_4
    #v0=(Integer);v1=(Reference,Ljava/util/Enumeration;);v2=(Reference,Ljava/util/logging/ConsoleHandler;);v3=(Null);v4=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);p0=(Reference,[Ljava/lang/String;);
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljava/lang/String;

    .line 115
    .local v4, loggerName:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    .line 116
    .local v4, logger:Ljava/util/logging/Logger;
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 117
    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #v5=(Reference,Ljava/util/logging/Level;);
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    .line 140
    .end local v1           #enumerator:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3           #intf:Ljava/net/InetAddress;
    .end local v4           #logger:Ljava/util/logging/Logger;
    .local v0, i:I
    .local v2, argc:I
    .restart local v6       #jmdns:Ljavax/jmdns/JmDNS;
    :cond_5
    #v1=(Conflicted);v2=(Integer);v3=(Reference,Ljava/lang/String;);v4=(Conflicted);v5=(Conflicted);v6=(Reference,Ljavax/jmdns/JmDNS;);v9=(Conflicted);
    aget-object v1, p0, v0

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v1}, Ljavax/jmdns/JmDNS;->registerServiceType(Ljava/lang/String;)Z

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    .end local v0           #i:I
    .local v1, debug:Z
    :cond_6
    #v0=(Boolean);v1=(Boolean);
    const/4 v0, 0x1

    #v0=(One);
    if-ne v2, v0, :cond_7

    const-string v0, "-bt"

    #v0=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    aget-object v3, p0, v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_7

    .line 145
    new-instance p0, Lcom/strangeberry/jmdns/tools/Main$SampleListener;

    .end local p0
    #p0=(UninitRef,Lcom/strangeberry/jmdns/tools/Main$SampleListener;);
    invoke-direct {p0}, Lcom/strangeberry/jmdns/tools/Main$SampleListener;-><init>()V

    #p0=(Reference,Lcom/strangeberry/jmdns/tools/Main$SampleListener;);
    invoke-virtual {v6, p0}, Ljavax/jmdns/JmDNS;->addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V

    goto :goto_3

    .line 147
    .restart local p0
    :cond_7
    const/4 v0, 0x3

    #v0=(PosByte);
    if-ne v2, v0, :cond_8

    const-string v0, "-bs"

    #v0=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    aget-object v3, p0, v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_8

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v1, 0x1

    #v1=(One);
    aget-object v1, p0, v1

    .end local v1           #debug:Z
    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    #v1=(PosByte);
    aget-object p0, p0, v1

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/strangeberry/jmdns/tools/Main$SampleListener;

    #v0=(UninitRef,Lcom/strangeberry/jmdns/tools/Main$SampleListener;);
    invoke-direct {v0}, Lcom/strangeberry/jmdns/tools/Main$SampleListener;-><init>()V

    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Main$SampleListener;);
    invoke-virtual {v6, p0, v0}, Ljavax/jmdns/JmDNS;->addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    goto :goto_3

    .line 151
    .restart local v1       #debug:Z
    .restart local p0
    :cond_8
    #v0=(PosByte);v1=(Boolean);
    const/4 v0, 0x4

    if-le v2, v0, :cond_c

    const-string v0, "-rs"

    #v0=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    aget-object v3, p0, v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_c

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const/4 v1, 0x2

    #v1=(PosByte);
    aget-object v1, p0, v1

    .end local v1           #debug:Z
    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    #v1=(PosByte);
    aget-object v1, p0, v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, type:Ljava/lang/String;
    const/4 v1, 0x1

    #v1=(One);
    aget-object v1, p0, v1

    .line 155
    .local v1, name:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const/4 v5, 0x0

    .line 156
    .local v5, props:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    #v5=(Null);
    const/4 v3, 0x5

    .local v3, i:I
    :goto_4
    #v3=(Integer);v5=(Reference,Ljava/util/Hashtable;);v7=(Conflicted);v8=(Conflicted);
    if-lt v3, v2, :cond_9

    .line 169
    const/4 v2, 0x4

    #v2=(PosByte);
    aget-object p0, p0, v2

    .end local v2           #argc:I
    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static/range {v0 .. v5}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    .end local v3           #i:I
    move-result-object p0

    invoke-virtual {v6, p0}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    .line 176
    .end local v0           #type:Ljava/lang/String;
    :goto_5
    #v0=(Conflicted);v1=(Conflicted);
    const-wide/32 v0, 0x7fffffff

    :try_start_0
    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 178
    :catch_0
    move-exception p0

    goto/16 :goto_3

    .line 158
    .restart local v0       #type:Ljava/lang/String;
    .restart local v2       #argc:I
    .restart local v3       #i:I
    .restart local p0
    :cond_9
    #v0=(Reference,Ljava/lang/String;);v1=(Reference,Ljava/lang/String;);v3=(Integer);v4=(Conflicted);
    aget-object v4, p0, v3

    #v4=(Reference,Ljava/lang/String;);
    const/16 v7, 0x3d

    #v7=(PosByte);
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 159
    .local v4, j:I
    #v4=(Integer);
    if-gez v4, :cond_a

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    .end local v0           #type:Ljava/lang/String;
    #v0=(UninitRef,Ljava/lang/RuntimeException;);
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #name:Ljava/lang/String;
    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "not key=val: "

    .end local v2           #argc:I
    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    aget-object p0, p0, v3

    .end local p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/RuntimeException;);
    throw v0

    .line 163
    .restart local v0       #type:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #argc:I
    .restart local p0
    :cond_a
    #v2=(Integer);
    if-nez v5, :cond_b

    .line 165
    new-instance v5, Ljava/util/Hashtable;

    .end local v5           #props:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    #v5=(UninitRef,Ljava/util/Hashtable;);
    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 167
    .restart local v5       #props:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    #v5=(Reference,Ljava/util/Hashtable;);
    aget-object v7, p0, v3

    #v7=(Reference,Ljava/lang/String;);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v8, p0, v3

    #v8=(Reference,Ljava/lang/String;);
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v4           #j:I
    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 184
    .end local v0           #type:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #props:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, debug:Z
    :cond_c
    #v0=(PosByte);v1=(Boolean);v3=(Reference,Ljava/lang/String;);v4=(Conflicted);v5=(Conflicted);v7=(Uninit);v8=(Uninit);
    const/4 v0, 0x2

    if-ne v2, v0, :cond_d

    const-string v0, "-f"

    #v0=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    aget-object v2, p0, v2

    .end local v2           #argc:I
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_d

    .line 186
    new-instance v0, Lcom/strangeberry/jmdns/tools/Responder;

    #v0=(UninitRef,Lcom/strangeberry/jmdns/tools/Responder;);
    const/4 v1, 0x1

    #v1=(One);
    aget-object p0, p0, v1

    .end local v1           #debug:Z
    .end local p0
    invoke-direct {v0, v6, p0}, Lcom/strangeberry/jmdns/tools/Responder;-><init>(Ljavax/jmdns/JmDNS;Ljava/lang/String;)V

    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Responder;);
    goto/16 :goto_3

    .line 188
    .restart local v1       #debug:Z
    .restart local p0
    :cond_d
    #v0=(PosByte);v1=(Boolean);v2=(Conflicted);
    if-nez v1, :cond_3

    .line 190
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 191
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "jmdns:"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -d                                       - output debugging info"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -i <addr>                                - specify the interface address"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -browse [<type>...]                      - GUI browser (default)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -bt                                      - browse service types"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -bs <type> <domain>                      - browse services by type"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -rs <name> <type> <domain> <port> <txt>  - register service"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "     -f <file>                                - rendezvous responder"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 200
    const/4 p0, 0x1

    #p0=(One);
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_3

    .end local v6           #jmdns:Ljavax/jmdns/JmDNS;
    .local v0, argc:I
    .local v3, intf:Ljava/net/InetAddress;
    .restart local p0
    :cond_e
    #v0=(Integer);v2=(Boolean);v3=(Null);v6=(Uninit);v9=(Uninit);p0=(Reference,[Ljava/lang/String;);
    move v2, v0

    .end local v0           #argc:I
    .restart local v2       #argc:I
    #v2=(Integer);
    move-object v0, v3

    .end local v3           #intf:Ljava/net/InetAddress;
    .local v0, intf:Ljava/net/InetAddress;
    #v0=(Null);
    goto/16 :goto_1
.end method
