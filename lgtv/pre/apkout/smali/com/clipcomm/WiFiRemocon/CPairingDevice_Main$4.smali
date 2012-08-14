.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;
.super Ljava/lang/Object;
.source "CPairingDevice_Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 195
    #v8=(Null);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$3(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    #v5=(Integer);
    if-lez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$3(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    #v5=(Integer);
    sparse-switch v5, :sswitch_data_0

    .line 245
    :cond_0
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    new-instance v4, Ljava/lang/Thread;

    #v4=(UninitRef,Ljava/lang/Thread;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$8(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 246
    .local v4, thread:Ljava/lang/Thread;
    #v4=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 247
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    iget-object v5, v5, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 248
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_1
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 201
    :sswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Uninit);v7=(Uninit);
    invoke-static {v8}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->sendBroadcastByeBye(Z)V

    .line 202
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v5, v8}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$4(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;Z)V

    .line 203
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v6=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setTargetTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 204
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->getSession()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6, v7}, Lcom/clipcomm/WiFiRemocon/LifeTime;->Start(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    const-class v6, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetIntentContextUIState(Landroid/content/Intent;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-virtual {v5, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$6(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clipcomm/WiFiRemocon/TVInfo;->SetAuthKey(Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-static {v7}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->insertTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    iput-wide v6, v5, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 211
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$7(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 213
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v6=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v7}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    .line 215
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v2, result:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    const/4 v6, -0x1

    #v6=(Byte);
    invoke-virtual {v5, v6, v2}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->setResult(ILandroid/content/Intent;)V

    .line 217
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->finish()V

    goto/16 :goto_1

    .line 223
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #result:Landroid/content/Intent;
    :sswitch_1
    #v0=(Uninit);v2=(Uninit);v5=(Integer);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    const-string v6, "vibrator"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Landroid/os/Vibrator;

    .line 224
    .local v1, m_vVibrate:Landroid/os/Vibrator;
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060016

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference,[Ljava/lang/Object;);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v7}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$5(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, strText:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    new-instance v5, Landroid/app/AlertDialog$Builder;

    #v5=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    #v5=(Reference,Landroid/app/AlertDialog$Builder;);
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-virtual {v6}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060015

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 227
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 228
    const v6, 0x108009b

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 230
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v6=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-virtual {v6}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    new-instance v7, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4$1;

    #v7=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4$1;);
    invoke-direct {v7, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4$1;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4;)V

    .line 229
    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$4$1;);
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 236
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    iget-boolean v5, v5, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v5=(Boolean);
    if-eqz v5, :cond_3

    sget v5, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_SOFT:I

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v1, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 238
    :cond_3
    #v5=(Conflicted);v6=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v5, v5, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundPopup()V

    goto/16 :goto_0

    .line 197
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);p0=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method
