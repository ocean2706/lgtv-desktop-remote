.class public final enum Ljavax/jmdns/impl/constants/DNSResultCode;
.super Ljava/lang/Enum;
.source "DNSResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field static final ExtendedRCode_MASK:I = 0xff

.field public static final enum FormErr:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NoError:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NotImp:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NotZone:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field static final RCode_MASK:I = 0xf

.field public static final enum Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;


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
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "Unknown"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "Unknown"

    #v2=(Reference,Ljava/lang/String;);
    const v3, 0xffff

    #v3=(Char);
    invoke-direct {v0, v1, v5, v2, v3}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 21
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "NoError"

    const-string v2, "No Error"

    invoke-direct {v0, v1, v6, v2, v5}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NoError:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 25
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "FormErr"

    const-string v2, "Format Error"

    invoke-direct {v0, v1, v7, v2, v6}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->FormErr:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 29
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "ServFail"

    const-string v2, "Server Failure"

    invoke-direct {v0, v1, v8, v2, v7}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 33
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "NXDomain"

    const-string v2, "Non-Existent Domain"

    invoke-direct {v0, v1, v9, v2, v8}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 37
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "NotImp"

    const/4 v2, 0x5

    #v2=(PosByte);
    const-string v3, "Not Implemented"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2, v3, v9}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NotImp:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 41
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "Refused"

    const/4 v2, 0x6

    const-string v3, "Query Refused"

    const/4 v4, 0x5

    #v4=(PosByte);
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 45
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "YXDomain"

    const/4 v2, 0x7

    const-string v3, "Name Exists when it should not"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 49
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "YXRRSet"

    const/16 v2, 0x8

    const-string v3, "RR Set Exists when it should not"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 53
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "NXRRSet"

    const/16 v2, 0x9

    const-string v3, "RR Set that should exist does not"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 57
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "NotAuth"

    const/16 v2, 0xa

    const-string v3, "Server Not Authoritative for zone"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 61
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(UninitRef,Ljavax/jmdns/impl/constants/DNSResultCode;);
    const-string v1, "NotZone"

    const/16 v2, 0xb

    const-string v3, "NotZone Name not contained in zone"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NotZone:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 12
    const/16 v0, 0xc

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSResultCode;);
    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->NoError:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->FormErr:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NotImp:Ljavax/jmdns/impl/constants/DNSResultCode;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NotZone:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    #p0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_externalName:Ljava/lang/String;

    .line 106
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    .line 107
    return-void
.end method

.method public static resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 6
    .parameter "flags"

    .prologue
    .line 135
    and-int/lit8 v1, p0, 0xf

    .line 136
    .local v1, maskedIndex:I
    #v1=(Integer);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSResultCode;->values()[Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSResultCode;);
    array-length v3, v2

    #v3=(Integer);
    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_0

    .line 141
    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    :goto_1
    return-object v2

    .line 136
    :cond_0
    aget-object v0, v2, v4

    .line 138
    .local v0, aCode:Ljavax/jmdns/impl/constants/DNSResultCode;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    #v5=(Integer);
    if-ne v5, v1, :cond_1

    move-object v2, v0

    .line 139
    goto :goto_1

    .line 136
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 6
    .parameter "flags"
    .parameter "extendedRCode"

    .prologue
    .line 146
    shr-int/lit8 v2, p1, 0x1c

    #v2=(Byte);
    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    and-int/lit8 v3, p0, 0xf

    #v3=(Integer);
    or-int v1, v2, v3

    .line 147
    .local v1, maskedIndex:I
    #v1=(Integer);
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSResultCode;->values()[Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v2

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSResultCode;);
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    #v0=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v4, v3, :cond_0

    .line 152
    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    :goto_1
    return-object v2

    .line 147
    :cond_0
    aget-object v0, v2, v4

    .line 149
    .local v0, aCode:Ljavax/jmdns/impl/constants/DNSResultCode;
    #v0=(Reference,Ljavax/jmdns/impl/constants/DNSResultCode;);
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    #v5=(Integer);
    if-ne v5, v1, :cond_1

    move-object v2, v0

    .line 150
    goto :goto_1

    .line 147
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/jmdns/impl/constants/DNSResultCode;

    return-object p0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSResultCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    #v3=(Null);
    sget-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

    #v0=(Reference,[Ljavax/jmdns/impl/constants/DNSResultCode;);
    array-length v1, v0

    #v1=(Integer);
    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSResultCode;

    #v2=(Reference,[Ljavax/jmdns/impl/constants/DNSResultCode;);
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_externalName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public indexValue()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSResultCode;->name()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
