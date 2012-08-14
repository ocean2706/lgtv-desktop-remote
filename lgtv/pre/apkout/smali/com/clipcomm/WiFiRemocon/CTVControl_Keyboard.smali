.class public Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;
.super Landroid/app/Activity;
.source "CTVControl_Keyboard.java"


# static fields
.field static final DEF_RESULT_FILTER_GET_CONTEXT_UI:I = 0x2

.field static final DEF_RESULT_FILTER_TV_EVENT:I = 0x1

.field private static final REQUEST_CODE:I = 0x4d2


# instance fields
.field m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

.field m_bExit:Z

.field m_bUnderVR:Z

.field m_btnVR:Landroid/widget/Button;

.field m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field m_hEventHandler:Landroid/os/Handler;

.field m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

.field m_mIMM:Landroid/view/inputmethod/InputMethodManager;

.field m_mInputTextActListener:Landroid/widget/TextView$OnEditorActionListener;

.field m_vInputText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    #v0=(Null);
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bExit:Z

    .line 60
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bUnderVR:Z

    .line 73
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$1;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_hEventHandler:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$2;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mInputTextActListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->startVoiceRecognitionActivity()V

    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 3

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bUnderVR:Z

    .line 240
    const/16 v1, 0x4d2

    #v1=(PosShort);
    invoke-virtual {p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 242
    :catch_0
    move-exception v1

    #v1=(Reference,Landroid/content/ActivityNotFoundException;);
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 253
    #v4=(Null);
    const/16 v1, 0x4d2

    #v1=(PosShort);
    if-ne p1, v1, :cond_1

    .line 255
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne p2, v1, :cond_0

    .line 257
    const-string v1, "android.speech.extra.RESULTS"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    .local v0, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 260
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    #v2=(Reference,Landroid/widget/EditText;);
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Object;);
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .end local v0           #matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    #v1=(Reference,Landroid/view/inputmethod/InputMethodManager;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    #v2=(Reference,Landroid/widget/EditText;);
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 264
    iput-boolean v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bUnderVR:Z

    .line 266
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 152
    #v4=(Null);
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v2, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;-><init>(Landroid/app/Activity;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 154
    const v2, 0x7f030009

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    .line 156
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$3;);
    invoke-virtual {v2, v3}, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->setOnHideSoftkeyEventListener(Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;)V

    .line 174
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->setContentView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0, v4, v4}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->overridePendingTransition(II)V

    .line 176
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 177
    const v2, 0x7f080019

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    .line 178
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mInputTextActListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$4;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$4;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$4;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$4;);
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 201
    const v2, 0x7f08001a

    #v2=(Integer);
    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_btnVR:Landroid/widget/Button;

    .line 202
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_btnVR:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 205
    .local v1, pm:Landroid/content/pm/PackageManager;
    #v1=(Reference,Landroid/content/pm/PackageManager;);
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef,Landroid/content/Intent;);
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Landroid/content/Intent;);
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v0=(Reference,Ljava/util/List;);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    #v2=(Integer);
    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_btnVR:Landroid/widget/Button;

    #v2=(Reference,Landroid/widget/Button;);
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    :goto_0
    #v3=(Conflicted);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_btnVR:Landroid/widget/Button;

    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard$5;);
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_hEventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->AddRef(Landroid/os/Handler;Landroid/content/Context;)V

    .line 225
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setKBDActive(Z)V

    .line 226
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_layout:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;

    invoke-virtual {p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->registerForContextMenu(Landroid/view/View;)V

    .line 227
    return-void

    .line 212
    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    #v0=(Reference,Ljava/util/List;);v1=(Reference,Landroid/content/pm/PackageManager;);v2=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_btnVR:Landroid/widget/Button;

    #v2=(Reference,Landroid/widget/Button;);
    const/4 v3, 0x4

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 276
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-direct {v0, p1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;-><init>(Landroid/view/Menu;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    .line 277
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->SetMainMenu()V

    .line 278
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->unRegReceiver()V

    .line 126
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 128
    :cond_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_bExit:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_mIMM:Landroid/view/inputmethod/InputMethodManager;

    #v0=(Reference,Landroid/view/inputmethod/InputMethodManager;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_vInputText:Landroid/widget/EditText;

    #v1=(Reference,Landroid/widget/EditText;);
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 132
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_hEventHandler:Landroid/os/Handler;

    #v1=(Reference,Landroid/os/Handler;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->ReleaseRef(Landroid/os/Handler;)V

    .line 134
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 288
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Keyboard;->m_ctlMenu:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    invoke-virtual {v0, p1, p0}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->onOptionsItemSelected_2depth(Landroid/view/MenuItem;Landroid/app/Activity;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
