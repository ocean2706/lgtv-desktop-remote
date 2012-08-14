.class public final enum Ljavax/jmdns/impl/constants/DNSRecordClass;
.super Ljava/lang/Enum;
.source "DNSRecordClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSRecordClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final CLASS_MASK:I = 0x7fff

.field public static final enum CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final CLASS_UNIQUE:I = 0x8000

.field public static final enum CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final NOT_UNIQUE:Z = false

.field public static final UNIQUE:Z = true

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    #v9=(PosByte);
    const/4 v8, 0x3

    #v8=(PosByte);
    const/4 v7, 0x2

    #v7=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 20
    #v5=(Null);
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_UNKNOWN"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "?"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 24
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_IN"

    const-string v2, "in"

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 28
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_CS"

    const-string v2, "cs"

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 32
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_CH"

    const-string v2, "ch"

    invoke-direct {v0, v1, v8, v2, v8}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 36
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_HS"

    const-string v2, "hs"

    invoke-direct {v0, v1, v9, v2, v9}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 40
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_NONE"

    const/4 v2, 0x5

    #v2=(PosByte);
    const-string v3, "none"

    #v3=(Reference,Ljava/lang/String;);
    const/16 v4, 0xfe

    #v4=(PosShort);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 44
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    const-string v1, "CLASS_ANY"

    const/4 v2, 0x6

    const-string v3, "any"

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v0, 0x7

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSRecordClass;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 46
    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    .line 15
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    .line 75
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    .line 76
    return-void
.end method

.method public static classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 6
    .parameter "index"

    .prologue
    .line 133
    and-int/lit16 v1, p0, 0x7fff

    .line 134
    .local v1, maskedIndex:I
    #v1=(Integer);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSRecordClass;);
    array-length v3, v2

    #v3=(Integer);
    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_0

    .line 139
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v3=(Reference,Ljava/util/logging/Level;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Could not find record class for index: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 140
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v2

    .line 134
    :cond_0
    #v3=(Integer);v4=(Integer);
    aget-object v0, v2, v4

    .line 136
    .local v0, aClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    #v5=(Integer);
    if-ne v5, v1, :cond_1

    move-object v2, v0

    .line 137
    goto :goto_1

    .line 134
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static classForName(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 6
    .parameter "name"

    .prologue
    .line 114
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, aName:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSRecordClass;);
    array-length v3, v2

    #v3=(Integer);
    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_1

    .line 123
    .end local v1           #aName:Ljava/lang/String;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    #v2=(Reference,Ljava/util/logging/Logger;);
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #v3=(Reference,Ljava/util/logging/Level;);
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "Could not find record class for name: "

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 124
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :goto_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v2

    .line 117
    .restart local v1       #aName:Ljava/lang/String;
    :cond_1
    #v1=(Reference,Ljava/lang/String;);v3=(Integer);v4=(Integer);
    aget-object v0, v2, v4

    .line 119
    .local v0, aClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    iget-object v5, v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    move-object v2, v0

    .line 120
    goto :goto_1

    .line 117
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSRecordClass;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSRecordClass;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSRecordClass;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    #v0=(Integer);
    return v0
.end method

.method public isUnique()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    #v0=(Integer);
    const v1, 0x8000

    #v1=(Char);
    and-int/2addr v0, v1

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

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->name()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
