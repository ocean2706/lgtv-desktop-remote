.class public abstract Ljavax/jmdns/ServiceEvent;
.super Ljava/util/EventObject;
.source "ServiceEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x76c5b4f8185b11bfL


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "eventSource"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 31
    #p0=(Reference,Ljavax/jmdns/ServiceEvent;);
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    return-object v0
.end method

.method public abstract getDNS()Ljavax/jmdns/JmDNS;
.end method

.method public abstract getInfo()Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method
