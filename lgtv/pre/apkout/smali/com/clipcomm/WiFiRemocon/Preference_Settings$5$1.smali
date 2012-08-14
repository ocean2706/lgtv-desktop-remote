.class Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;
.super Ljava/lang/Object;
.source "Preference_Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;->this$1:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;)Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;->this$1:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;->this$1:Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;->access$0(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5;)Lcom/clipcomm/WiFiRemocon/Preference_Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/Preference_Settings;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;-><init>(Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1;)V

    .line 277
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/Preference_Settings$5$1$1;);
    const-wide/16 v2, 0x64

    .line 262
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    return-void
.end method
