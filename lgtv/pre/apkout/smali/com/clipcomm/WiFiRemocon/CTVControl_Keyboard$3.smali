.class Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;
.super Ljava/lang/Object;
.source "CTVControl_Keyboard.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;);
    return-void
.end method


# virtual methods
.method public onHideSoftkeyEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 161
    #v3=(Null);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iget-boolean v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bUnderVR:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iput-boolean v4, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bExit:Z

    .line 164
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "result_filter"

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v1, "tabindex"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v1, v3, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->setResult(ILandroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->finish()V

    .line 170
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v1, v3, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->overridePendingTransition(II)V

    .line 172
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
