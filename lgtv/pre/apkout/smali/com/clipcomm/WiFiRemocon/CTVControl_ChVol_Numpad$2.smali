.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Numpad.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;);
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    return v0

    .line 123
    :pswitch_0
    #v0=(Integer);v1=(Uninit);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    invoke-direct {v0, p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2;Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$2$1;);
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
