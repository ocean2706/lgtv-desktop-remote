.class Lcom/clipcomm/WiFiRemocon/CMainMenu$1;
.super Ljava/lang/Object;
.source "CMainMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CMainMenu;->onTurnoffTV(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$1;->this$0:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$1;->val$cxtFrom:Landroid/app/Activity;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$1;->this$0:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$1;->val$cxtFrom:Landroid/app/Activity;

    #v1=(Reference,Landroid/app/Activity;);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CMainMenu;->procTurnoffTV(Landroid/app/Activity;)V

    .line 161
    return-void
.end method
