.class Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;
.super Ljava/lang/Object;
.source "CTVControl_Touchpad_pad.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->procBackPressed()V

    .line 77
    return-void
.end method
