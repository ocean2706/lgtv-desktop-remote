.class public Lcom/clipcomm/WiFiRemocon/CMainMenu;
.super Ljava/lang/Object;
.source "CMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;
    }
.end annotation


# static fields
.field public static final DEF_MENU_NUM_NORMAL_MODE:I = 0x2

.field public static final MENU_DELETE:I = 0x4

.field public static final MENU_RENAME:I = 0x5

.field public static final MENU_SETTINGS_NORMAL:I = 0x2

.field public static final MENU_SETTINGS_ON_SEARCH_TV_UI:I = 0x6

.field public static final MENU_TVOFF:I = 0x3


# instance fields
.field m_vMenuContext:Landroid/view/Menu;

.field tblMainMenu:[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;


# direct methods
.method constructor <init>(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    .line 23
    #v5=(PosByte);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    new-array v0, v5, [Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    const/4 v1, 0x0

    .line 59
    #v1=(Null);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    const v3, 0x7f060044

    #v3=(Integer);
    const v4, 0x7f02005b

    #v4=(Integer);
    invoke-direct {v2, p0, v5, v3, v4}, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CMainMenu;III)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 60
    #v1=(One);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    const/4 v3, 0x3

    #v3=(PosByte);
    const v4, 0x7f060045

    const v5, 0x7f02005d

    #v5=(Integer);
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CMainMenu;III)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->tblMainMenu:[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    .line 25
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->m_vMenuContext:Landroid/view/Menu;

    .line 26
    return-void
.end method


# virtual methods
.method public ClearMenu()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->m_vMenuContext:Landroid/view/Menu;

    #v0=(Reference,Landroid/view/Menu;);
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 104
    return-void
.end method

.method public SetMainMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v5, 0x0

    .line 68
    #v5=(Null);
    new-array v0, v6, [Landroid/view/MenuItem;

    .line 69
    .local v0, Item:[Landroid/view/MenuItem;
    #v0=(Reference,[Landroid/view/MenuItem;);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    if-lt v1, v6, :cond_0

    .line 78
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->m_vMenuContext:Landroid/view/Menu;

    #v2=(Reference,Landroid/view/Menu;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->tblMainMenu:[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    #v3=(Reference,[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    aget-object v3, v3, v1

    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nID:I

    #v3=(Integer);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->tblMainMenu:[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    #v4=(Reference,[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    aget-object v4, v4, v1

    iget v4, v4, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nTextResID:I

    #v4=(Integer);
    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    aget-object v2, v0, v1

    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 73
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->tblMainMenu:[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nIconResID:I

    #v2=(Integer);
    if-eqz v2, :cond_1

    .line 75
    aget-object v2, v0, v1

    #v2=(Reference,Landroid/view/MenuItem;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->tblMainMenu:[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;

    #v3=(Reference,[Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    aget-object v3, v3, v1

    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nIconResID:I

    #v3=(Integer);
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 69
    :cond_1
    #v2=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public SetMainMenuForSearchTVUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    #v4=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->m_vMenuContext:Landroid/view/Menu;

    #v1=(Reference,Landroid/view/Menu;);
    const/4 v2, 0x6

    #v2=(PosByte);
    const v3, 0x7f060044

    #v3=(Integer);
    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    .local v0, Item:Landroid/view/MenuItem;
    #v0=(Reference,Landroid/view/MenuItem;);
    const/4 v1, 0x1

    #v1=(One);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 114
    const v1, 0x7f02005b

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    return-void
.end method

.method public SetMainMenuForSelectCH()V
    .locals 9

    .prologue
    const/4 v4, 0x3

    #v4=(PosByte);
    const/4 v8, 0x2

    #v8=(PosByte);
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 86
    #v6=(Null);
    new-array v2, v8, [[I

    .line 87
    #v2=(Reference,[[I);
    new-array v3, v4, [I

    #v3=(Reference,[I);
    fill-array-data v3, :array_0

    aput-object v3, v2, v6

    .line 88
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v7

    .line 90
    .local v2, tblMenu:[[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);v4=(Integer);v5=(Conflicted);
    if-lt v1, v8, :cond_0

    .line 96
    return-void

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu;->m_vMenuContext:Landroid/view/Menu;

    #v3=(Reference,Landroid/view/Menu;);
    aget-object v4, v2, v1

    #v4=(Reference,[I);
    aget v4, v4, v6

    #v4=(Integer);
    aget-object v5, v2, v1

    #v5=(Reference,[I);
    aget v5, v5, v7

    #v5=(Integer);
    invoke-interface {v3, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    .local v0, Item:Landroid/view/MenuItem;
    #v0=(Reference,Landroid/view/MenuItem;);
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 94
    aget-object v3, v2, v1

    aget v3, v3, v8

    #v3=(Integer);
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);p0=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x6t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 88
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x6t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;)Z
    .locals 4
    .parameter "item"
    .parameter "cxtFrom"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 195
    #v2=(Null);
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    .line 211
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Integer);
    return v1

    .line 197
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);
    const/4 v0, 0x0

    .line 199
    .local v0, intent:Landroid/content/Intent;
    #v0=(Null);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 211
    #v1=(Null);
    goto :goto_0

    .line 203
    :pswitch_1
    #v1=(Integer);
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    #v0=(UninitRef,Landroid/content/Intent;);
    const-class v1, Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v1=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "mode"

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 206
    #v1=(One);
    goto :goto_0

    .line 208
    :pswitch_2
    #v0=(Null);v1=(Integer);v2=(Null);
    invoke-virtual {p0, p2}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onTurnoffTV(Landroid/app/Activity;)V

    move v1, v3

    .line 209
    #v1=(One);
    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected_2depth(Landroid/view/MenuItem;Landroid/app/Activity;)Z
    .locals 4
    .parameter "item"
    .parameter "cxtFrom"

    .prologue
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 126
    #v2=(Null);
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v2

    .line 142
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Integer);
    return v1

    .line 130
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 142
    #v1=(Null);
    goto :goto_0

    .line 134
    :pswitch_1
    #v1=(Integer);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-class v1, Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v1=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "mode"

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 137
    #v1=(One);
    goto :goto_0

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    #v0=(Uninit);v1=(Integer);v2=(Null);
    invoke-virtual {p0, p2}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onTurnoffTV(Landroid/app/Activity;)V

    move v1, v3

    .line 140
    #v1=(One);
    goto :goto_0

    .line 130
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTurnoffTV(Landroid/app/Activity;)V
    .locals 3
    .parameter "cxtFrom"

    .prologue
    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f06003d

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    const v1, 0x7f06003f

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CMainMenu$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu$1;);
    invoke-direct {v2, p0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu$1;-><init>(Lcom/clipcomm/WiFiRemocon/CMainMenu;Landroid/app/Activity;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    const v1, 0x7f060040

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 165
    return-void
.end method

.method public procTurnoffTV(Landroid/app/Activity;)V
    .locals 4
    .parameter "cxtFrom"

    .prologue
    .line 174
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 175
    .local v0, mHandler:Landroid/os/Handler;
    #v0=(Reference,Landroid/os/Handler;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CMainMenu$2;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu$2;);
    invoke-direct {v1, p0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu$2;-><init>(Lcom/clipcomm/WiFiRemocon/CMainMenu;Landroid/app/Activity;)V

    .line 183
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$2;);
    const-wide/16 v2, 0xa

    .line 175
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method
