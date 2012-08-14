.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;
.super Landroid/content/BroadcastReceiver;
.source "CWiFiRemocon_start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 137
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, action:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 145
    const-string v2, "wifi_state"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x4

    #v3=(PosByte);
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 148
    :pswitch_0
    #v1=(Uninit);v2=(Integer);v3=(PosByte);v4=(Uninit);v5=(Uninit);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$3(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    const-wide/16 v4, 0x1f40

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$3(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 153
    :cond_1
    #v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const-string v2, "android.net.wifi.STATE_CHANGE"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 155
    const-string v2, "networkInfo"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference,Landroid/os/Parcelable;);
    check-cast v1, Landroid/net/NetworkInfo;

    .line 156
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$5;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$3(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 145
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
