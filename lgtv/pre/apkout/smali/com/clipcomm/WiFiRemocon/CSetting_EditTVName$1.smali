.class Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;
.super Ljava/lang/Object;
.source "CSetting_EditTVName.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;);
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 84
    #v3=(Null);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-ne p2, v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "text"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_vInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {v1, v2, v0}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->finish()V

    .line 90
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    invoke-virtual {v1, v3, v3}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->overridePendingTransition(II)V

    move v1, v3

    .line 93
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
