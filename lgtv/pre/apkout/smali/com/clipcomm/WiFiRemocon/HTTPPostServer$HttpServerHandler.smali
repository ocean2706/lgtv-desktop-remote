.class Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;
.super Ljava/lang/Object;
.source "HTTPPostServer.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpServerHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;,
        Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostServer$HttpServerHandler$req_name:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostServer$HttpServerHandler$req_name()[I
    .locals 3

    .prologue
    .line 325
    sget-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostServer$HttpServerHandler$req_name:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->values()[Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ChannelChanged:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x9

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->CursorVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x7

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->KeyboardVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NOVALUE:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->NavigationButtonVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xa

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->TextEdited:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x8

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->VolChVisible:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x6

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->alive:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->byebye:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->update:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostServer$HttpServerHandler$req_name:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_a

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_9

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_8

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_7

    :catch_4
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_6

    :catch_5
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_5

    :catch_6
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_4

    :catch_7
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_8
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_9
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;);
    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 22
    .parameter "request"
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v19

    #v19=(Reference,Lorg/apache/http/RequestLine;);
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #v20=(Reference,Ljava/util/Locale;);
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 522
    .local v12, method:Ljava/lang/String;
    #v12=(Reference,Ljava/lang/String;);
    const-string v19, "GET"

    move-object v0, v12

    #v0=(Reference,Ljava/lang/String;);
    move-object/from16 v1, v19

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    #v19=(Boolean);
    if-nez v19, :cond_0

    const-string v19, "POST"

    #v19=(Reference,Ljava/lang/String;);
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    #v19=(Boolean);
    if-nez v19, :cond_0

    .line 524
    new-instance v19, Lorg/apache/http/MethodNotSupportedException;

    #v19=(UninitRef,Lorg/apache/http/MethodNotSupportedException;);
    new-instance v20, Ljava/lang/StringBuilder;

    #v20=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    #v21=(Reference,Ljava/lang/String;);
    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v20=(Reference,Ljava/lang/StringBuilder;);
    const-string v21, " method not supported"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    #v19=(Reference,Lorg/apache/http/MethodNotSupportedException;);
    throw v19

    .line 527
    :cond_0
    #v19=(Boolean);v21=(Uninit);
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    #v0=(Boolean);
    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 529
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 531
    .local v10, entity:Lorg/apache/http/HttpEntity;
    #v10=(Reference,Lorg/apache/http/HttpEntity;);
    if-eqz v10, :cond_1

    .line 533
    const/4 v11, 0x0

    .line 536
    .local v11, instream:Ljava/io/InputStream;
    :try_start_0
    #v11=(Null);
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 547
    :goto_0
    #v9=(Conflicted);v11=(Reference,Ljava/io/InputStream;);
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v19

    #v19=(LongLo);v20=(LongHi);
    move-wide/from16 v0, v19

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    move/from16 v0, v19

    new-array v0, v0, [B

    #v0=(Reference,[B);
    move-object/from16 v18, v0

    .line 550
    .local v18, tmp:[B
    :try_start_1
    #v18=(Reference,[B);
    move-object v0, v11

    move-object/from16 v1, v18

    #v1=(Reference,[B);
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 557
    :goto_1
    new-instance v8, Ljava/lang/String;

    #v8=(UninitRef,Ljava/lang/String;);
    move-object v0, v8

    #v0=(UninitRef,Ljava/lang/String;);
    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 559
    .local v8, contents:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);v8=(Reference,Ljava/lang/String;);
    const-string v19, "name"

    #v19=(Reference,Ljava/lang/String;);
    move-object v0, v8

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 560
    .local v16, strName:Ljava/lang/String;
    #v16=(Reference,Ljava/lang/String;);
    const-string v19, "session"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 562
    .local v17, strSession:Ljava/lang/String;
    #v17=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v8

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;->process(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 564
    .local v13, nResultHandler:I
    #v13=(Integer);
    const/4 v14, 0x0

    .line 565
    .local v14, strErrorCode:Ljava/lang/String;
    #v14=(Null);
    const/4 v15, 0x0

    .line 566
    .local v15, strErrorDetail:Ljava/lang/String;
    #v15=(Null);
    sparse-switch v13, :sswitch_data_0

    .line 598
    :goto_2
    #v14=(Reference,Ljava/lang/String;);v15=(Reference,Ljava/lang/String;);
    move-object v5, v14

    .line 599
    .local v5, ErrorCode:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    move-object v6, v15

    .line 601
    .local v6, ErrorDetail:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    const/16 v19, 0xc8

    #v19=(PosShort);
    move-object/from16 v0, p2

    move/from16 v1, v19

    #v1=(PosShort);
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 602
    new-instance v7, Lorg/apache/http/entity/EntityTemplate;

    #v7=(UninitRef,Lorg/apache/http/entity/EntityTemplate;);
    new-instance v19, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;

    #v19=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;);
    move-object/from16 v0, v19

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;);
    move-object/from16 v1, p0

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;);
    move-object v2, v5

    move-object v3, v6

    #v3=(Reference,Ljava/lang/String;);
    move-object/from16 v4, v17

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;-><init>(Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;);v19=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;);
    move-object v0, v7

    #v0=(UninitRef,Lorg/apache/http/entity/EntityTemplate;);
    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 622
    .local v7, body:Lorg/apache/http/entity/EntityTemplate;
    #v0=(Reference,Lorg/apache/http/entity/EntityTemplate;);v7=(Reference,Lorg/apache/http/entity/EntityTemplate;);
    const-string v19, "application/atom+xml; charset=UTF-8"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 626
    .end local v5           #ErrorCode:Ljava/lang/String;
    .end local v6           #ErrorDetail:Ljava/lang/String;
    .end local v7           #body:Lorg/apache/http/entity/EntityTemplate;
    .end local v8           #contents:Ljava/lang/String;
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #instream:Ljava/io/InputStream;
    .end local v13           #nResultHandler:I
    .end local v14           #strErrorCode:Ljava/lang/String;
    .end local v15           #strErrorDetail:Ljava/lang/String;
    .end local v16           #strName:Ljava/lang/String;
    .end local v17           #strSession:Ljava/lang/String;
    .end local v18           #tmp:[B
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return-void

    .line 538
    .restart local v10       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #instream:Ljava/io/InputStream;
    :catch_0
    #v0=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Reference,Lorg/apache/http/HttpEntity;);v11=(Null);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Boolean);v20=(Reference,Ljava/util/Locale;);
    move-exception v9

    .line 540
    .local v9, e:Ljava/lang/IllegalStateException;
    #v9=(Reference,Ljava/lang/IllegalStateException;);
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 542
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catch_1
    #v9=(Uninit);
    move-exception v9

    .line 544
    .local v9, e:Ljava/io/IOException;
    #v9=(Reference,Ljava/io/IOException;);
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 552
    .end local v9           #e:Ljava/io/IOException;
    .restart local v18       #tmp:[B
    :catch_2
    #v0=(Reference,Ljava/io/InputStream;);v9=(Conflicted);v11=(Reference,Ljava/io/InputStream;);v18=(Reference,[B);v19=(Integer);v20=(LongHi);
    move-exception v9

    .line 554
    .restart local v9       #e:Ljava/io/IOException;
    #v9=(Reference,Ljava/io/IOException;);
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 569
    .end local v9           #e:Ljava/io/IOException;
    .restart local v8       #contents:Ljava/lang/String;
    .restart local v13       #nResultHandler:I
    .restart local v14       #strErrorCode:Ljava/lang/String;
    .restart local v15       #strErrorDetail:Ljava/lang/String;
    .restart local v16       #strName:Ljava/lang/String;
    .restart local v17       #strSession:Ljava/lang/String;
    :sswitch_0
    #v2=(Reference,Ljava/lang/String;);v8=(Reference,Ljava/lang/String;);v9=(Conflicted);v13=(Integer);v14=(Null);v15=(Null);v16=(Reference,Ljava/lang/String;);v17=(Reference,Ljava/lang/String;);v19=(Reference,Ljava/lang/String;);
    const-string v14, "200"

    .line 570
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "OK"

    .line 571
    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 573
    :sswitch_1
    #v14=(Null);v15=(Null);
    const-string v14, "400"

    .line 574
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "Bad Request"

    .line 575
    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 577
    :sswitch_2
    #v14=(Null);v15=(Null);
    const-string v14, "401"

    .line 578
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "Unauthorized"

    .line 579
    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 581
    :sswitch_3
    #v14=(Null);v15=(Null);
    const-string v14, "406"

    .line 582
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "Not Acceptable"

    .line 583
    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 585
    :sswitch_4
    #v14=(Null);v15=(Null);
    const-string v14, "409"

    .line 586
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "Conflict"

    .line 587
    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 589
    :sswitch_5
    #v14=(Null);v15=(Null);
    const-string v14, "500"

    .line 590
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "Internal Server Error"

    .line 591
    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 593
    :sswitch_6
    #v14=(Null);v15=(Null);
    const-string v14, "503"

    .line 594
    #v14=(Reference,Ljava/lang/String;);
    const-string v15, "Service Unavailable"

    #v15=(Reference,Ljava/lang/String;);
    goto :goto_2

    .line 566
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x196 -> :sswitch_3
        0x199 -> :sswitch_4
        0x1f4 -> :sswitch_5
        0x1f7 -> :sswitch_6
    .end sparse-switch
.end method

.method public process(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "strName"
    .parameter "strContents"

    .prologue
    const/4 v6, 0x0

    .line 411
    #v6=(Null);
    const/4 v3, 0x0

    .line 413
    .local v3, nResultHandler:I
    #v3=(Null);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v4

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getActiveHandler()Landroid/os/Handler;

    move-result-object v1

    .line 414
    .local v1, hParentHandler:Landroid/os/Handler;
    #v1=(Reference,Landroid/os/Handler;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getRecvCHInfoHandler()Landroid/os/Handler;

    move-result-object v0

    .line 416
    .local v0, hChInfoRecvHandler:Landroid/os/Handler;
    #v0=(Reference,Landroid/os/Handler;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$HTTPPostServer$HttpServerHandler$req_name()[I

    move-result-object v4

    invoke-static {p1}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->toReqName(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->ordinal()I

    move-result v5

    #v5=(Integer);
    aget v4, v4, v5

    #v4=(Integer);
    packed-switch v4, :pswitch_data_0

    .line 512
    :goto_0
    :pswitch_0
    #v2=(Conflicted);v3=(PosShort);v4=(Conflicted);v5=(Conflicted);
    return v3

    .line 419
    :pswitch_1
    #v2=(Uninit);v3=(Null);v4=(Integer);v5=(Integer);
    const/16 v3, 0xc8

    .line 420
    #v3=(PosShort);
    goto :goto_0

    .line 422
    :pswitch_2
    #v3=(Null);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v4}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->sendBroadcastByeBye(Z)V

    .line 423
    const/16 v3, 0xc8

    .line 424
    #v3=(PosShort);
    goto :goto_0

    .line 426
    :pswitch_3
    #v3=(Null);v4=(Integer);
    if-eqz v0, :cond_1

    .line 428
    new-instance v2, Landroid/os/Message;

    #v2=(UninitRef,Landroid/os/Message;);
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 429
    .local v2, msg:Landroid/os/Message;
    #v2=(Reference,Landroid/os/Message;);
    const/16 v4, 0xa

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 430
    if-eqz p2, :cond_0

    .line 432
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    #v2=(Conflicted);v4=(Integer);
    const/16 v3, 0xc8

    .line 437
    #v3=(PosShort);
    goto :goto_0

    .line 439
    :pswitch_4
    #v2=(Uninit);v3=(Null);
    if-eqz v1, :cond_2

    .line 441
    if-eqz p2, :cond_2

    .line 443
    new-instance v2, Landroid/os/Message;

    #v2=(UninitRef,Landroid/os/Message;);
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 444
    .restart local v2       #msg:Landroid/os/Message;
    #v2=(Reference,Landroid/os/Message;);
    const-string v4, "value"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {p2, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 446
    const/4 v4, 0x4

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 452
    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    #v2=(Conflicted);v4=(Integer);v5=(Conflicted);
    const/16 v3, 0xc8

    .line 456
    #v3=(PosShort);
    goto :goto_0

    .line 450
    .restart local v2       #msg:Landroid/os/Message;
    :cond_3
    #v2=(Reference,Landroid/os/Message;);v3=(Null);v4=(Boolean);v5=(Reference,Ljava/lang/String;);
    const/4 v4, 0x5

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 458
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_5
    #v2=(Uninit);v4=(Integer);v5=(Integer);
    if-eqz v1, :cond_4

    .line 460
    new-instance v2, Landroid/os/Message;

    #v2=(UninitRef,Landroid/os/Message;);
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 461
    .restart local v2       #msg:Landroid/os/Message;
    #v2=(Reference,Landroid/os/Message;);
    const/4 v4, 0x7

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 462
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    #v2=(Conflicted);v4=(Integer);
    const/16 v3, 0xc8

    .line 466
    #v3=(PosShort);
    goto :goto_0

    .line 468
    :pswitch_6
    #v2=(Uninit);v3=(Null);
    if-eqz v1, :cond_5

    .line 470
    new-instance v2, Landroid/os/Message;

    #v2=(UninitRef,Landroid/os/Message;);
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 471
    .restart local v2       #msg:Landroid/os/Message;
    #v2=(Reference,Landroid/os/Message;);
    const/4 v4, 0x6

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 472
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    .end local v2           #msg:Landroid/os/Message;
    :cond_5
    #v2=(Conflicted);v4=(Integer);
    const/16 v3, 0xc8

    .line 476
    #v3=(PosShort);
    goto :goto_0

    .line 482
    :cond_6
    #v2=(Uninit);v3=(Null);v4=(Boolean);v5=(Conflicted);
    const-wide/16 v4, 0x64

    :try_start_0
    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_2
    :pswitch_7
    #v4=(Conflicted);v5=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v4

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isKBDActivated()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_6

    .line 488
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v4

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getActiveHandler()Landroid/os/Handler;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_7

    .line 491
    new-instance v2, Landroid/os/Message;

    #v2=(UninitRef,Landroid/os/Message;);
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 492
    .restart local v2       #msg:Landroid/os/Message;
    #v2=(Reference,Landroid/os/Message;);
    const/16 v4, 0x8

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 493
    const-string v4, "value"

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {p2, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 495
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 497
    .end local v2           #msg:Landroid/os/Message;
    :cond_7
    #v2=(Conflicted);
    const/16 v3, 0x190

    .line 498
    #v3=(PosShort);
    goto/16 :goto_0

    .line 500
    :pswitch_8
    #v2=(Uninit);v3=(Null);v4=(Integer);v5=(Integer);
    if-eqz v1, :cond_8

    .line 502
    new-instance v2, Landroid/os/Message;

    #v2=(UninitRef,Landroid/os/Message;);
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 503
    .restart local v2       #msg:Landroid/os/Message;
    #v2=(Reference,Landroid/os/Message;);
    const/16 v4, 0x9

    #v4=(PosByte);
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 504
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    #v2=(Conflicted);v4=(Integer);
    const/16 v3, 0xc8

    .line 509
    :pswitch_9
    #v3=(PosShort);
    const/16 v3, 0x190

    goto/16 :goto_0

    .line 484
    :catch_0
    #v2=(Uninit);v3=(Null);v4=(LongLo);v5=(LongHi);
    move-exception v4

    #v4=(Reference,Ljava/lang/InterruptedException;);
    goto :goto_2

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method
