.class Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;
.super Landroid/telephony/PhoneStateListener;
.source "CTVControl_RootUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    .line 63
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;);
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 67
    packed-switch p1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 71
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_bIsOnMuteState:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_bIsOnMuteState:Z

    .line 74
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isAutoMuteMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    const-string v1, "ringon"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestCallStateChanged(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_2
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_bIsOnMuteState:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_bIsOnMuteState:Z

    .line 88
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isAutoMuteMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    const-string v1, "ringoff"

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestCallStateChanged(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
