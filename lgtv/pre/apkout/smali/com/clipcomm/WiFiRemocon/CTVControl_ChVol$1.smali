.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;);
    return-object v0
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 59
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol;->m_mControlTab:Landroid/widget/TabHost;

    #v0=(Reference,Landroid/widget/TabHost;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol$1$1;);
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method
