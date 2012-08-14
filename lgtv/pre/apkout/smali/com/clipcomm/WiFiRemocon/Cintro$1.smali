.class Lcom/clipcomm/WiFiRemocon/Cintro$1;
.super Ljava/lang/Object;
.source "Cintro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/Cintro;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/Cintro;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/Cintro;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/Cintro$1;->this$0:Lcom/clipcomm/WiFiRemocon/Cintro;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/Cintro$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 25
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v1, v1, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundTap()V

    .line 26
    :cond_0
    #v1=(Conflicted);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Cintro$1;->this$0:Lcom/clipcomm/WiFiRemocon/Cintro;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/Cintro;);
    const-class v2, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Ljava/lang/Class;);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference,Landroid/content/Intent;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Cintro$1;->this$0:Lcom/clipcomm/WiFiRemocon/Cintro;

    invoke-virtual {v1, v0}, Lcom/clipcomm/WiFiRemocon/Cintro;->startActivity(Landroid/content/Intent;)V

    .line 28
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/Cintro$1;->this$0:Lcom/clipcomm/WiFiRemocon/Cintro;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/Cintro;->finish()V

    .line 30
    return-void
.end method
