.class Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;);
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 182
    #v3=(One);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings;);
    const-class v2, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    const-string v1, "isReconnectMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$1;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    invoke-virtual {v1, v0, v3}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    return v3
.end method
