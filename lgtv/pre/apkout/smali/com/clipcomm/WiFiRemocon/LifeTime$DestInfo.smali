.class public Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;
.super Ljava/lang/Object;
.source "LifeTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/LifeTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DestInfo"
.end annotation


# instance fields
.field m_strIP:Ljava/lang/String;

.field m_strSessionID:Ljava/lang/String;

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/LifeTime;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/clipcomm/WiFiRemocon/LifeTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "strIP"
    .parameter "strSessionID"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->this$0:Lcom/clipcomm/WiFiRemocon/LifeTime;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;);
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method SetInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "strIP"
    .parameter "strSessionID"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    .line 57
    return-void
.end method
