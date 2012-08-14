.class public Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;
.super Ljava/lang/Object;
.source "HTTPPostServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "req_event"
.end annotation


# instance fields
.field private m_nNameCode:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

.field private m_strName:Ljava/lang/String;

.field private m_strValue:Ljava/lang/String;

.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "strName"
    .parameter "strValue"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->this$1:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;);
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->m_strName:Ljava/lang/String;

    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->m_strValue:Ljava/lang/String;

    invoke-static {p2}, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;->toReqName(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->m_nNameCode:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->m_strName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getNameCode()Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->m_nNameCode:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_name;);
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$req_event;->m_strValue:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method
