.class public Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSOutgoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOutputStream"
.end annotation


# instance fields
.field private _out:Ljavax/jmdns/impl/DNSOutgoing;


# direct methods
.method constructor <init>(ILjavax/jmdns/impl/DNSOutgoing;)V
    .locals 0
    .parameter "size"
    .parameter "out"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 39
    #p0=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    iput-object p2, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    .line 40
    return-void
.end method


# virtual methods
.method writeByte(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 44
    and-int/lit16 v0, p1, 0xff

    #v0=(Integer);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write(I)V

    .line 45
    return-void
.end method

.method writeBytes(Ljava/lang/String;II)V
    .locals 2
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, p3, :cond_0

    .line 53
    return-void

    .line 51
    :cond_0
    add-int v1, p2, v0

    #v1=(Integer);
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    #v1=(Char);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method writeBytes([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 59
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p1

    #v1=(Integer);
    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 61
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method writeBytes([BII)V
    .locals 2
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-lt v0, p3, :cond_0

    .line 69
    return-void

    .line 67
    :cond_0
    add-int v1, p2, v0

    #v1=(Integer);
    aget-byte v1, p1, v1

    #v1=(Byte);
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method writeInt(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 79
    shr-int/lit8 v0, p1, 0x10

    #v0=(Short);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 80
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 81
    return-void
.end method

.method writeName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 135
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method writeName(Ljava/lang/String;Z)V
    .locals 7
    .parameter "name"
    .parameter "useCompression"

    .prologue
    const/4 v6, 0x0

    .line 140
    #v6=(Null);
    move-object v0, p1

    .line 143
    .local v0, aName:Ljava/lang/String;
    :cond_0
    :goto_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    const/16 v4, 0x2e

    #v4=(PosByte);
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 144
    .local v1, n:I
    #v1=(Integer);
    if-gez v1, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 148
    :cond_1
    if-gtz v1, :cond_2

    .line 150
    invoke-virtual {p0, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 162
    :goto_1
    #v3=(Conflicted);v4=(Integer);
    return-void

    .line 153
    :cond_2
    #v3=(Uninit);v4=(PosByte);
    if-eqz p2, :cond_4

    sget-boolean v4, Ljavax/jmdns/impl/DNSOutgoing;->USE_DOMAIN_NAME_COMPRESSION:Z

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 155
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    #v4=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    iget-object v4, v4, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Ljava/lang/Integer;

    .line 156
    .local v2, offset:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 160
    .local v3, val:I
    #v3=(Integer);
    shr-int/lit8 v4, v3, 0x8

    #v4=(Integer);
    or-int/lit16 v4, v4, 0xc0

    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 161
    and-int/lit16 v4, v3, 0xff

    invoke-virtual {p0, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_1

    .line 164
    .end local v3           #val:I
    :cond_3
    #v3=(Uninit);v4=(Reference,Ljava/util/Map;);
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget-object v4, v4, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference,Ljava/lang/Integer;);
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v2           #offset:Ljava/lang/Integer;
    :cond_4
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0, v0, v6, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v4, "."

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 170
    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0
.end method

.method writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 1
    .parameter "question"

    .prologue
    .line 177
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 179
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 180
    return-void
.end method

.method writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 5
    .parameter "rec"
    .parameter "now"

    .prologue
    const/4 v4, 0x0

    .line 184
    #v4=(Null);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 186
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->isUnique()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    #v3=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    const v3, 0x8000

    :goto_0
    #v3=(Char);
    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 187
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, p2, v2

    #v2=(Byte);
    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v2

    :goto_1
    #v2=(Integer);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeInt(I)V

    .line 189
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    #v1=(UninitRef,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    const/16 v2, 0x200

    #v2=(PosShort);
    iget-object v3, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    #v3=(Reference,Ljavax/jmdns/impl/DNSOutgoing;);
    invoke-direct {v1, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 190
    .local v1, record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    #v1=(Reference,Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;);
    invoke-virtual {p1, v1}, Ljavax/jmdns/impl/DNSRecord;->write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V

    .line 191
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 193
    .local v0, byteArray:[B
    #v0=(Reference,[B);
    array-length v2, v0

    #v2=(Integer);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 194
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 195
    return-void

    .end local v0           #byteArray:[B
    .end local v1           #record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Boolean);
    move v3, v4

    .line 186
    #v3=(Null);
    goto :goto_0

    .line 187
    :cond_1
    #v2=(Byte);v3=(LongHi);
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->getRemainingTTL(J)I

    move-result v2

    #v2=(Integer);
    goto :goto_1
.end method

.method writeShort(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 73
    shr-int/lit8 v0, p1, 0x8

    #v0=(Integer);
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 74
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 75
    return-void
.end method

.method writeUTF(Ljava/lang/String;II)V
    .locals 7
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    const/16 v6, 0x7ff

    #v6=(PosShort);
    const/16 v5, 0x7f

    #v5=(PosByte);
    const/4 v4, 0x1

    .line 86
    #v4=(One);
    const/4 v2, 0x0

    .line 87
    .local v2, utflen:I
    #v2=(Null);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Integer);v3=(Conflicted);
    if-lt v1, p3, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 109
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p3, :cond_3

    .line 131
    return-void

    .line 89
    :cond_0
    add-int v3, p2, v1

    #v3=(Integer);
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    .local v0, ch:I
    #v0=(Char);
    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 87
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    if-le v0, v6, :cond_2

    .line 98
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 102
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 111
    .end local v0           #ch:I
    :cond_3
    #v0=(Conflicted);v3=(Conflicted);
    add-int v3, p2, v1

    #v3=(Integer);
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    .restart local v0       #ch:I
    #v0=(Char);
    if-lt v0, v4, :cond_4

    if-gt v0, v5, :cond_4

    .line 114
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 109
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_4
    if-le v0, v6, :cond_5

    .line 120
    shr-int/lit8 v3, v0, 0xc

    #v3=(PosByte);
    and-int/lit8 v3, v3, 0xf

    #v3=(Integer);
    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 121
    shr-int/lit8 v3, v0, 0x6

    #v3=(Char);
    and-int/lit8 v3, v3, 0x3f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 122
    shr-int/lit8 v3, v0, 0x0

    #v3=(Char);
    and-int/lit8 v3, v3, 0x3f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_3

    .line 126
    :cond_5
    shr-int/lit8 v3, v0, 0x6

    #v3=(Char);
    and-int/lit8 v3, v3, 0x1f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 127
    shr-int/lit8 v3, v0, 0x0

    #v3=(Char);
    and-int/lit8 v3, v3, 0x3f

    #v3=(Integer);
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_3
.end method
