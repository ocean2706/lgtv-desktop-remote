.class public Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;
.super Landroid/app/Activity;
.source "CTVControl_Button_MM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;
    }
.end annotation


# static fields
.field static final DEF_BUTTON_ARRAY_NUM:I = 0xb


# instance fields
.field m_btnArray:[Landroid/widget/Button;

.field m_vVibrate:Landroid/os/Vibrator;

.field tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v1, 0xb

    .line 17
    #v1=(PosByte);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;);
    new-array v0, v1, [Landroid/widget/Button;

    #v0=(Reference,[Landroid/widget/Button;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->m_btnArray:[Landroid/widget/Button;

    .line 52
    new-array v0, v1, [Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    const/4 v1, 0x0

    .line 53
    #v1=(Null);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f08001d

    #v3=(Integer);
    const v4, 0x7f060093

    #v4=(Integer);
    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 55
    #v1=(One);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f08001e

    const v4, 0x7f060094

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 56
    #v1=(PosByte);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f08001f

    const v4, 0x7f060095

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 57
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080020

    const v4, 0x7f060096

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 58
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080021

    const v4, 0x7f060097

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 59
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080022

    const v4, 0x7f060098

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 60
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080023

    const v4, 0x7f060099

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 62
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080024

    const v4, 0x7f06008f

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 63
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080025

    const v4, 0x7f060090

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 64
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080026

    const v4, 0x7f060091

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 65
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    const v3, 0x7f080027

    const v4, 0x7f060092

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    .line 17
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f060039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 77
    const v1, 0x7f06003b

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    const v1, 0x7f06003c

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v3, 0x7f03000b

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->setContentView(I)V

    .line 105
    const-string v3, "vibrator"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->m_vVibrate:Landroid/os/Vibrator;

    .line 106
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v4=(Conflicted);
    const/16 v3, 0xb

    #v3=(PosByte);
    if-lt v2, v3, :cond_0

    .line 139
    return-void

    .line 108
    :cond_0
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->m_btnArray:[Landroid/widget/Button;

    #v4=(Reference,[Landroid/widget/Button;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v3=(Reference,[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    aget-object v3, v3, v2

    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;->m_nID:I

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v2

    .line 109
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->m_btnArray:[Landroid/widget/Button;

    aget-object v0, v3, v2

    .line 110
    .local v0, btn:Landroid/widget/Button;
    #v0=(Reference,Landroid/widget/Button;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    aget-object v1, v3, v2

    .line 111
    .local v1, btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$2;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$2;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$2;);
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;);
    invoke-direct {v3, p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;Landroid/widget/Button;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;);
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public procBackPressed()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 95
    return-void
.end method
