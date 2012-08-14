.class Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;
.super Ljava/lang/Object;
.source "CDeviceSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CDeviceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 355
    #v2=(PosByte);
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

    .line 356
    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$8(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$9(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$10(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$11(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch;);
    const v3, 0x7f060009

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;I)V

    .line 360
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$4;->this$0:Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->access$12(Lcom/clipcomm/WiFiRemocon/CDeviceSearch;)Ljava/lang/Runnable;

    move-result-object v2

    const-string v3, "CDeviceSearch:SearchDevice"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 361
    .local v0, thread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 362
    return-void
.end method
