.class Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;
.super Ljava/lang/Object;
.source "Preference_Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/Preference_Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;);
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 194
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 198
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return v1

    .line 195
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings;);
    const-class v2, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "text"

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$2;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-virtual {v1, v0, v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method
