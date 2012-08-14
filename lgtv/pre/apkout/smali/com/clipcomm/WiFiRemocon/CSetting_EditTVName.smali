.class public Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;
.super Landroid/app/Activity;
.source "CSetting_EditTVName.java"


# instance fields
.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

.field m_mIMM:Landroid/view/inputmethod/InputMethodManager;

.field m_mInputTextActListener:Landroid/widget/TextView$OnEditorActionListener;

.field m_vInputText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;-><init>(Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_mInputTextActListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 50
    #v4=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f030009

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    .line 53
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;-><init>(Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;);
    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->setOnHideSoftkeyEventListener(Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0, v4, v4}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->overridePendingTransition(II)V

    .line 66
    const v2, 0x7f080019

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_vInputText:Landroid/widget/EditText;

    .line 67
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 68
    const-string v2, "text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, strText:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_vInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_vInputText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_mInputTextActListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 74
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_vInputText:Landroid/widget/EditText;

    const/4 v4, 0x1

    #v4=(One);
    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 75
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->registerForContextMenu(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    #v0=(Reference,Landroid/view/inputmethod/InputMethodManager;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->m_vInputText:Landroid/widget/EditText;

    #v1=(Reference,Landroid/widget/EditText;);
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    return-void
.end method
