.class public Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;
.super Landroid/app/Activity;
.source "CTVControl_ChVol_Piker.java"


# instance fields
.field m_vBtnMenu:Landroid/widget/ImageButton;

.field m_vBtnMute:Landroid/widget/ImageButton;

.field m_vPikeLineVol:[Landroid/widget/ImageView;

.field m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

.field m_vPikerVolume:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

.field m_vVibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;);
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Landroid/widget/ImageView;

    #v0=(Reference,[Landroid/widget/ImageView;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikeLineVol:[Landroid/widget/ImageView;

    .line 20
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f060039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    const v1, 0x7f06003b

    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$1;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    const v1, 0x7f06003c

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030010

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->setContentView(I)V

    .line 91
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikerVolume:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    .line 92
    const v0, 0x7f080047

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    .line 94
    const v0, 0x7f080049

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMute:Landroid/widget/ImageButton;

    .line 95
    const v0, 0x7f08004a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMenu:Landroid/widget/ImageButton;

    .line 96
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vVibrate:Landroid/os/Vibrator;

    .line 98
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikerVolume:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$2;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setOnWheelEventListener(Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;)V

    .line 136
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$3;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setOnWheelEventListener(Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;)V

    .line 170
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMute:Landroid/widget/ImageButton;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$4;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMenu:Landroid/widget/ImageButton;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$5;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMute:Landroid/widget/ImageButton;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$6;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$6;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$6;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$6;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMenu:Landroid/widget/ImageButton;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikerVolume:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->pause()V

    .line 49
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vPikerChannel:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->pause()V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method

.method public procBackPressed()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 80
    return-void
.end method
