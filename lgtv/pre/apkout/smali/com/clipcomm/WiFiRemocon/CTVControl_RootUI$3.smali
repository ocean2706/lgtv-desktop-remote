.class Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;
.super Ljava/lang/Object;
.source "CTVControl_RootUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->onSensorChanged(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->GoNetcast()V

    .line 149
    return-void
.end method
