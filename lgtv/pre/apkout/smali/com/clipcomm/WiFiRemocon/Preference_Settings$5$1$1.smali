.class Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;
.super Ljava/lang/Object;
.source "Preference_Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;->this$2:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    new-instance v1, Landroid/os/Message;

    #v1=(UninitRef,Landroid/os/Message;);
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 268
    .local v1, msg:Landroid/os/Message;
    #v1=(Reference,Landroid/os/Message;);
    const/4 v2, 0x3

    #v2=(PosByte);
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 269
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getActiveHandler()Landroid/os/Handler;

    move-result-object v0

    .line 271
    .local v0, hParentHandler:Landroid/os/Handler;
    #v0=(Reference,Landroid/os/Handler;);
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;->this$2:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;->access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;)Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;

    move-result-object v2

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;)Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->finish()V

    .line 276
    return-void
.end method
