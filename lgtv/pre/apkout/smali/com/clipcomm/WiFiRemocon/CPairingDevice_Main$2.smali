.class Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;
.super Ljava/lang/Object;
.source "CPairingDevice_Main.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main$2;->this$0:Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;->access$1(Lcom/clipcomm/WiFiRemocon/CPairingDevice_Main;)V

    .line 161
    return-void
.end method
