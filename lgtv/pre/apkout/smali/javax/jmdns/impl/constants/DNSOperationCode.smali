.class public final enum Ljavax/jmdns/impl/constants/DNSOperationCode;
.super Ljava/lang/Enum;
.source "DNSOperationCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSOperationCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode; = null

.field public static final enum IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode; = null

.field public static final enum Notify:Ljavax/jmdns/impl/constants/DNSOperationCode; = null

.field static final OpCode_MASK:I = 0x7800

.field public static final enum Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

.field public static final enum Update:Ljavax/jmdns/impl/constants/DNSOperationCode;


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

    .line 17
    #v5=(Null);
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    const-string v1, "Query"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Query"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 21
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    const-string v1, "IQuery"

    const-string v2, "Inverse Query"

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 25
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    const-string v1, "Status"

    const-string v2, "Status"

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 29
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    const-string v1, "Unassigned"

    const-string v2, "Unassigned"

    invoke-direct {v0, v1, v8, v2, v8}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 33
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    const-string v1, "Notify"

    const-string v2, "Notify"

    invoke-direct {v0, v1, v9, v2, v9}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 37
    new-instance v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    const-string v1, "Update"

    const/4 v2, 0x5

    #v2=(PosByte);
    const-string v3, "Update"

    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x5

    #v4=(PosByte);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSOperationCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->Update:Ljavax/jmdns/impl/constants/DNSOperationCode;

    .line 12
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSOperationCode;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Query:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->IQuery:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Status:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOperationCode;->Notify:Ljavax/jmdns/impl/constants/DNSOperationCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSOperationCode;->Update:Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_externalName:Ljava/lang/String;

    .line 51
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_index:I

    .line 52
    return-void
.end method

.method public static operationCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 6
    .parameter "flags"

    .prologue
    .line 80
    and-int/lit16 v2, p0, 0x7800

    #v2=(Integer);
    shr-int/lit8 v1, v2, 0xb

    .line 81
    .local v1, maskedIndex:I
    #v1=(Integer);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOperationCode;->values()[Ljavax/jmdns/impl/constants/DNSOperationCode;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSOperationCode;);
    array-length v3, v2

    #v3=(Integer);
    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_0

    .line 86
    sget-object v2, Ljavax/jmdns/impl/constants/DNSOperationCode;->Unassigned:Ljavax/jmdns/impl/constants/DNSOperationCode;

    :goto_1
    return-object v2

    .line 81
    :cond_0
    aget-object v0, v2, v4

    .line 83
    .local v0, aCode:Ljavax/jmdns/impl/constants/DNSOperationCode;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSOperationCode;);
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_index:I

    #v5=(Integer);
    if-ne v5, v1, :cond_1

    move-object v2, v0

    .line 84
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSOperationCode;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSOperationCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSOperationCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSOperationCode;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSOperationCode;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSOperationCode;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_externalName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSOperationCode;->_index:I

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOperationCode;->name()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSOperationCode;->indexValue()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
