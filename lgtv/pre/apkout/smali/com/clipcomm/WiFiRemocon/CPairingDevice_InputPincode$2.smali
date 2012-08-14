.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;
.super Ljava/lang/Object;
.source "CPairingDevice_InputPincode.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;);
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 112
    const/4 v0, 0x6

    #v0=(PosByte);
    if-ne p2, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->OnPincodeInputDone()Z

    move-result v0

    .line 116
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
