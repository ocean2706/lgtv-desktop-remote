.class public Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;
.super Landroid/app/Activity;
.source "CTVControl_ChVol_MyCH.java"


# instance fields
.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

.field m_arMyChList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_bNeedToUpdate:Z

.field m_btnImportTVCh:Landroid/widget/Button;

.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

.field m_cursorDBMyChInfo:Landroid/database/Cursor;

.field m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

.field private m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

.field m_vBtnAddCh:Landroid/widget/Button;

.field m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

.field m_vVibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    #v0=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    .line 51
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    .line 442
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    return-object v0
.end method

.method static synthetic access$1(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->getFAVCH(Ljava/lang/String;)V

    return-void
.end method

.method private getFAVCH(Ljava/lang/String;)V
    .locals 4
    .parameter "strQueryValue"

    .prologue
    .line 267
    invoke-static {p1}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->GetFavoriteChannel(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 269
    .local v2, m_arFAVChList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/ChannelInfo;>;"
    #v2=(Reference,Ljava/util/ArrayList;);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v3=(Conflicted);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-lt v0, v3, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->updateMyChList()V

    .line 278
    return-void

    .line 271
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 272
    .local v1, info:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    invoke-virtual {v3, v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->isExistCH(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    invoke-virtual {v3, v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->insertChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)J

    .line 269
    :cond_1
    #v3=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateMyChList()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 416
    #v9=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v1=(Reference,Landroid/database/Cursor;);
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 417
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 419
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 424
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 425
    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v1=(Reference,Landroid/database/Cursor;);
    const/4 v2, 0x1

    #v2=(One);
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v2=(Reference,Landroid/database/Cursor;);
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v3=(Reference,Landroid/database/Cursor;);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v4=(Reference,Landroid/database/Cursor;);
    const/4 v5, 0x4

    #v5=(PosByte);
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 429
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v5=(Reference,Landroid/database/Cursor;);
    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 430
    iget-object v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v6=(Reference,Landroid/database/Cursor;);
    const/4 v7, 0x6

    #v7=(PosByte);
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 431
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v7=(Reference,Landroid/database/Cursor;);
    const/4 v8, 0x7

    #v8=(PosByte);
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-direct/range {v0 .. v7}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .local v0, info:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->SetDBIndex(I)V

    .line 433
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 435
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 421
    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 437
    .end local v0           #info:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CHListView;->clearChoices()V

    .line 438
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->notifyDataSetChanged()V

    .line 439
    return-void
.end method


# virtual methods
.method LoadMyChList()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    #v0=(Reference,Landroid/database/Cursor;);
    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->getAllMyChInfoCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    .line 384
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_cursorDBMyChInfo:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->startManagingCursor(Landroid/database/Cursor;)V

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->updateMyChList()V

    .line 387
    return-void
.end method

.method deleteCheckedItem()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    const/4 v0, -0x1

    #v0=(Byte);
    if-ne p2, v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->updateMyChList()V

    .line 129
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f060039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    const v1, 0x7f06003b

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    const v1, 0x7f06003c

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 84
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 321
    #v6=(One);
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    #v0=(Reference,Landroid/view/ContextMenu$ContextMenuInfo;);
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 322
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v3=(Reference,Ljava/util/ArrayList;);
    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 323
    .local v2, selChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 363
    :goto_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v6

    .line 327
    :pswitch_0
    #v1=(Uninit);v3=(Integer);v4=(Integer);v5=(Uninit);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    const-class v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    #v3=(Reference,Ljava/lang/Class;);
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    const-string v3, "cur_ch"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 329
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p0, v1, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->startActivityForResult(Landroid/content/Intent;I)V

    .line 330
    iput-boolean v6, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    goto :goto_0

    .line 335
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    #v1=(Uninit);v3=(Integer);
    new-instance v3, Landroid/app/AlertDialog$Builder;

    #v3=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getActivity()Landroid/app/ActivityGroup;

    move-result-object v4

    #v4=(Reference,Landroid/app/ActivityGroup;);
    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    #v3=(Reference,Landroid/app/AlertDialog$Builder;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060048

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 337
    const v4, 0x1080040

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 338
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 340
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 341
    new-instance v5, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;

    #v5=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;);
    invoke-direct {v5, p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V

    .line 339
    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;);
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 350
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004a

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    new-instance v5, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$6;

    #v5=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$6;);
    invoke-direct {v5, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$6;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V

    .line 349
    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$6;);
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 323
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_curChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 142
    const v0, 0x7f03000e

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->setContentView(I)V

    .line 144
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 146
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vVibrate:Landroid/os/Vibrator;

    .line 148
    const v0, 0x7f080032

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vBtnAddCh:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vBtnAddCh:Landroid/widget/Button;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$3;);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f080033

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_btnImportTVCh:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_btnImportTVCh:Landroid/widget/Button;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference,Ljava/util/ArrayList;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    const v1, 0x7f030006

    #v1=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-direct {v0, p0, v1, v2}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    .line 241
    const v0, 0x7f080034

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/CHListView;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    .line 242
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CHListView;->setChoiceMode(I)V

    .line 244
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #v1=(Reference,Landroid/widget/AdapterView$OnItemClickListener;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CHListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->registerForContextMenu(Landroid/view/View;)V

    .line 248
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    const-string v1, "demo_mychList.db"

    invoke-direct {v0, p0, v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->open()V

    .line 257
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->LoadMyChList()V

    .line 258
    return-void

    .line 254
    :cond_0
    #v0=(Boolean);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 298
    #v6=(Null);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    if-ne p2, v4, :cond_0

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/CHListView;->getCheckedItemNum()I

    move-result v4

    #v4=(Integer);
    if-nez v4, :cond_0

    .line 300
    move-object v0, p3

    #v0=(Reference,Landroid/view/ContextMenu$ContextMenuInfo;);
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 301
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    #v1=(Reference,Landroid/widget/AdapterView$AdapterContextMenuInfo;);
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 302
    .local v2, nIndex:I
    #v2=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-le v2, v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v4=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 305
    .local v3, selectedChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    if-eqz v3, :cond_0

    .line 307
    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 308
    const/4 v4, 0x2

    #v4=(PosByte);
    const v5, 0x7f060046

    #v5=(Integer);
    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    const/4 v4, 0x3

    const v5, 0x7f060047

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 313
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    .end local v2           #nIndex:I
    .end local v3           #selectedChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 470
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-direct {v0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;-><init>(Landroid/view/Menu;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    .line 471
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->SetMainMenuForSelectCH()V

    .line 473
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 474
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->close()V

    .line 101
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->exit()V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 515
    #v7=(One);
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    #v4=(Integer);
    packed-switch v4, :pswitch_data_0

    .line 544
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v7

    .line 520
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v4=(Reference,Ljava/util/ArrayList;);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    #v5=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    invoke-virtual {v5}, Lcom/clipcomm/WiFiRemocon/CHListView;->getFirstCheckedItem()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 521
    .local v3, selChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    const-class v4, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference,Landroid/content/Intent;);
    const-string v4, "cur_ch"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 523
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p0, v2, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    iput-boolean v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    goto :goto_0

    .line 529
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #selChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    :pswitch_1
    #v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Uninit);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #v0=(Conflicted);v1=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getCount()I

    move-result v4

    #v4=(Integer);
    if-lt v1, v4, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->updateMyChList()V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v4, v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getChecked(I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 533
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v4=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 534
    .local v0, delChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    if-eqz v0, :cond_1

    .line 536
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->GetDBIndex()I

    move-result v5

    #v5=(Integer);
    int-to-long v5, v5

    #v5=(LongLo);v6=(LongHi);
    invoke-virtual {v4, v5, v6}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->removeChInfo(J)Z

    .line 529
    .end local v0           #delChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    :cond_1
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x5

    #v5=(PosByte);
    const/4 v4, 0x4

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 485
    #v2=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_vMyChList:Lcom/clipcomm/WiFiRemocon/CHListView;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CHListView;->getCheckedItemNum()I

    move-result v1

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 500
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 501
    .local v0, item:Landroid/view/MenuItem;
    #v0=(Reference,Landroid/view/MenuItem;);
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 502
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 503
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 506
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    #v1=(Boolean);
    return v1

    .line 488
    .end local v0           #item:Landroid/view/MenuItem;
    :pswitch_0
    #v0=(Uninit);v1=(Integer);
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 489
    .restart local v0       #item:Landroid/view/MenuItem;
    #v0=(Reference,Landroid/view/MenuItem;);
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 490
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 491
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 494
    .end local v0           #item:Landroid/view/MenuItem;
    :pswitch_1
    #v0=(Uninit);
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 495
    .restart local v0       #item:Landroid/view/MenuItem;
    #v0=(Reference,Landroid/view/MenuItem;);
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 497
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 290
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_bNeedToUpdate:Z

    .line 115
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->updateMyChList()V

    .line 117
    :cond_0
    #v0=(Boolean);
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    return-void
.end method

.method public procBackPressed()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    return-void
.end method

.method removeChInfo(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 397
    .local v0, delChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_dbAdapter:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->GetDBIndex()I

    move-result v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->removeChInfo(J)Z

    .line 400
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->updateMyChList()V

    .line 402
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
