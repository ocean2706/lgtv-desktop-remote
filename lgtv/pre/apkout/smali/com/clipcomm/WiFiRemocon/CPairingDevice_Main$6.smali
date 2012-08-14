.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->setResult(ILandroid/content/Intent;)V

    .line 296
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$6;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->finish()V

    .line 297
    return-void
.end method
