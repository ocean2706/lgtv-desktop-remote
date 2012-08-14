.class Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;)Lcom/clipcomm/WiFiRemocon/CDeviceSearch;
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v6, -0x1

    #v6=(Byte);
    const/4 v5, 0x0

    .line 285
    #v5=(Null);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$4(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 286
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_strAuthSessionResult:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_strAuthSessionResult:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    sparse-switch v2, :sswitch_data_0

    .line 345
    :cond_0
    :goto_0
    :sswitch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iput-boolean v5, v2, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bTryToConneting:Z

    .line 346
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 291
    :sswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);v4=(Null);
    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->sendBroadcastByeBye(Z)V

    .line 292
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 294
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setTargetTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 295
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->getSession()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->Start(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, intent:Landroid/content/Intent;
    #v0=(Null);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    const-class v3, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetIntentContextUIState(Landroid/content/Intent;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->startActivity(Landroid/content/Intent;)V

    .line 301
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v1, result:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v2, v6, v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->setResult(ILandroid/content/Intent;)V

    .line 303
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$7(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 305
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v4, v4, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 307
    :cond_2
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->finish()V

    goto :goto_1

    .line 312
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #result:Landroid/content/Intent;
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Null);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setTargetTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 313
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/clipcomm/WiFiRemocon/LifeTime;->Start(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    const-class v3, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->startActivity(Landroid/content/Intent;)V

    .line 316
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v2, v5, v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->overridePendingTransition(II)V

    .line 317
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 318
    .restart local v1       #result:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v2, v6, v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->setResult(ILandroid/content/Intent;)V

    .line 319
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->finish()V

    goto/16 :goto_1

    .line 326
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #result:Landroid/content/Intent;
    :sswitch_2
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Uninit);
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #v2=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    #v2=(Reference,Landroid/app/AlertDialog$Builder;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060018

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 329
    const v3, 0x108009b

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    new-instance v4, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;

    #v4=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;);
    invoke-direct {v4, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;)V

    .line 330
    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;);
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x190 -> :sswitch_0
        0x191 -> :sswitch_2
    .end sparse-switch
.end method
