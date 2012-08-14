.class Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;
.super Landroid/os/Handler;
.source "CTVControl_Keyboard.java"


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 78
    #v4=(Null);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget v2, p1, Landroid/os/Message;->arg1:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    :pswitch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    return-void

    .line 83
    :pswitch_1
    #v1=(Uninit);v2=(Integer);v3=(Uninit);
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, strText:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    .end local v1           #strText:Ljava/lang/String;
    :pswitch_2
    #v1=(Uninit);v2=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iput-boolean v5, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bExit:Z

    .line 97
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 98
    const-string v2, "result_filter"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v2, "reason"

    iget v3, p1, Landroid/os/Message;->arg1:I

    #v3=(Integer);
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v2, v4, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->setResult(ILandroid/content/Intent;)V

    .line 101
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->finish()V

    goto :goto_0

    .line 104
    :pswitch_3
    #v2=(Integer);v3=(Uninit);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iput-boolean v5, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bExit:Z

    .line 105
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iget-object v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 106
    const-string v2, "result_filter"

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v2, "tabindex"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v2, "reason"

    iget v3, p1, Landroid/os/Message;->arg1:I

    #v3=(Integer);
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v2, v4, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->setResult(ILandroid/content/Intent;)V

    .line 110
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->finish()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
