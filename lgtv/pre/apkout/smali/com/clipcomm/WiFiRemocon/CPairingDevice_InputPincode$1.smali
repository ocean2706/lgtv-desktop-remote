.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;
.super Ljava/lang/Object;
.source "CPairingDevice_InputPincode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->OnPincodeInputDone()Z

    .line 80
    return-void
.end method
