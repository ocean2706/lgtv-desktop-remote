.class Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;
.super Ljava/lang/Object;
.source "CDeviceSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 230
    #v7=(One);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iget-boolean v5, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bTryToConneting:Z

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 277
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 232
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v5, v5, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v5=(Boolean);
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundTap()V

    .line 233
    :cond_2
    #v5=(Conflicted);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    const-class v6, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v6=(Reference,Ljava/lang/Class;);
    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    const-string v5, "isReconnectMode"

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$1(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Z

    move-result v6

    #v6=(Boolean);
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$2(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 236
    .local v3, nIndex:I
    #v3=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-eq v3, v5, :cond_0

    .line 238
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v6=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$3(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iput-object v5, v6, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 239
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 240
    .local v2, myResource:Landroid/content/res/Resources;
    #v2=(Reference,Landroid/content/res/Resources;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f060014

    #v6=(Integer);
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, strMsg:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {v5, v6}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->isDemoTVItem(Lcom/clipcomm/WiFiRemocon/TVInfo;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 243
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v5, v7}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDemoTVMode(Z)V

    .line 249
    :goto_1
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    .line 251
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iput-boolean v7, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bTryToConneting:Z

    .line 252
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$4(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v5, v6, v4}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 253
    const-wide/16 v5, 0x320

    :try_start_0
    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_2
    #v5=(Conflicted);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    const-string v6, "200"

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_strAuthSessionResult:Ljava/lang/String;

    .line 255
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$5(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$6(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 247
    :cond_3
    #v5=(Boolean);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v5

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v6}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDemoTVMode(Z)V

    goto :goto_1

    .line 259
    :cond_4
    #v5=(Boolean);v6=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iget-object v5, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->getCursorFromMACAddr(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 260
    .local v0, cursorDBTVInfo:Landroid/database/Cursor;
    #v0=(Reference,Landroid/database/Cursor;);
    if-eqz v0, :cond_5

    .line 262
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iput-boolean v7, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bTryToConneting:Z

    .line 263
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$4(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v5, v6, v4}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v5, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    iput-object v6, v5, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 265
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    iget-object v6, v6, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/AuthRequest;->requestAuthSession(Lcom/clipcomm/WiFiRemocon/TVInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_strAuthSessionResult:Ljava/lang/String;

    .line 266
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$5(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$6(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 271
    :cond_5
    const-string v5, "set_default_tv"

    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v6}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$7(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    #v6=(Boolean);
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const-string v6, "TVInfo"

    #v6=(Reference,Ljava/lang/String;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v5}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$3(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-virtual {v5, v1, v7}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 253
    .end local v0           #cursorDBTVInfo:Landroid/database/Cursor;
    :catch_0
    #v0=(Uninit);v5=(LongLo);v6=(LongHi);
    move-exception v5

    #v5=(Reference,Ljava/lang/InterruptedException;);
    goto/16 :goto_2
.end method
