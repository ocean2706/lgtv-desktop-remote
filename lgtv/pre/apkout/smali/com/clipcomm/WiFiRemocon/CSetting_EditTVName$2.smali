.class Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;
.super Ljava/lang/Object;
.source "CSetting_EditTVName.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;);
    return-void
.end method


# virtual methods
.method public onHideSoftkeyEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    #v2=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v2, v1}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->setResult(ILandroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->finish()V

    .line 60
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName$2;->this$0:Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;

    invoke-virtual {v0, v2, v2}, Lcom/clipcomm/WiFiRemocon/CSetting_EditTVName;->overridePendingTransition(II)V

    .line 61
    return-void
.end method
