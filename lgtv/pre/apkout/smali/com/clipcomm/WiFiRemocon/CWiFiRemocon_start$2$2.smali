.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;
.super Ljava/lang/Object;
.source "CWiFiRemocon_start.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->finish()V

    .line 301
    return-void
.end method
