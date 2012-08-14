.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 287
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v1

    const-class v2, Lcom/clipcomm/WiFiRemocon/Cintro;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->startActivity(Landroid/content/Intent;)V

    .line 290
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;

    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->finish()V

    .line 291
    return-void
.end method
