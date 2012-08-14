.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    :pswitch_0
    #v0=(Conflicted);
    return-void

    .line 119
    :pswitch_1
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 120
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->IsFirstRun()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->StartWiFiRemocon()V

    goto :goto_0

    .line 126
    :pswitch_2
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForWifiOn:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 127
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->IsFirstRun()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$4;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->StartWiFiRemocon()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
