.class Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;
.super Ljava/lang/Object;
.source "NaviButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/NaviButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/NaviButtonView;

.field private final synthetic val$nScancodeID:I


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/NaviButtonView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;->this$0:Lcom/clipcomm/WiFiRemocon/NaviButtonView;

    iput p2, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;->val$nScancodeID:I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 194
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;->this$0:Lcom/clipcomm/WiFiRemocon/NaviButtonView;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;->val$nScancodeID:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/commandRequest;->requestKeyInput(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    return-void
.end method
