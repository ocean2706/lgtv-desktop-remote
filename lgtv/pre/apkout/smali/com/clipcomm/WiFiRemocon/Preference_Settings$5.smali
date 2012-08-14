.class Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;
.super Ljava/lang/Object;
.source "Preference_Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;)Lcom/clipcomm/WiFiRemocon/Preference_Settings;
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings;);
    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004c

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, strMsg:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings;);
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004b

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->this$0:Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v3, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;)V

    .line 255
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 282
    const/4 v1, 0x1

    #v1=(One);
    return v1
.end method
