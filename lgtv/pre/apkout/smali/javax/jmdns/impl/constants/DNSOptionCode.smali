.class public final enum Ljavax/jmdns/impl/constants/DNSOptionCode;
.super Ljava/lang/Enum;
.source "DNSOptionCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSOptionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x4

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    .line 18
    #v4=(One);
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    const-string v1, "Unknown"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Unknown"

    #v2=(Reference,Ljava/lang/String;);
    const v3, 0xffff

    #v3=(Char);
    invoke-direct {v0, v1, v8, v2, v3}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 22
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    const-string v1, "LLQ"

    const-string v2, "LLQ"

    invoke-direct {v0, v1, v4, v2, v4}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 26
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    const-string v1, "UL"

    const-string v2, "UL"

    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 30
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    const-string v1, "NSID"

    const-string v2, "NSID"

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 34
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    const-string v1, "Owner"

    const-string v2, "Owner"

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSOptionCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

    .line 12
    const/4 v0, 0x5

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSOptionCode;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

    aput-object v1, v0, v7

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSOptionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_externalName:Ljava/lang/String;

    .line 43
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_index:I

    .line 44
    return-void
.end method

.method public static resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;
    .locals 6
    .parameter "optioncode"

    .prologue
    .line 72
    move v1, p0

    .line 73
    .local v1, maskedIndex:I
    #v1=(Integer);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOptionCode;->values()[Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSOptionCode;);
    array-length v3, v2

    #v3=(Integer);
    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_0

    .line 78
    sget-object v2, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    :goto_1
    return-object v2

    .line 73
    :cond_0
    aget-object v0, v2, v4

    .line 75
    .local v0, aCode:Ljavax/jmdns/impl/constants/DNSOptionCode;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOptionCode;);
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_index:I

    #v5=(Integer);
    if-ne v5, v1, :cond_1

    move-object v2, v0

    .line 76
    goto :goto_1

    .line 73
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSOptionCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSOptionCode;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSOptionCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOptionCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSOptionCode;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSOptionCode;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSOptionCode;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_externalName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSOptionCode;->_index:I

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOptionCode;->name()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOptionCode;->indexValue()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
