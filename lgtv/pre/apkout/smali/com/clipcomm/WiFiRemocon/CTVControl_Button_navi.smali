.class public Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;
.super Landroid/app/Activity;
.source "CTVControl_Button_navi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;
    }
.end annotation


# static fields
.field static final DEF_BUTTON_ARRAY_NUM:I = 0x9


# instance fields
.field m_btnArray:[Landroid/widget/Button;

.field m_vNaviCur:Lcom/clipcomm/WiFiRemocon/NaviButtonView;

.field m_vVibrate:Landroid/os/Vibrator;

.field tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v1, 0x9

    .line 16
    #v1=(PosByte);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;);
    new-array v0, v1, [Landroid/widget/Button;

    #v0=(Reference,[Landroid/widget/Button;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_btnArray:[Landroid/widget/Button;

    .line 83
    new-array v0, v1, [Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    const/4 v1, 0x0

    .line 84
    #v1=(Null);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f080029

    #v3=(Integer);
    const v4, 0x7f06007d

    #v4=(Integer);
    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 85
    #v1=(One);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f08002a

    const v4, 0x7f06008e

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 86
    #v1=(PosByte);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f08002c

    const v4, 0x7f06008b

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 87
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f08002b

    const v4, 0x7f06008a

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 88
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f08002e

    const v4, 0x7f06008c

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 89
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f080024

    const v4, 0x7f06008f

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 90
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f080025

    const v4, 0x7f060090

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 91
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f080026

    const v4, 0x7f060091

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 92
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    const v3, 0x7f080027

    const v4, 0x7f060092

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f060039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    const v1, 0x7f06003b

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$1;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    const v1, 0x7f06003c

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v3, 0x7f03000c

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->setContentView(I)V

    .line 104
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Lcom/clipcomm/WiFiRemocon/NaviButtonView;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_vNaviCur:Lcom/clipcomm/WiFiRemocon/NaviButtonView;

    .line 105
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_vVibrate:Landroid/os/Vibrator;

    .line 107
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v4=(Conflicted);
    const/16 v3, 0x9

    #v3=(PosByte);
    if-lt v2, v3, :cond_0

    .line 153
    return-void

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_btnArray:[Landroid/widget/Button;

    #v4=(Reference,[Landroid/widget/Button;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v3=(Reference,[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    aget-object v3, v3, v2

    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;->m_nID:I

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v2

    .line 110
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_btnArray:[Landroid/widget/Button;

    aget-object v0, v3, v2

    .line 111
    .local v0, btn:Landroid/widget/Button;
    #v0=(Reference,Landroid/widget/Button;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    aget-object v1, v3, v2

    .line 112
    .local v1, btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;);
    invoke-direct {v3, p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;);
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;);
    invoke-direct {v3, p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;Landroid/widget/Button;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;);
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public procBackPressed()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 79
    return-void
.end method
