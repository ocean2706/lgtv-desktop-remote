.class public Lcom/clipcomm/WiFiRemocon/CDeviceSearch;
.super Landroid/app/Activity;
.source "CDeviceSearch.java"


# static fields
.field static final DEF_DEMO_TV_MAC:Ljava/lang/String; = "DEMODEMODEMO"

.field static final PAIRING_DEVICE:I = 0x1


# instance fields
.field private doListUpdate:Ljava/lang/Runnable;

.field private doResponseReqAuthSession:Ljava/lang/Runnable;

.field private doSearchDevice:Ljava/lang/Runnable;

.field mClickConnectTVListener:Landroid/view/View$OnClickListener;

.field mClickRescanTVListener:Landroid/view/View$OnClickListener;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private m_aaAdapter:Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;

.field private m_arDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/TVInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_bReconnectMode:Z

.field m_bTryToConneting:Z

.field m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

.field private m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

.field private m_hReqAuthSession:Landroid/os/Handler;

.field private m_hThreadHandler:Landroid/os/Handler;

.field private m_lock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private m_mgrHDCP:Lcom/clipcomm/WiFiRemocon/HDCPMgr;

.field private m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

.field private m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

.field m_strAuthSessionResult:Ljava/lang/String;

.field private m_vButtonConnectTV:Landroid/widget/Button;

.field private m_vButtonRescanTV:Landroid/widget/Button;

.field private m_vChkboxDefaultTV:Landroid/widget/CheckBox;

.field private m_vDeviceList:Landroid/widget/ListView;

.field private m_vImageRescan:Landroid/widget/ImageView;

.field private m_vTextMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v1, 0x0

    .line 25
    #v1=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 58
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 76
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    .line 79
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_hThreadHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_hReqAuthSession:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doSearchDevice:Ljava/lang/Runnable;

    .line 222
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bTryToConneting:Z

    .line 225
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$2;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->mClickConnectTVListener:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doResponseReqAuthSession:Ljava/lang/Runnable;

    .line 350
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->mClickRescanTVListener:Landroid/view/View$OnClickListener;

    .line 366
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$5;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$5;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$5;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$5;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 377
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$6;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$6;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$6;-><init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$6;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doListUpdate:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method private ListUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 456
    #v3=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_aaAdapter:Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->notifyDataSetChanged()V

    .line 457
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 458
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_aaAdapter:Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getTargetTVInfo()Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->getItemPosFromMAC(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, nPos:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonRescanTV:Landroid/widget/Button;

    #v1=(Reference,Landroid/widget/Button;);
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    .end local v0           #nPos:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    #v1=(Reference,Landroid/widget/ListView;);
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_1

    .line 473
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isShowDemoTV()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    #v1=(Reference,Landroid/widget/ListView;);
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    #v1=(Integer);
    if-ne v1, v4, :cond_3

    .line 475
    :cond_1
    iget-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vTextMsg:Landroid/widget/TextView;

    #v1=(Reference,Landroid/widget/TextView;);
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isShowDemoTV()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_5

    .line 480
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vImageRescan:Landroid/widget/ImageView;

    #v1=(Reference,Landroid/widget/ImageView;);
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    :cond_2
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonRescanTV:Landroid/widget/Button;

    #v1=(Reference,Landroid/widget/Button;);
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    :cond_3
    #v1=(Conflicted);
    return-void

    .line 468
    .restart local v0       #nPos:I
    :cond_4
    #v0=(Integer);v1=(Byte);v2=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    #v1=(Reference,Landroid/widget/ListView;);
    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 469
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->SelectItem(I)V

    goto :goto_0

    .line 484
    .end local v0           #nPos:I
    :cond_5
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vImageRescan:Landroid/widget/ImageView;

    #v1=(Reference,Landroid/widget/ImageView;);
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private SearchDevice()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 190
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_mgrHDCP:Lcom/clipcomm/WiFiRemocon/HDCPMgr;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-virtual {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/HDCPMgr;->FindTV(Ljava/util/ArrayList;Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;)V

    .line 191
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 193
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isShowDemoTV()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>()V

    .line 196
    .local v0, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference,Landroid/content/res/Resources;);
    const v2, 0x7f06000d

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 198
    const-string v1, "0.0.0.0"

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 199
    const-string v1, "8080"

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 200
    const-string v1, "DEMODEMODEMO"

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0           #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_hThreadHandler:Landroid/os/Handler;

    #v1=(Reference,Landroid/os/Handler;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doListUpdate:Ljava/lang/Runnable;

    #v2=(Reference,Ljava/lang/Runnable;);
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->SearchDevice()V

    return-void
.end method

.method static synthetic access$1(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$10(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonRescanTV:Landroid/widget/Button;

    #v0=(Reference,Landroid/widget/Button;);
    return-object v0
.end method

.method static synthetic access$11(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    return-object v0
.end method

.method static synthetic access$12(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doSearchDevice:Ljava/lang/Runnable;

    #v0=(Reference,Ljava/lang/Runnable;);
    return-object v0
.end method

.method static synthetic access$13(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->ListUpdate()V

    return-void
.end method

.method static synthetic access$2(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    #v0=(Reference,Landroid/widget/ListView;);
    return-object v0
.end method

.method static synthetic access$3(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    return-object v0
.end method

.method static synthetic access$4(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    return-object v0
.end method

.method static synthetic access$5(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_hReqAuthSession:Landroid/os/Handler;

    #v0=(Reference,Landroid/os/Handler;);
    return-object v0
.end method

.method static synthetic access$6(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doResponseReqAuthSession:Ljava/lang/Runnable;

    #v0=(Reference,Ljava/lang/Runnable;);
    return-object v0
.end method

.method static synthetic access$7(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    #v0=(Reference,Landroid/widget/CheckBox;);
    return-object v0
.end method

.method static synthetic access$8(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vTextMsg:Landroid/widget/TextView;

    #v0=(Reference,Landroid/widget/TextView;);
    return-object v0
.end method

.method static synthetic access$9(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vImageRescan:Landroid/widget/ImageView;

    #v0=(Reference,Landroid/widget/ImageView;);
    return-object v0
.end method


# virtual methods
.method SelectItem(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 394
    #v3=(Null);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 395
    .local v1, GetSelectedTVMACAddr:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 396
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getTargetTVInfo()Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonConnectTV:Landroid/widget/Button;

    #v2=(Reference,Landroid/widget/Button;);
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->isDemoTVItem(Lcom/clipcomm/WiFiRemocon/TVInfo;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    #v2=(Reference,Landroid/widget/CheckBox;);
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 408
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getDefaultTV(Landroid/app/Activity;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v0

    .line 409
    .local v0, DefTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    #v2=(Reference,Landroid/widget/CheckBox;);
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    .end local v0           #DefTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :goto_1
    #v0=(Conflicted);
    return-void

    .line 402
    :cond_0
    #v0=(Uninit);v2=(Boolean);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonConnectTV:Landroid/widget/Button;

    #v2=(Reference,Landroid/widget/Button;);
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 415
    .restart local v0       #DefTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :cond_1
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);v2=(Conflicted);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    #v2=(Reference,Landroid/widget/CheckBox;);
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 420
    .end local v0           #DefTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :cond_2
    #v0=(Uninit);v2=(Boolean);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    #v2=(Reference,Landroid/widget/CheckBox;);
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method

.method isDemoTVItem(Lcom/clipcomm/WiFiRemocon/TVInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 214
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "DEMODEMODEMO"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 96
    packed-switch p2, :pswitch_data_0

    .line 102
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->finish()V

    goto :goto_0

    .line 96
    #p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 432
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 434
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 435
    .local v1, result:Landroid/content/Intent;
    #v1=(Reference,Landroid/content/Intent;);
    const-string v2, "DefaultTV"

    #v2=(Reference,Ljava/lang/String;);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    #v2=(Reference,Landroid/widget/ListView;);
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 439
    .local v0, nIndex:I
    #v0=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v0, v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 442
    const-string v2, "DefaultTV"

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    .end local v0           #nIndex:I
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2, v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->setResult(ILandroid/content/Intent;)V

    .line 447
    .end local v1           #result:Landroid/content/Intent;
    :cond_1
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 448
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 129
    #v6=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v3, 0x7f030002

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v3, "isReconnectMode"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #v3=(Boolean);
    iput-boolean v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_bReconnectMode:Z

    .line 135
    const v3, 0x7f080007

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vTextMsg:Landroid/widget/TextView;

    .line 136
    const v3, 0x7f080008

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vImageRescan:Landroid/widget/ImageView;

    .line 137
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;-><init>(Landroid/content/Context;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    .line 138
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->open()V

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #v3=(Reference,Ljava/util/ArrayList;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    .line 141
    new-instance v3, Lcom/clipcomm/WiFiRemocon/HDCPMgr;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/HDCPMgr;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/HDCPMgr;-><init>()V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/HDCPMgr;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_mgrHDCP:Lcom/clipcomm/WiFiRemocon/HDCPMgr;

    .line 142
    new-instance v3, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;);
    const v4, 0x7f030007

    #v4=(Integer);
    iget-object v5, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_arDeviceList:Ljava/util/ArrayList;

    #v5=(Reference,Ljava/util/ArrayList;);
    invoke-direct {v3, p0, v4, v5}, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_aaAdapter:Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;

    .line 143
    const v3, 0x7f080006

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    .line 144
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_aaAdapter:Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;);
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 146
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 147
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vDeviceList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #v4=(Reference,Landroid/widget/AdapterView$OnItemClickListener;);
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    const v3, 0x7f08000b

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonConnectTV:Landroid/widget/Button;

    .line 150
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonConnectTV:Landroid/widget/Button;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->mClickConnectTVListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v3, 0x7f080009

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonRescanTV:Landroid/widget/Button;

    .line 155
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vButtonRescanTV:Landroid/widget/Button;

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->mClickRescanTVListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v3, 0x7f08000a

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_vChkboxDefaultTV:Landroid/widget/CheckBox;

    .line 159
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference,Ljava/lang/Object;);
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 160
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v3, "multicastLock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_lock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 162
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;-><init>()V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 163
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-direct {v3}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;-><init>()V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 164
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    const v4, 0x7f060009

    #v4=(Integer);
    invoke-virtual {v3, p0, v4}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;I)V

    .line 167
    new-instance v1, Ljava/lang/Thread;

    #v1=(UninitRef,Ljava/lang/Thread;);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->doSearchDevice:Ljava/lang/Runnable;

    #v4=(Reference,Ljava/lang/Runnable;);
    const-string v5, "CDeviceSearch:SearchDevice"

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 168
    .local v1, thread:Ljava/lang/Thread;
    #v1=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 499
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-direct {v0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;-><init>(Landroid/view/Menu;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    .line 500
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->SetMainMenuForSearchTVUI()V

    .line 502
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->close()V

    .line 115
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForSearch:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->exit()V

    .line 118
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->exit()V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 511
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 512
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundTap()V

    .line 513
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-virtual {v0, p1, p0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
