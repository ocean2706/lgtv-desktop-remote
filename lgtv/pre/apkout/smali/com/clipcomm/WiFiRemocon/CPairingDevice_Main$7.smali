.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;
.super Ljava/lang/Object;
.source "CPairingDevice_Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 306
    #v3=(Null);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    const-class v2, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v0, v2}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$7;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-virtual {v1, v3, v3}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->overridePendingTransition(II)V

    .line 309
    return-void
.end method
