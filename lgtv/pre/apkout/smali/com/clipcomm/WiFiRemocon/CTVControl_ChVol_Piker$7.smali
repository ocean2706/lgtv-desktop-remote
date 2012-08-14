.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Piker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker;->m_vBtnMenu:Landroid/widget/ImageButton;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Piker$7$1;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method
