.class public Lcom/clipcomm/WiFiRemocon/Preference_Settings;
.super Landroid/preference/PreferenceActivity;
.source "Preference_Settings.java"


# static fields
.field public static final KEY_PREFCONF_AUTO_MUTE:Ljava/lang/String; = "config_auto_mute"

.field public static final KEY_PREFCONF_DEMO_TV_MODE:Ljava/lang/String; = "config_demo_tv"

.field public static final KEY_PREFCONF_SOUND_EFFECT:Ljava/lang/String; = "config_sound_effects"

.field public static final KEY_PREFCONF_TOUCH_SENSITIVITY:Ljava/lang/String; = "touch_sensitivity"

.field public static final KEY_PREFCONF_VIBRATE_FEEDBACK:Ljava/lang/String; = "config_vibration_feedback"

.field public static final KEY_PREFSCR_CONNECTED_TV:Ljava/lang/String; = "config_connected_tv"

.field public static final KEY_PREFSCR_EDIT_TV_NAME:Ljava/lang/String; = "config_edit_tv_name"

.field public static final REQ_CODE_CONNECTED_TV:I = 0x1

.field public static final REQ_CODE_EDIT_TV_NAME:I = 0x2


# instance fields
.field m_Handler:Landroid/os/Handler;

.field m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

.field private m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

.field m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

.field m_prefAboutApp:Landroid/preference/PreferenceScreen;

.field m_prefChkBox:Landroid/preference/CheckBoxPreference;

.field m_prefEditTVname:Landroid/preference/PreferenceScreen;

.field m_prefSensitivity:Lcom/clipcomm/WiFiRemocon/SeekBarPreference;

.field m_prefSupportedModels:Landroid/preference/PreferenceScreen;

.field m_prefscrConTV:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings;);
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef,Landroid/os/Handler;);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference,Landroid/os/Handler;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_Handler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method


# virtual methods
.method DisplayTVNameInfo()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v0, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 128
    .local v0, strTVName:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefscrConTV:Landroid/preference/PreferenceScreen;

    #v1=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefEditTVname:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :cond_1
    #v2=(Conflicted);
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    return-void

    .line 87
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    if-nez p2, :cond_0

    .line 89
    if-eqz p3, :cond_0

    .line 91
    const-string v1, "DefaultTV"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, strNewDefTVMACAddr:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 96
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-virtual {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    goto :goto_0

    .line 100
    :cond_1
    #v1=(Boolean);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setDefaultTV(Landroid/app/Activity;Lcom/clipcomm/WiFiRemocon/TVInfo;)V

    goto :goto_0

    .line 107
    .end local v0           #strNewDefTVMACAddr:Ljava/lang/String;
    :pswitch_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne p2, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const-string v2, "text"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->DisplayTVNameInfo()V

    .line 111
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->open()V

    .line 112
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-wide v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    #v2=(LongLo);v3=(LongHi);
    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-virtual {v1, v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->updateTVInfo(JLcom/clipcomm/WiFiRemocon/TVInfo;)Z

    .line 113
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->close()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    new-instance v1, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;-><init>(Landroid/app/Activity;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 164
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "mode"

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #v1=(Integer);
    sparse-switch v1, :sswitch_data_0

    .line 207
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    #v1=(Reference,Landroid/preference/PreferenceScreen;);
    const-string v2, "touch_sensitivity"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefSensitivity:Lcom/clipcomm/WiFiRemocon/SeekBarPreference;

    .line 208
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_about_app"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefAboutApp:Landroid/preference/PreferenceScreen;

    .line 209
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_supported_model"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefSupportedModels:Landroid/preference/PreferenceScreen;

    .line 211
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefAboutApp:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/Preference_Settings$3;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$3;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$3;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$3;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefSupportedModels:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/Preference_Settings$4;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$4;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$4;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$4;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "config_demo_tv"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefChkBox:Landroid/preference/CheckBoxPreference;

    .line 246
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefChkBox:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;);
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    return-void

    .line 168
    :sswitch_0
    #v1=(Integer);v2=(PosByte);
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->addPreferencesFromResource(I)V

    .line 169
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getTargetTVInfo()Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 170
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "config_connected_tv"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefscrConTV:Landroid/preference/PreferenceScreen;

    .line 171
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "config_edit_tv_name"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefEditTVname:Landroid/preference/PreferenceScreen;

    .line 174
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->DisplayTVNameInfo()V

    .line 175
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;-><init>(Landroid/content/Context;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    .line 177
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefscrConTV:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefEditTVname:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 204
    :sswitch_1
    #v1=(Integer);v2=(PosByte);
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->unRegReceiver()V

    .line 149
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_ReceiverByeBye:Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;

    .line 151
    :cond_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;);
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 152
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    #v1=(Reference,Landroid/preference/PreferenceScreen;);
    const-string v2, "config_vibration_feedback"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #v0=(Reference,Landroid/preference/Preference;);
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 295
    .local v0, prefChkBox:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    .line 296
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "config_sound_effects"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #prefChkBox:Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 297
    .restart local v0       #prefChkBox:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    .line 298
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "config_demo_tv"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #prefChkBox:Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 299
    .restart local v0       #prefChkBox:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->showDemoTV(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "config_auto_mute"

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #prefChkBox:Landroid/preference/CheckBoxPreference;
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 301
    .restart local v0       #prefChkBox:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setAutoMuteMode(Z)V

    .line 302
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_prefSensitivity:Lcom/clipcomm/WiFiRemocon/SeekBarPreference;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/SeekBarPreference;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getValue()F

    move-result v2

    #v2=(Float);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/LifeTime;->setTouchSensitivity(F)V

    .line 303
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 304
    return-void
.end method
