.class Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;
.super Ljava/lang/Object;
.source "WaitMsgbox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/WaitMsgbox;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;->this$0:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/WaitMsgbox$1;->this$0:Lcom/clipcomm/WiFiRemocon/WaitMsgbox;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/WaitMsgbox;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/WaitMsgbox;->finish()V

    .line 44
    return-void
.end method
