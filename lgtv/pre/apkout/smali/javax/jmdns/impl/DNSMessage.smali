.class public abstract Ljavax/jmdns/impl/DNSMessage;
.super Ljava/lang/Object;
.source "DNSMessage.java"


# instance fields
.field public final MULTICAST:Z

.field public final UNICAST:Z

.field protected final _additionals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _authoritativeAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field _flags:I

.field _id:I

.field _multicast:Z

.field protected final _questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSQuestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 1
    .parameter "flags"
    .parameter "id"
    .parameter "multicast"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    #p0=(Reference,Ljavax/jmdns/impl/DNSMessage;);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->MULTICAST:Z

    .line 31
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->UNICAST:Z

    .line 60
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    .line 61
    iput p2, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    .line 62
    iput-boolean p3, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference,Ljava/util/LinkedList;);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference,Ljava/util/LinkedList;);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference,Ljava/util/LinkedList;);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    #v0=(UninitRef,Ljava/util/LinkedList;);
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #v0=(Reference,Ljava/util/LinkedList;);
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 67
    return-void
.end method


# virtual methods
.method public getAdditionals()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public getAllAnswers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    add-int/2addr v1, v2

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    #v2=(Reference,Ljava/util/List;);
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v0, aList:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    #v1=(Reference,Ljava/util/List;);
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    return-object v0
.end method

.method public getAnswers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public getAuthorities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    #v0=(Integer);
    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    #v0=(Integer);
    goto :goto_0
.end method

.method public getNumberOfAdditionals()I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAdditionals()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference,Ljava/util/Collection;);
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getNumberOfAnswers()I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAnswers()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference,Ljava/util/Collection;);
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getNumberOfAuthorities()I
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAuthorities()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference,Ljava/util/Collection;);
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getNumberOfQuestions()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getQuestions()Ljava/util/Collection;

    move-result-object v0

    #v0=(Reference,Ljava/util/Collection;);
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getQuestions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSQuestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    #v0=(Reference,Ljava/util/List;);
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    add-int/2addr v0, v1

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

.method public isMulticast()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    #v0=(Boolean);
    return v0
.end method

.method public isQuery()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

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

.method public isResponse()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 228
    #v1=(Char);
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    #v0=(Integer);
    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

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

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    #v0=(Integer);
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

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

.method print()Ljava/lang/String;
    .locals 6

    .prologue
    .line 246
    new-instance v1, Ljava/lang/StringBuffer;

    #v1=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v1, buf:Ljava/lang/StringBuffer;
    #v1=(Reference,Ljava/lang/StringBuffer;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    #v2=(Conflicted);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 252
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    #v0=(Conflicted);v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 256
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    #v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    .line 260
    iget-object v3, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    #v4=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_3

    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 248
    :cond_0
    #v0=(Uninit);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 250
    .local v2, question:Ljavax/jmdns/impl/DNSQuestion;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\tquestion:      "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 252
    .end local v2           #question:Ljavax/jmdns/impl/DNSQuestion;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 254
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\tanswer:        "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 256
    .end local v0           #answer:Ljavax/jmdns/impl/DNSRecord;
    :cond_2
    #v0=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 258
    .restart local v0       #answer:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\tauthoritative: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 260
    .end local v0           #answer:Ljavax/jmdns/impl/DNSRecord;
    :cond_3
    #v0=(Conflicted);v4=(Boolean);v5=(Conflicted);
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 262
    .restart local v0       #answer:Ljavax/jmdns/impl/DNSRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "\tadditional:    "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 117
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    .line 118
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 100
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    .line 101
    return-void
.end method
