.class public Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;
.super Landroid/app/Activity;
.source "CTVControl_Touchpad_pad.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static LONGPRESS:Z = false

.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field static isLongpressEnabled:Z

.field static mGestureScanner:Landroid/view/GestureDetector;


# instance fields
.field currentX:F

.field downXValue:F

.field m_nOldX:I

.field m_nOldY:I

.field m_vPad:Landroid/widget/ImageView;

.field m_vVibrate:Landroid/os/Vibrator;

.field nDeltaX:I

.field nDeltaY:I

.field nTempX:I

.field nTempY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->LONGPRESS:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;);
    return-void
.end method

.method public static isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->mGestureScanner:Landroid/view/GestureDetector;

    #v0=(Reference,Landroid/view/GestureDetector;);
    invoke-virtual {v0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static wait(I)V
    .locals 8
    .parameter "n"

    .prologue
    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 467
    .local v0, t0:J
    :cond_0
    #v0=(LongLo);v1=(LongHi);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 469
    .local v2, t1:J
    #v2=(LongLo);v3=(LongHi);
    sub-long v4, v0, v2

    #v4=(LongLo);v5=(LongHi);
    int-to-long v6, p0

    #v6=(LongLo);v7=(LongHi);
    cmp-long v4, v4, v6

    #v4=(Byte);
    if-gtz v4, :cond_0

    .line 471
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getCurRootActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f060039

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    const v1, 0x7f06003b

    .line 72
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;);
    invoke-direct {v2, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;)V

    .line 71
    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    const v1, 0x7f06003c

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const v0, 0x7f03000d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->setContentView(I)V

    .line 165
    new-instance v0, Landroid/view/GestureDetector;

    #v0=(UninitRef,Landroid/view/GestureDetector;);
    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    #v0=(Reference,Landroid/view/GestureDetector;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->mGestureScanner:Landroid/view/GestureDetector;

    .line 166
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_vVibrate:Landroid/os/Vibrator;

    .line 167
    const v0, 0x7f080030

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_vPad:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_vPad:Landroid/widget/ImageView;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$2;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 479
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 485
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 211
    const-string v0, "Ondown called"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldX:I

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldY:I

    .line 216
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "event1"
    .parameter "event2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 225
    const-string v0, "onFling EVENT1"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "onFling velocityX"

    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v0, "onFling EVENT2"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "onFling velocityY"

    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 501
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 98
    const-string v1, "false"

    .line 97
    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestCursorVisible(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v0

    .line 110
    const-string v1, "true"

    .line 109
    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/EventRequest;->requestCursorVisible(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 112
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "event1"
    .parameter "event2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x1

    .line 402
    #v5=(One);
    const-string v0, "onScroll EVENT1"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, "onScroll EVENT2"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, "onScroll"

    .line 407
    const-string v1, "dsX: %s, dsY: %s"

    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference,[Ljava/lang/Object;);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    #v4=(Reference,Ljava/lang/Float;);
    aput-object v4, v2, v3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Float;);
    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempX:I

    .line 410
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    #v0=(Float);
    float-to-int v0, v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempY:I

    .line 411
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempX:I

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldX:I

    #v1=(Integer);
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    .line 412
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempY:I

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    .line 413
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    if-nez v0, :cond_0

    move v0, v5

    .line 418
    :goto_0
    #v0=(One);v2=(Conflicted);
    return v0

    .line 414
    :cond_0
    #v0=(Integer);v2=(Reference,[Ljava/lang/Object;);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempX:I

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldX:I

    .line 415
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nTempY:I

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_nOldY:I

    .line 416
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getUDPRequest()Lcom/clipcomm/WiFiRemocon/UDPRequest;

    move-result-object v0

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaX:I

    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->scalePhone2TV(I)I

    move-result v1

    iget v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->nDeltaY:I

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/UDPRequest;->HandleTouchMove(II)Z

    move v0, v5

    .line 418
    #v0=(One);
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 424
    const-string v0, "onShowPress called"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 492
    const-string v0, "onSingleTapConfirmed called"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 432
    const-string v0, "onSingleTapUp called"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 435
    #v0=(Float);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v1

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getTouchSensitivity()F

    move-result v1

    #v1=(Float);
    const/high16 v2, 0x3f80

    .line 434
    #v2=(Integer);
    add-float/2addr v1, v2

    .line 435
    const/high16 v2, 0x4220

    .line 434
    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    #v0=(Byte);
    if-gez v0, :cond_0

    .line 437
    const-string v0, "Event Time"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "Down Time"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    #v1=(LongLo);
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->m_vPad:Landroid/widget/ImageView;

    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad$3;);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 458
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public procBackPressed()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 88
    return-void
.end method

.method scalePhone2TV(F)I
    .locals 1
    .parameter "fValue"

    .prologue
    .line 121
    float-to-int v0, p1

    #v0=(Integer);
    mul-int/lit16 v0, v0, 0x2ab

    div-int/lit16 v0, v0, 0x1c2

    return v0
.end method

.method scalePhone2TV(I)I
    .locals 1
    .parameter "nValue"

    .prologue
    .line 131
    mul-int/lit16 v0, p1, 0x2ab

    #v0=(Integer);
    div-int/lit16 v0, v0, 0x1c2

    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1
    .parameter "isLongpressEnabled"

    .prologue
    .line 157
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Touchpad_pad;->mGestureScanner:Landroid/view/GestureDetector;

    #v0=(Reference,Landroid/view/GestureDetector;);
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 158
    return-void
.end method
