.class public Lcom/clipcomm/WiFiRemocon/CTVControl_Button;
.super Landroid/app/TabActivity;
.source "CTVControl_Button.java"


# static fields
.field static m_mControlTab:Landroid/widget/TabHost;


# instance fields
.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_mTabWidget:Landroid/widget/TabWidget;

.field m_vVibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button;);
    return-void
.end method

.method public static GetCurTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v7, "vibrator"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v7}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_vVibrate:Landroid/os/Vibrator;

    .line 52
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    sput-object v7, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    .line 53
    sget-object v7, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    new-instance v8, Lcom/clipcomm/WiFiRemocon/CTVControl_Button$1;

    #v8=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button$1;);
    invoke-direct {v8, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button;)V

    #v8=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button$1;);
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 69
    sget-object v7, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    iput-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    .line 74
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030008

    #v8=(Integer);
    sget-object v9, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    #v9=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {v9}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v9

    const/4 v10, 0x1

    #v10=(One);
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    sget-object v7, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    sget-object v8, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    #v8=(Reference,Landroid/widget/TabHost;);
    const-string v9, "Navi"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 77
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    #v10=(Reference,Landroid/content/res/Resources;);
    const v11, 0x7f020033

    #v11=(Integer);
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 78
    new-instance v9, Landroid/content/Intent;

    #v9=(UninitRef,Landroid/content/Intent;);
    const-class v10, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v9=(Reference,Landroid/content/Intent;);
    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 76
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    sget-object v7, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    sget-object v8, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    const-string v9, "MM"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 80
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020034

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 81
    new-instance v9, Landroid/content/Intent;

    #v9=(UninitRef,Landroid/content/Intent;);
    const-class v10, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #v9=(Reference,Landroid/content/Intent;);
    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 79
    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 84
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v7

    #v7=(Integer);
    if-lt v1, v7, :cond_0

    .line 147
    sget-object v7, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mControlTab:Landroid/widget/TabHost;

    #v7=(Reference,Landroid/widget/TabHost;);
    invoke-virtual {p0, v7}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->registerForContextMenu(Landroid/view/View;)V

    .line 148
    return-void

    .line 87
    :cond_0
    #v7=(Integer);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x1020006

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/ImageView;

    .line 88
    .local v2, iv:Landroid/widget/ImageView;
    new-instance v5, Landroid/util/DisplayMetrics;

    #v5=(UninitRef,Landroid/util/DisplayMetrics;);
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 89
    .local v5, outMetrics:Landroid/util/DisplayMetrics;
    #v5=(Reference,Landroid/util/DisplayMetrics;);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v7, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    iget v7, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    #v7=(Integer);
    sparse-switch v7, :sswitch_data_0

    .line 112
    :goto_1
    #v7=(Conflicted);v8=(PosByte);
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    #v7=(Reference,Ljava/lang/String;);
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    #v7=(Integer);
    const/4 v8, 0x7

    if-gt v7, v8, :cond_3

    .line 116
    :try_start_0
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mBottomLeftStrip"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 117
    .local v3, mBottomLeftStrip:Ljava/lang/reflect/Field;
    #v3=(Reference,Ljava/lang/reflect/Field;);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mBottomRightStrip"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 118
    .local v4, mBottomRightStrip:Ljava/lang/reflect/Field;
    #v4=(Reference,Ljava/lang/reflect/Field;);
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 120
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    :cond_1
    #v7=(Boolean);
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_2

    .line 124
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    :cond_2
    #v7=(Boolean);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02009a

    #v9=(Integer);
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02009b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v3           #mBottomLeftStrip:Ljava/lang/reflect/Field;
    .end local v4           #mBottomRightStrip:Ljava/lang/reflect/Field;
    :goto_2
    #v3=(Conflicted);v4=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 145
    .local v6, vvv:Landroid/view/View;
    #v6=(Reference,Landroid/view/View;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009d

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 94
    .end local v6           #vvv:Landroid/view/View;
    :sswitch_0
    #v6=(Conflicted);v7=(Integer);v8=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x4

    #v8=(PosByte);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 95
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/16 v8, 0x40

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 98
    :sswitch_1
    #v7=(Integer);v8=(Null);v9=(Conflicted);v10=(Reference,Ljava/lang/Class;);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 99
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/16 v8, 0x20

    #v8=(PosByte);
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 102
    :sswitch_2
    #v7=(Integer);v8=(Null);v9=(Conflicted);v10=(Reference,Ljava/lang/Class;);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 103
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/16 v8, 0x10

    #v8=(PosByte);
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 130
    :catch_0
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Reference,Ljava/lang/Class;);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    move-object v0, v7

    .line 132
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    #v0=(Conflicted);v7=(Integer);v8=(PosByte);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    #v7=(Reference,Landroid/widget/TabWidget;);
    const/4 v8, 0x1

    #v8=(One);
    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 140
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    const v8, 0x7f02009a

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setLeftStripDrawable(I)V

    .line 141
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button;->m_mTabWidget:Landroid/widget/TabWidget;

    const v8, 0x7f02009b

    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setRightStripDrawable(I)V

    goto :goto_2

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method
