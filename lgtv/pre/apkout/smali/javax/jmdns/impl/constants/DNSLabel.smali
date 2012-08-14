.class public final enum Ljavax/jmdns/impl/constants/DNSLabel;
.super Ljava/lang/Enum;
.source "DNSLabel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSLabel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Compressed:Ljavax/jmdns/impl/constants/DNSLabel; = null

.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSLabel; = null

.field public static final enum Extended:Ljavax/jmdns/impl/constants/DNSLabel; = null

.field static final LABEL_MASK:I = 0xc0

.field static final LABEL_NOT_MASK:I = 0x3f

.field public static final enum Standard:Ljavax/jmdns/impl/constants/DNSLabel;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSLabel;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 17
    #v4=(Null);
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSLabel;);
    const-string v1, "Unknown"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    const/16 v3, 0x80

    #v3=(PosShort);
    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 21
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSLabel;);
    const-string v1, "Standard"

    const-string v2, "standard label"

    invoke-direct {v0, v1, v5, v2, v4}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 25
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSLabel;);
    const-string v1, "Compressed"

    const-string v2, "compressed label"

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 29
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSLabel;);
    const-string v1, "Extended"

    const-string v2, "extended label"

    const/16 v3, 0x40

    #v3=(PosByte);
    invoke-direct {v0, v1, v7, v2, v3}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 12
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSLabel;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v7

    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_externalName:Ljava/lang/String;

    .line 44
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_index:I

    .line 45
    return-void
.end method

.method public static labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;
    .locals 6
    .parameter "index"

    .prologue
    .line 73
    and-int/lit16 v1, p0, 0xc0

    .line 74
    .local v1, maskedIndex:I
    #v1=(Integer);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSLabel;->values()[Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSLabel;);
    array-length v3, v2

    #v3=(Integer);
    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_0

    .line 79
    sget-object v2, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    :goto_1
    return-object v2

    .line 74
    :cond_0
    aget-object v0, v2, v4

    .line 76
    .local v0, aLabel:Ljavax/jmdns/impl/constants/DNSLabel;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSLabel;);
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSLabel;->_index:I

    #v5=(Integer);
    if-ne v5, v1, :cond_1

    move-object v2, v0

    .line 77
    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static labelValue(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    and-int/lit8 v0, p0, 0x3f

    #v0=(Integer);
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSLabel;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSLabel;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSLabel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSLabel;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSLabel;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSLabel;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSLabel;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_externalName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_index:I

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSLabel;->name()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSLabel;->indexValue()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
