.class public Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;
.super Landroid/app/Activity;
.source "CTVControl_ChVol_Numpad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;
    }
.end annotation


# static fields
.field static final DEF_BUTTON_ARRAY_NUM:I = 0xe


# instance fields
.field m_btnArray:[Landroid/widget/Button;

.field m_vVibrate:Landroid/os/Vibrator;

.field tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v1, 0xe

    .line 18
    #v1=(PosByte);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;);
    new-array v0, v1, [Landroid/widget/Button;

    #v0=(Reference,[Landroid/widget/Button;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->m_btnArray:[Landroid/widget/Button;

    .line 82
    new-array v0, v1, [Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    const/4 v1, 0x0

    .line 83
    #v1=(Null);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080040

    #v3=(Integer);
    const v4, 0x7f060072

    #v4=(Integer);
    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 84
    #v1=(One);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080036

    const v4, 0x7f060073

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 85
    #v1=(PosByte);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080037

    const v4, 0x7f060074

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 13
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080038

    const v4, 0x7f060075

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 87
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080039

    const v4, 0x7f060076

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 88
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f08003a

    const v4, 0x7f060077

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 89
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f08003b

    const v4, 0x7f060078

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 90
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f08003c

    const v4, 0x7f060079

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 91
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f08003d

    const v4, 0x7f06007a

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 92
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f08003e

    const v4, 0x7f06007b

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 93
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f08003f

    const v4, 0x7f06007e

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 94
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080041

    const v4, 0x7f06007f

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 95
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080042

    const v4, 0x7f060080

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 96
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    const v3, 0x7f080043

    const v4, 0x7f060081

    invoke-direct {v2, p0, v3, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f060039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    const v1, 0x7f06003b

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$1;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    const v1, 0x7f06003c

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v3, 0x7f03000f

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->setContentView(I)V

    .line 108
    const-string v3, "vibrator"

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->m_vVibrate:Landroid/os/Vibrator;

    .line 110
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v4=(Conflicted);
    const/16 v3, 0xe

    #v3=(PosByte);
    if-lt v2, v3, :cond_0

    .line 162
    return-void

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->m_btnArray:[Landroid/widget/Button;

    #v4=(Reference,[Landroid/widget/Button;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v3=(Reference,[Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    aget-object v3, v3, v2

    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;->m_nID:I

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference,Landroid/view/View;);
    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v2

    .line 113
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->m_btnArray:[Landroid/widget/Button;

    aget-object v0, v3, v2

    .line 114
    .local v0, btn:Landroid/widget/Button;
    #v0=(Reference,Landroid/widget/Button;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->tblBtnInfo:[Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    aget-object v1, v3, v2

    .line 115
    .local v1, btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;);
    invoke-direct {v3, p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;);
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;);
    invoke-direct {v3, p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;);
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public procBackPressed()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 78
    return-void
.end method
