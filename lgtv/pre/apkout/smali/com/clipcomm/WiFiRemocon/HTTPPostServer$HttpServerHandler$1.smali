.class Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;
.super Ljava/lang/Object;
.source "HTTPPostServer.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;

.field private final synthetic val$ErrorCode:Ljava/lang/String;

.field private final synthetic val$ErrorDetail:Ljava/lang/String;

.field private final synthetic val$strSession:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->this$1:Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->val$ErrorCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->val$ErrorDetail:Ljava/lang/String;

    iput-object p4, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->val$strSession:Ljava/lang/String;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;);
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    new-instance v0, Ljava/io/OutputStreamWriter;

    #v0=(UninitRef,Ljava/io/OutputStreamWriter;);
    const-string v1, "UTF-8"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 607
    .local v0, writer:Ljava/io/OutputStreamWriter;
    #v0=(Reference,Ljava/io/OutputStreamWriter;);
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 608
    const-string v1, "<envelope>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 609
    const-string v1, "<HDCPError>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->val$ErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 611
    const-string v1, "</HDCPError>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 612
    const-string v1, "<HDCPErrorDetail>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->val$ErrorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 614
    const-string v1, "</HDCPErrorDetail>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 615
    const-string v1, "<session>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/HTTPPostServer$HttpServerHandler$1;->val$strSession:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 617
    const-string v1, "</session>"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 619
    return-void
.end method
