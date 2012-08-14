.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Numpad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

.field private final synthetic val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 150
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    invoke-direct {v0, p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$3$1;);
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method
