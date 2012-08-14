.class Lcom/clipcomm/WiFiRemocon/CMainMenu$2;
.super Ljava/lang/Object;
.source "CMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CMainMenu;->procTurnoffTV(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CMainMenu;

.field private final synthetic val$cxtFrom:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CMainMenu;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$2;->this$0:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$2;->val$cxtFrom:Landroid/app/Activity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$2;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getUDPRequest()Lcom/clipcomm/WiFiRemocon/UDPRequest;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$2;->val$cxtFrom:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060071

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->HandlekeyInput(I)Z

    .line 181
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/ByeByeReceiver;->sendBroadcastByeBye(Z)V

    .line 182
    return-void
.end method
