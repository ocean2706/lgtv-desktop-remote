.class public final Ljavax/jmdns/impl/DNSOutgoing;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0xc

.field public static USE_DOMAIN_NAME_COMPRESSION:Z


# instance fields
.field private final _additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private _maxUDPPayload:I

.field _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    #v0=(One);
    sput-boolean v0, Ljavax/jmdns/impl/DNSOutgoing;->USE_DOMAIN_NAME_COMPRESSION:Z

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 225
    const/4 v0, 0x1

    #v0=(One);
    const/16 v1, 0x5b4

    #v1=(PosShort);
    invoke-direct {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 226
    #p0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "flags"
    .parameter "multicast"

    .prologue
    .line 236
    const/16 v0, 0x5b4

    #v0=(PosShort);
    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 237
    #p0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1
    .parameter "flags"
    .parameter "multicast"
    .parameter "senderUDPPayload"

    .prologue
    .line 249
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 250
    #p0=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference,Ljava/util/HashMap;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    .line 251
    if-lez p3, :cond_0

    move v0, p3

    :goto_0
    #v0=(Integer);
    iput v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    .line 252
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 253
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 254
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 255
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 256
    return-void

    .line 251
    :cond_0
    const/16 v0, 0x5b4

    #v0=(PosShort);
    goto :goto_0
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 5
    .parameter "in"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const/16 v2, 0x200

    #v2=(PosShort);
    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 366
    .local v1, record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, p2, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 367
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 368
    .local v0, byteArray:[B
    #v0=(Reference,[B);
    array-length v2, v0

    #v2=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    #v3=(Integer);
    if-ge v2, v3, :cond_0

    .line 370
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    #v3=(Null);
    array-length v4, v0

    #v4=(Integer);
    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 377
    return-void

    .line 375
    :cond_0
    #v2=(Integer);v3=(Integer);v4=(Uninit);
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef,Ljava/io/IOException;);
    const-string v3, "message full"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/io/IOException;);
    throw v2
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 2
    .parameter "in"
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljavax/jmdns/impl/DNSRecord;->suppressedBy(Ljavax/jmdns/impl/DNSIncoming;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 301
    :cond_0
    #v0=(Conflicted);
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0, p2, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 303
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 5
    .parameter "rec"
    .parameter "now"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    if-eqz p1, :cond_1

    .line 316
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, p2, v2

    #v2=(Byte);
    if-eqz v2, :cond_0

    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 318
    :cond_0
    #v2=(Byte);
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const/16 v2, 0x200

    #v2=(PosShort);
    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 319
    .local v1, record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {v1, p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 320
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 321
    .local v0, byteArray:[B
    #v0=(Reference,[B);
    array-length v2, v0

    #v2=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    #v3=(Integer);
    if-ge v2, v3, :cond_2

    .line 323
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    #v3=(Null);
    array-length v4, v0

    #v4=(Integer);
    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 332
    .end local v0           #byteArray:[B
    .end local v1           #record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 328
    .restart local v0       #byteArray:[B
    .restart local v1       #record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_2
    #v0=(Reference,[B);v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);v2=(Integer);v3=(Integer);v4=(Uninit);
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef,Ljava/io/IOException;);
    const-string v3, "message full"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/io/IOException;);
    throw v2
.end method

.method public addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 5
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const/16 v2, 0x200

    #v2=(PosShort);
    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 343
    .local v1, record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, p1, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 344
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 345
    .local v0, byteArray:[B
    #v0=(Reference,[B);
    array-length v2, v0

    #v2=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    #v3=(Integer);
    if-ge v2, v3, :cond_0

    .line 347
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    #v3=(Null);
    array-length v4, v0

    #v4=(Integer);
    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 354
    return-void

    .line 352
    :cond_0
    #v2=(Integer);v3=(Integer);v4=(Uninit);
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef,Ljava/io/IOException;);
    const-string v3, "message full"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/io/IOException;);
    throw v2
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 5
    .parameter "rec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const/16 v2, 0x200

    #v2=(PosShort);
    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 277
    .local v1, record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 278
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 279
    .local v0, byteArray:[B
    #v0=(Reference,[B);
    array-length v2, v0

    #v2=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    #v3=(Integer);
    if-ge v2, v3, :cond_0

    .line 281
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    #v3=(Null);
    array-length v4, v0

    #v4=(Integer);
    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 288
    return-void

    .line 286
    :cond_0
    #v2=(Integer);v3=(Integer);v4=(Uninit);
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef,Ljava/io/IOException;);
    const-string v3, "message full"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/io/IOException;);
    throw v2
.end method

.method public availableSpace()I
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    #v0=(Integer);
    const/16 v1, 0xc

    #v1=(PosByte);
    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    #v1=(Integer);
    sub-int/2addr v0, v1

    return v0
.end method

.method public data()[B
    .locals 7

    .prologue
    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 387
    .local v1, now:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    #v5=(Reference,Ljava/util/Map;);
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 389
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v0=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iget v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    #v5=(Integer);
    invoke-direct {v0, v5, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 390
    .local v0, message:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    #v0=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iget-boolean v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_multicast:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    #v5=(Integer);
    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 391
    iget v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 392
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v5

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 393
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v5

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 394
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v5

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 395
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v5

    invoke-virtual {v0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 396
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    #v5=(Reference,Ljava/util/List;);
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    #v3=(Conflicted);v6=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 400
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    #v4=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 404
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 408
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 412
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 390
    :cond_0
    #v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);
    iget v5, p0, Ljavax/jmdns/impl/DNSOutgoing;->_id:I

    #v5=(Integer);
    goto :goto_0

    .line 396
    :cond_1
    #v3=(Conflicted);v5=(Reference,Ljava/util/Iterator;);v6=(Boolean);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 398
    .local v3, question:Ljavax/jmdns/impl/DNSQuestion;
    invoke-virtual {v0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    goto :goto_1

    .line 400
    .end local v3           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 402
    .local v4, record:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v0, v4, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_2

    .line 404
    .end local v4           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_3
    #v4=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 406
    .restart local v4       #record:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v0, v4, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_3

    .line 408
    .end local v4           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_4
    #v4=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Object;);
    check-cast v4, Ljavax/jmdns/impl/DNSRecord;

    .line 410
    .restart local v4       #record:Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v0, v4, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_4
.end method

.method public getMaxUDPPayload()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    #v0=(Integer);
    return v0
.end method

.method public isQuery()Z
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    #v0=(Integer);
    const v1, 0x8000

    #v1=(Char);
    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    #v0=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v0, buf:Ljava/lang/StringBuffer;
    #v0=(Reference,Ljava/lang/StringBuffer;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->isQuery()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_b

    const-string v3, "dns[query:"

    :goto_0
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const-string v3, " id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_id:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    #v3=(Integer);
    if-eqz v3, :cond_2

    .line 430
    const-string v3, ", flags=0x"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    #v3=(Integer);
    const v4, 0x8000

    #v4=(Char);
    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 434
    const-string v3, ":r"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    :cond_0
    #v3=(Conflicted);
    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    #v3=(Integer);
    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    .line 438
    const-string v3, ":aa"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    :cond_1
    #v3=(Conflicted);
    iget v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_flags:I

    #v3=(Integer);
    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_2

    .line 442
    const-string v3, ":tc"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_3

    .line 447
    const-string v3, ", questions="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 450
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v3

    if-lez v3, :cond_4

    .line 452
    const-string v3, ", answers="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 455
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v3

    if-lez v3, :cond_5

    .line 457
    const-string v3, ", authorities="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 460
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v3

    if-lez v3, :cond_6

    .line 462
    const-string v3, ", additionals="

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 465
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v3

    if-lez v3, :cond_7

    .line 467
    const-string v3, "\nquestions:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    #v1=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_c

    .line 473
    :cond_7
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_8

    .line 475
    const-string v3, "\nanswers:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    #v2=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_d

    .line 481
    :cond_8
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_9

    .line 483
    const-string v3, "\nauthorities:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_e

    .line 489
    :cond_9
    #v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_a

    .line 491
    const-string v3, "\nadditionals:"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_f

    .line 497
    :cond_a
    #v3=(Conflicted);v4=(Conflicted);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "\nnames="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 425
    :cond_b
    #v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    const-string v3, "dns[response:"

    #v3=(Reference,Ljava/lang/String;);
    goto/16 :goto_0

    .line 468
    :cond_c
    #v1=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljavax/jmdns/impl/DNSQuestion;

    .line 470
    .local v1, question:Ljavax/jmdns/impl/DNSQuestion;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 476
    .end local v1           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_d
    #v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 478
    .local v2, record:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 484
    .end local v2           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_e
    #v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 486
    .restart local v2       #record:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 492
    .end local v2           #record:Ljavax/jmdns/impl/DNSRecord;
    :cond_f
    #v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSRecord;

    .line 494
    .restart local v2       #record:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\n\t"

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4
.end method
