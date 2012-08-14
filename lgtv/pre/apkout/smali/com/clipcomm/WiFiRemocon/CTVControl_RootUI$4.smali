.class Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;
.super Ljava/lang/Object;
.source "CTVControl_RootUI.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;)Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    return-object v0
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->m_mControlTab:Landroid/widget/TabHost;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI$4$1;);
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method
