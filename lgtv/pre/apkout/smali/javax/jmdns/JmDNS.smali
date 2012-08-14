.class public abstract Ljavax/jmdns/JmDNS;
.super Ljava/lang/Object;
.source "JmDNS.java"


# static fields
.field public static VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "3.2.0"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Ljavax/jmdns/JmDNS;->VERSION:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Ljavax/jmdns/JmDNS;);
    return-void
.end method

.method public static create()Ljavax/jmdns/JmDNS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    #v1=(Null);
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-direct {v0, v1, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;
    .locals 2
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method

.method public static create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;
    .locals 1
    .parameter "addr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/JmDNSImpl;);
    invoke-direct {v0, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    #v0=(Reference,Ljavax/jmdns/impl/JmDNSImpl;);
    return-object v0
.end method


# virtual methods
.method public abstract addServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end method

.method public abstract addServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getInterface()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract list(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract listBySubtype(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listBySubtype(Ljava/lang/String;J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract printServices()V
.end method

.method public abstract registerService(Ljavax/jmdns/ServiceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract registerServiceType(Ljava/lang/String;)Z
.end method

.method public abstract removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V
.end method

.method public abstract removeServiceTypeListener(Ljavax/jmdns/ServiceTypeListener;)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract requestServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
.end method

.method public abstract unregisterAllServices()V
.end method

.method public abstract unregisterService(Ljavax/jmdns/ServiceInfo;)V
.end method
