.class public Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 47
    #p0=(Reference,Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;);
    return-void
.end method
