.class Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;
.super Ljava/lang/Object;
.source "CTVControl_Touchpad_pad.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;);
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v4, 0x1

    .line 173
    #v4=(One);
    const-string v0, "onTouch Called"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->mGestureScanner:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move v0, v5

    .line 199
    :goto_1
    #v0=(Boolean);
    return v0

    .line 180
    :pswitch_1
    #v0=(Integer);v1=(Reference,Ljava/lang/String;);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldX:I

    .line 181
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldY:I

    move v0, v4

    .line 182
    #v0=(One);
    goto :goto_1

    .line 185
    :pswitch_2
    #v0=(Integer);v1=(Reference,Ljava/lang/String;);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempX:I

    .line 186
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #v1=(Float);
    float-to-int v1, v1

    #v1=(Integer);
    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempY:I

    .line 187
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempX:I

    #v1=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldX:I

    #v2=(Integer);
    sub-int/2addr v1, v2

    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    .line 188
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempY:I

    #v1=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldY:I

    #v2=(Integer);
    sub-int/2addr v1, v2

    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    .line 189
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    #v0=(Integer);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    #v0=(Integer);
    if-nez v0, :cond_0

    move v0, v4

    #v0=(One);
    goto :goto_1

    .line 190
    :cond_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempX:I

    #v1=(Integer);
    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldX:I

    .line 191
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempY:I

    #v1=(Integer);
    iput v1, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldY:I

    .line 192
    const-string v0, "onScroll"

    .line 193
    const-string v1, "dsX: %s, dsY: %s"

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference,[Ljava/lang/Object;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Integer;);
    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget v3, v3, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Integer;);
    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getUDPRequest()Lcom/clipcomm/WiFiRemocon/UDPRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    iget v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->scalePhone2TV(I)I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    iget v2, v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->HandleTouchMove(II)Z

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
