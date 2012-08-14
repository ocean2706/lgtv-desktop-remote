.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;
.super Ljava/lang/Object;
.source "CWiFiRemocon_start.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$1;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V

    .line 233
    return-void
.end method
