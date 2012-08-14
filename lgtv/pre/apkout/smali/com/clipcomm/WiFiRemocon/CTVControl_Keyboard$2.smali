.class Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;
.super Ljava/lang/Object;
.source "CTVControl_Keyboard.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;);
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 297
    #v3=(Null);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ne p2, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iput-boolean v4, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bExit:Z

    .line 300
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "result_filter"

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v1, "tabindex"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {v1, v2, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->setResult(ILandroid/content/Intent;)V

    .line 305
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->finish()V

    .line 306
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v1, v3, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->overridePendingTransition(II)V

    move v1, v3

    .line 309
    .end local v0           #result:Landroid/content/Intent;
    :goto_0
    #v0=(Conflicted);v1=(Null);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v1=(PosByte);v2=(Uninit);
    move v1, v3

    #v1=(Null);
    goto :goto_0
.end method
