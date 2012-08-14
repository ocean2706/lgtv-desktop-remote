.class public Lcom/clipcomm/WiFiRemocon/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 17
    const/16 v0, 0x49

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference,[Ljava/lang/Object;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ArrayUtils;);
    return-void
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, value:Ljava/lang/Object;,"TT;"
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 165
    #v4=(Null);
    array-length v1, p0

    #v1=(Integer);
    move v2, v4

    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Conflicted);
    if-lt v2, v1, :cond_0

    move v1, v4

    .line 172
    :goto_1
    #v1=(Boolean);
    return v1

    .line 165
    :cond_0
    #v1=(Integer);
    aget-object v0, p0, v2

    .line 166
    .local v0, element:Ljava/lang/Object;,"TT;"
    #v0=(Reference,Ljava/lang/Object;);
    if-nez v0, :cond_1

    .line 167
    if-nez p1, :cond_2

    move v1, v5

    #v1=(One);
    goto :goto_1

    .line 169
    :cond_1
    #v1=(Integer);
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    move v1, v5

    #v1=(One);
    goto :goto_1

    .line 165
    :cond_2
    #v1=(Integer);v3=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    #v2=(Reference,Ljava/lang/Class;);
    if-ne p0, v2, :cond_0

    .line 140
    sget-object v2, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 153
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-object v2

    .line 143
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    #v3=(Integer);
    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 144
    .local v0, bucket:I
    #v0=(Integer);
    sget-object v2, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->sCache:[Ljava/lang/Object;

    #v2=(Reference,[Ljava/lang/Object;);
    aget-object v1, v2, v0

    .line 146
    .local v1, cache:Ljava/lang/Object;
    #v1=(Reference,Ljava/lang/Object;);
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 147
    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 148
    sget-object v2, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->sCache:[Ljava/lang/Object;

    #v2=(Reference,[Ljava/lang/Object;);
    aput-object v1, v2, v0

    .line 153
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #cache:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public static equals([B[BI)Z
    .locals 5
    .parameter "array1"
    .parameter "array2"
    .parameter "length"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 115
    #v3=(Null);
    if-ne p0, p1, :cond_0

    move v1, v4

    .line 126
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 118
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p0

    #v1=(Integer);
    if-lt v1, p2, :cond_1

    array-length v1, p1

    if-ge v1, p2, :cond_2

    :cond_1
    #v1=(Conflicted);
    move v1, v3

    .line 119
    #v1=(Null);
    goto :goto_0

    .line 121
    :cond_2
    #v1=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    #v0=(Integer);v2=(Conflicted);
    if-lt v0, p2, :cond_3

    move v1, v4

    .line 126
    #v1=(One);
    goto :goto_0

    .line 122
    :cond_3
    #v1=(Integer);
    aget-byte v1, p0, v0

    #v1=(Byte);
    aget-byte v2, p1, v0

    #v2=(Byte);
    if-eq v1, v2, :cond_4

    move v1, v3

    .line 123
    #v1=(Null);
    goto :goto_0

    .line 121
    :cond_4
    #v1=(Byte);
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 4
    .parameter "need"

    .prologue
    const/16 v3, 0xc

    #v3=(PosByte);
    const/4 v2, 0x1

    .line 29
    #v2=(One);
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    const/16 v1, 0x20

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    move v1, p0

    .line 33
    :goto_1
    #v1=(Integer);
    return v1

    .line 30
    :cond_0
    #v1=(PosByte);
    shl-int v1, v2, v0

    #v1=(Integer);
    sub-int/2addr v1, v3

    if-gt p0, v1, :cond_1

    .line 31
    shl-int v1, v2, v0

    sub-int/2addr v1, v3

    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 63
    mul-int/lit8 v0, p0, 0x2

    #v0=(Integer);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 83
    mul-int/lit8 v0, p0, 0x4

    #v0=(Integer);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 73
    mul-int/lit8 v0, p0, 0x4

    #v0=(Integer);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 103
    mul-int/lit8 v0, p0, 0x8

    #v0=(Integer);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 93
    mul-int/lit8 v0, p0, 0x4

    #v0=(Integer);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 53
    mul-int/lit8 v0, p0, 0x2

    #v0=(Integer);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
