.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;
.super Ljava/lang/Object;
.source "CPairingDevice_InputPincode.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;);
    return-void
.end method


# virtual methods
.method public onHideSoftkeyEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    #v2=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v2, v1}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->setResult(ILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->finish()V

    .line 59
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    invoke-virtual {v0, v2, v2}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->overridePendingTransition(II)V

    .line 60
    return-void
.end method
