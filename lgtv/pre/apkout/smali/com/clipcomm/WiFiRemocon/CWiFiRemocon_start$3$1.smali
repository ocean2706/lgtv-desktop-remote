.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;
.super Ljava/lang/Object;
.source "CWiFiRemocon_start.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 346
    new-instance v1, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v2

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$1(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>(Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 347
    .local v1, newTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v2

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;);
    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v3

    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$1(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->removeTVInfoFromMACAddr(Ljava/lang/String;)Z

    .line 348
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 349
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v2

    const-class v3, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v2, "set_default_tv"

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    const-string v2, "TVInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->startActivity(Landroid/content/Intent;)V

    .line 353
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->finish()V

    .line 354
    return-void
.end method
