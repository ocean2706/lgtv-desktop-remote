.class public Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;
.super Landroid/app/Activity;
.source "CPairingDevice_InputPincode.java"


# instance fields
.field m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

.field m_mIMM:Landroid/view/inputmethod/InputMethodManager;

.field m_mPincodeEditTextActListener:Landroid/widget/TextView$OnEditorActionListener;

.field m_mPincodeOKBtnListener:Landroid/view/View$OnClickListener;

.field m_vButtonOK:Landroid/widget/Button;

.field m_vEditPincode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 74
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mPincodeOKBtnListener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$2;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mPincodeEditTextActListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 18
    return-void
.end method


# virtual methods
.method OnPincodeInputDone()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    #v4=(Null);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vEditPincode:Landroid/widget/EditText;

    #v2=(Reference,Landroid/widget/EditText;);
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x6

    #v3=(PosByte);
    if-ne v2, v3, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, result:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vEditPincode:Landroid/widget/EditText;

    #v2=(Reference,Landroid/widget/EditText;);
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, strPincode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v2, "pincode"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {p0, v2, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->setResult(ILandroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->finish()V

    .line 97
    invoke-virtual {p0, v4, v4}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->overridePendingTransition(II)V

    move v2, v4

    .line 102
    .end local v0           #result:Landroid/content/Intent;
    .end local v1           #strPincode:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(PosByte);
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    #v0=(Null);
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 40
    invoke-virtual {p0, v0, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->overridePendingTransition(II)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030001

    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    .line 52
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;-><init>(Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode$3;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->setOnHideSoftkeyEventListener(Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;)V

    .line 62
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->setContentView(Landroid/view/View;)V

    .line 64
    const v0, 0x7f080005

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vButtonOK:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vButtonOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mPincodeOKBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f080004

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vEditPincode:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vEditPincode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mPincodeEditTextActListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 69
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CPairingDevice_InputPincode;->m_vEditPincode:Landroid/widget/EditText;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 71
    return-void
.end method
