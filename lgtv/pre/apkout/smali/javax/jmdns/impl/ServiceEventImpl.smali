.class public Ljavax/jmdns/impl/ServiceEventImpl;
.super Ljavax/jmdns/ServiceEvent;
.source "ServiceEventImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x62a498597d29f1d0L


# instance fields
.field private _info:Ljavax/jmdns/ServiceInfo;

.field private _name:Ljava/lang/String;

.field private _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    .locals 0
    .parameter "jmDNS"
    .parameter "type"
    .parameter "name"
    .parameter "info"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljavax/jmdns/ServiceEvent;-><init>(Ljava/lang/Object;)V

    .line 52
    #p0=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    iput-object p2, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_type:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_name:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_info:Ljavax/jmdns/ServiceInfo;

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    invoke-direct {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljavax/jmdns/ServiceInfo;)V

    .line 120
    .local v0, newInfo:Ljavax/jmdns/impl/ServiceInfoImpl;
    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    #v2=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getType()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v1, v3, v4, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v2=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    return-object v2
.end method

.method public getDNS()Ljavax/jmdns/JmDNS;
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getSource()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/jmdns/JmDNS;

    return-object p0
.end method

.method public getInfo()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_info:Ljavax/jmdns/ServiceInfo;

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_name:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceEventImpl;->_type:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, buf:Ljava/lang/StringBuilder;
    #v0=(Reference,Ljava/lang/StringBuilder;);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "["

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\n\tname: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "\' type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "\' info: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceEventImpl;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
