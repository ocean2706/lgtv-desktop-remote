.class public abstract Ljavax/jmdns/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/ServiceInfo$Fields;
    }
.end annotation


# static fields
.field public static final NO_VALUE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    #v0=(Null);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    sput-object v0, Ljavax/jmdns/ServiceInfo;->NO_VALUE:[B

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Ljavax/jmdns/ServiceInfo;);
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "text"

    .prologue
    .line 99
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move-object v8, p5

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 145
    .local p5, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move-object v8, p5

    #v8=(Reference,Ljava/util/Map;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"

    .prologue
    .line 239
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move v7, p5

    #v7=(Boolean);
    move-object v8, p6

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 289
    .local p6, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move v7, p5

    #v7=(Boolean);
    move-object v8, p6

    #v8=(Reference,Ljava/util/Map;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIIZ[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"

    .prologue
    .line 339
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move v7, p5

    #v7=(Boolean);
    move-object v8, p6

    #v8=(Reference,[B);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;III[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "text"

    .prologue
    .line 191
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v5, p3

    #v5=(Integer);
    move v6, p4

    #v6=(Integer);
    move-object v8, p5

    #v8=(Reference,[B);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "port"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 57
    #v5=(Null);
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move v4, p2

    #v4=(Integer);
    move v6, v5

    #v6=(Null);
    move v7, v5

    #v7=(Null);
    move-object v8, p3

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "text"

    .prologue
    .line 123
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    move-object v8, p6

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 169
    .local p6, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    move-object v8, p6

    #v8=(Reference,Ljava/util/Map;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"

    .prologue
    .line 265
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    move v7, p6

    #v7=(Boolean);
    move-object/from16 v8, p7

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 315
    .local p7, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    move v7, p6

    #v7=(Boolean);
    move-object/from16 v8, p7

    #v8=(Reference,Ljava/util/Map;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter "text"

    .prologue
    .line 365
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    move v7, p6

    #v7=(Boolean);
    move-object/from16 v8, p7

    #v8=(Reference,[B);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "text"

    .prologue
    .line 215
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    move-object v8, p6

    #v8=(Reference,[B);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "subtype"
    .parameter "port"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 77
    #v5=(Null);
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p0

    #v1=(Reference,Ljava/lang/String;);
    move-object v2, p1

    #v2=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljava/lang/String;);
    move v4, p3

    #v4=(Integer);
    move v6, v5

    #v6=(Null);
    move v7, v5

    #v7=(Null);
    move-object v8, p4

    #v8=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method public static create(Ljava/util/Map;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .parameter
    .parameter "port"
    .parameter "weight"
    .parameter "priority"
    .parameter "persistent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, qualifiedNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .local p5, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    move-object v1, p0

    #v1=(Reference,Ljava/util/Map;);
    move v2, p1

    #v2=(Integer);
    move v3, p2

    #v3=(Integer);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Boolean);
    move-object v6, p5

    #v6=(Reference,Ljava/util/Map;);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/util/Map;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method


# virtual methods
.method public abstract getAddress()Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getApplication()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getHostAddress()Ljava/lang/String;
.end method

.method public abstract getInet4Address()Ljava/net/Inet4Address;
.end method

.method public abstract getInet6Address()Ljava/net/Inet6Address;
.end method

.method public abstract getInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNiceTextString()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getPropertyBytes(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getQualifiedName()Ljava/lang/String;
.end method

.method public abstract getQualifiedNameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServer()Ljava/lang/String;
.end method

.method public abstract getSubtype()Ljava/lang/String;
.end method

.method public abstract getTextBytes()[B
.end method

.method public abstract getTextString()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getTypeWithSubtype()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract getURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWeight()I
.end method

.method public abstract hasData()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract setText(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setText([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
