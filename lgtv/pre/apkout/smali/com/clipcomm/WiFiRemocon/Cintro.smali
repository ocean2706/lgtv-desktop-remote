.class public Lcom/clipcomm/WiFiRemocon/Cintro;
.super Landroid/app/Activity;
.source "Cintro.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Cintro;);
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f030003

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/Cintro;->setContentView(I)V

    .line 19
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/Cintro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, startBt:Landroid/widget/Button;
    new-instance v1, Lcom/clipcomm/WiFiRemocon/Cintro$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/Cintro$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/Cintro$1;-><init>(Lcom/clipcomm/WiFiRemocon/Cintro;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/Cintro$1;);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
