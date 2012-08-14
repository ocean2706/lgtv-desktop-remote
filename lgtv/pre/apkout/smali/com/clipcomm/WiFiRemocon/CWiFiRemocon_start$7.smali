.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;
.super Ljava/lang/Object;
.source "CWiFiRemocon_start.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->StartWiFiRemocon()V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    const-class v2, Lcom/clipcomm/WiFiRemocon/Cintro;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v1, v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->startActivity(Landroid/content/Intent;)V

    .line 221
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$7;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->finish()V

    .line 222
    return-void
.end method
