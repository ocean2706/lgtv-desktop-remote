.class Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;
.super Ljava/lang/Object;
.source "CDeviceSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CDeviceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$0(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    .line 179
    return-void
.end method
