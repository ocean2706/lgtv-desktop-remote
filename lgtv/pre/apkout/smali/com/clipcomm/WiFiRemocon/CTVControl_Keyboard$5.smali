.class Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;
.super Ljava/lang/Object;
.source "CTVControl_Keyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V

    .line 221
    return-void
.end method
