.class Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;
.super Ljava/lang/Object;
.source "CWaitMessagebox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;->this$0:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox$1;->this$0:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->hide()V

    .line 79
    return-void
.end method
