.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 312
    #v5=(Null);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 313
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$2(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$2(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    sparse-switch v2, :sswitch_data_0

    .line 362
    :cond_0
    :goto_0
    :sswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 319
    :sswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);v4=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$1(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setTargetTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 320
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$1(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->getSession()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->Start(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    const-class v3, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetIntentContextUIState(Landroid/content/Intent;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->startActivity(Landroid/content/Intent;)V

    .line 325
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v2, v5, v5}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->overridePendingTransition(II)V

    .line 326
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v1, result:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    const/4 v3, -0x1

    #v3=(Byte);
    invoke-virtual {v2, v3, v1}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->setResult(ILandroid/content/Intent;)V

    .line 328
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->finish()V

    goto :goto_0

    .line 336
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #result:Landroid/content/Intent;
    :sswitch_2
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);v4=(Uninit);
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    #v2=(Reference,Landroid/app/AlertDialog$Builder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060018

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 339
    const v3, 0x108009b

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    new-instance v4, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;

    #v4=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;);
    invoke-direct {v4, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3;)V

    .line 340
    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$3$1;);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 355
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 315
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x190 -> :sswitch_0
        0x191 -> :sswitch_2
    .end sparse-switch
.end method
