.class public Lcom/clipcomm/WiFiRemocon/PikerCtlView;
.super Landroid/widget/ImageView;
.source "PikerCtlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;,
        Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;,
        Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;
    }
.end annotation


# static fields
.field public static final BTN_DOWN:I = 0x4

.field public static final BTN_UP:I = 0x3

.field private static DEF_WHEEL_HEIGHT:I = 0x0

.field public static final WHEEL_DOWN:I = 0x2

.field public static final WHEEL_UP:I = 0x1


# instance fields
.field m_bPushDownBtn:Z

.field m_bPushUpBtn:Z

.field m_fMaxDelta:F

.field m_fOldRad:F

.field m_fOldRadForTrigger:F

.field m_fOldYPos:F

.field m_hEventAnimation:Landroid/os/Handler;

.field m_hEvtInputDnRepeat:Landroid/os/Handler;

.field m_hEvtInputUpRepeat:Landroid/os/Handler;

.field m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

.field m_iconCaption:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

.field m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

.field m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

.field m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

.field m_nCntInputRepeat:I

.field private m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

.field private m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

.field private m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

.field m_vVibrate:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x17d

    #v0=(PosShort);
    sput v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->DEF_WHEEL_HEIGHT:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 227
    #v1=(Null);
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconCaption:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 167
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 170
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 173
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 179
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    .line 182
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    .line 185
    iput v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fOldYPos:F

    .line 188
    iput v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fMaxDelta:F

    .line 191
    iput v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    .line 194
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_vVibrate:Landroid/os/Vibrator;

    .line 197
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 200
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputUpRepeat:Landroid/os/Handler;

    .line 203
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 206
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputDnRepeat:Landroid/os/Handler;

    .line 209
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    .line 212
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEventAnimation:Landroid/os/Handler;

    .line 215
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

    .line 228
    invoke-direct {p0, p1, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->InitPikeControl(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 252
    #v1=(Null);
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconCaption:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 167
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 170
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 173
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 179
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    .line 182
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    .line 185
    iput v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fOldYPos:F

    .line 188
    iput v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fMaxDelta:F

    .line 191
    iput v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    .line 194
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_vVibrate:Landroid/os/Vibrator;

    .line 197
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 200
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputUpRepeat:Landroid/os/Handler;

    .line 203
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 206
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputDnRepeat:Landroid/os/Handler;

    .line 209
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    .line 212
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEventAnimation:Landroid/os/Handler;

    .line 215
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->InitPikeControl(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 240
    #v1=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconCaption:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 167
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 170
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 173
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 179
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    .line 182
    iput-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    .line 185
    iput v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fOldYPos:F

    .line 188
    iput v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fMaxDelta:F

    .line 191
    iput v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    .line 194
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_vVibrate:Landroid/os/Vibrator;

    .line 197
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 200
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputUpRepeat:Landroid/os/Handler;

    .line 203
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 206
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputDnRepeat:Landroid/os/Handler;

    .line 209
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    .line 212
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEventAnimation:Landroid/os/Handler;

    .line 215
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->InitPikeControl(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method private GetBtnRegion()V
    .locals 13

    .prologue
    const-wide v11, 0x400921fb54442d18L

    .line 507
    #v11=(LongLo);v12=(LongHi);
    sget v7, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->DEF_WHEEL_HEIGHT:I

    #v7=(Integer);
    div-int/lit8 v3, v7, 0x2

    .line 508
    .local v3, nHalfHeight:I
    #v3=(Integer);
    const/4 v6, 0x0

    .local v6, y:I
    #v6=(Null);
    const/4 v0, 0x0

    .local v0, index:I
    #v0=(Null);
    const/4 v2, 0x0

    .line 510
    .local v2, nCnt:I
    #v2=(Null);
    const/4 v0, 0x0

    .line 511
    const/4 v1, 0x1

    .local v1, n:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    const/16 v7, 0xc

    #v7=(PosByte);
    if-le v1, v7, :cond_1

    .line 539
    :cond_0
    return-void

    .line 513
    :cond_1
    mul-int/lit8 v7, v1, 0x2

    #v7=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    sub-int/2addr v7, v8

    int-to-double v7, v7

    #v7=(DoubleLo);v8=(DoubleHi);
    mul-double/2addr v7, v11

    const-wide/high16 v9, 0x4028

    #v9=(LongLo);v10=(LongHi);
    div-double v4, v7, v9

    .line 514
    .local v4, radian:D
    #v4=(DoubleLo);v5=(DoubleHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmpl-double v7, v4, v7

    #v7=(Byte);
    if-ltz v7, :cond_3

    .line 516
    cmpl-double v7, v4, v11

    if-lez v7, :cond_2

    add-double/2addr v4, v11

    .line 517
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    #v7=(DoubleLo);v8=(DoubleHi);
    int-to-double v9, v3

    #v9=(DoubleLo);v10=(DoubleHi);
    mul-double/2addr v7, v9

    double-to-int v7, v7

    #v7=(Integer);
    sub-int v6, v3, v7

    .line 518
    const/4 v7, 0x5

    #v7=(PosByte);
    if-gt v2, v7, :cond_0

    .line 519
    rem-int/lit8 v7, v0, 0x6

    #v7=(Integer);
    packed-switch v7, :pswitch_data_0

    .line 534
    :goto_1
    #v7=(Conflicted);v8=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    .line 536
    :cond_3
    #v9=(LongLo);v10=(LongHi);
    add-int/lit8 v0, v0, 0x1

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :pswitch_0
    #v7=(Integer);v8=(DoubleHi);v9=(DoubleLo);v10=(DoubleHi);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    add-int/lit8 v8, v6, 0x4

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    invoke-virtual {v7, v8}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->setBtnSY(F)V

    goto :goto_1

    .line 525
    :pswitch_1
    #v7=(Integer);v8=(DoubleHi);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    add-int/lit8 v8, v6, 0x4

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    invoke-virtual {v7, v8}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->setBtnDY(F)V

    goto :goto_1

    .line 528
    :pswitch_2
    #v7=(Integer);v8=(DoubleHi);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    add-int/lit8 v8, v6, 0x4

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    invoke-virtual {v7, v8}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->setBtnSY(F)V

    goto :goto_1

    .line 531
    :pswitch_3
    #v7=(Integer);v8=(DoubleHi);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    add-int/lit8 v8, v6, 0x4

    #v8=(Integer);
    int-to-float v8, v8

    #v8=(Float);
    invoke-virtual {v7, v8}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->setBtnDY(F)V

    goto :goto_1

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private InitPikeControl(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x0

    #v6=(Null);
    const/16 v5, 0x10

    .line 311
    #v5=(PosByte);
    if-eqz p2, :cond_0

    .line 313
    sget-object v1, Lcom/clipcomm/WiFiRemocon/R$styleable;->PikerCtlView:[I

    #v1=(Reference,[I);
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, a:Landroid/content/res/TypedArray;
    #v0=(Reference,Landroid/content/res/TypedArray;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconCaption:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 316
    const/16 v2, 0xb

    .line 317
    #v2=(PosByte);
    const/16 v3, 0xd

    .line 318
    #v3=(PosByte);
    const/16 v4, 0xc

    .line 315
    #v4=(PosByte);
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->LoadIcon(Landroid/content/res/TypedArray;III)V

    .line 319
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 320
    const/4 v2, 0x4

    .line 321
    const/4 v3, 0x7

    .line 322
    const/4 v4, 0x6

    .line 319
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->LoadIcon(Landroid/content/res/TypedArray;III)V

    .line 323
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    .line 324
    const/16 v2, 0x8

    .line 325
    const/16 v3, 0xa

    .line 326
    const/16 v4, 0x9

    .line 323
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->LoadIcon(Landroid/content/res/TypedArray;III)V

    .line 328
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v2, p0, v0, v6, v5}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aput-object v2, v1, v6

    .line 329
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v2, p0, v0, v6, v5}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aput-object v2, v1, v8

    .line 330
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v2, p0, v0, v8, v5}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aput-object v2, v1, v9

    .line 331
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    new-instance v2, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v2, p0, v0, v9, v5}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aput-object v2, v1, v7

    .line 332
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    const/4 v2, 0x4

    #v2=(PosByte);
    new-instance v3, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v3, p0, v0, v7, v5}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aput-object v3, v1, v2

    .line 333
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    const/4 v2, 0x5

    new-instance v3, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-direct {v3, p0, v0, v7, v5}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aput-object v3, v1, v2

    .line 337
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$1;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputUpRepeat:Landroid/os/Handler;

    .line 347
    new-instance v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView$2;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$2;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$2;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$2;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputDnRepeat:Landroid/os/Handler;

    .line 357
    new-instance v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$3;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEventAnimation:Landroid/os/Handler;

    .line 379
    invoke-direct {p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->GetBtnRegion()V

    .line 380
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputUpRepeat:Landroid/os/Handler;

    #v2=(Reference,Landroid/os/Handler;);
    const/16 v3, 0x4b

    #v3=(PosByte);
    invoke-direct {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;-><init>(Landroid/os/Handler;I)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 381
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEvtInputDnRepeat:Landroid/os/Handler;

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v3}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;-><init>(Landroid/os/Handler;I)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    .line 382
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_hEventAnimation:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;-><init>(Landroid/os/Handler;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    .line 383
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_vVibrate:Landroid/os/Vibrator;

    .line 384
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    const-string v2, "PikerCtlView:InputUpRptTimer"

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->setName(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->start()V

    .line 386
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    const-string v2, "PikerCtlView:InputDnRptTimer"

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->setName(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->start()V

    .line 388
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    const-string v2, "PikerCtlView:AniThread"

    invoke-virtual {v1, v2}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->setName(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->start()V

    .line 390
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)Lcom/clipcomm/WiFiRemocon/CWheelAniThread;
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->DEF_WHEEL_HEIGHT:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$2(Lcom/clipcomm/WiFiRemocon/PikerCtlView;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 547
    invoke-direct {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->adjustPikeDrawPos(IF)V

    return-void
.end method

.method private adjustPikeDrawPos(IF)V
    .locals 13
    .parameter "nHeight"
    .parameter "fDeltaRad"

    .prologue
    const-wide v11, 0x400921fb54442d18L

    .line 549
    #v11=(LongLo);v12=(LongHi);
    div-int/lit8 v3, p1, 0x2

    .line 550
    .local v3, nHalfHeight:I
    #v3=(Integer);
    const/4 v6, 0x0

    .local v6, y:I
    #v6=(Null);
    const/4 v0, 0x0

    .local v0, index:I
    #v0=(Null);
    const/4 v2, 0x0

    .line 552
    .local v2, nCnt:I
    #v2=(Null);
    float-to-double v7, p2

    #v7=(DoubleLo);v8=(DoubleHi);
    const-wide v9, 0x3fe0c152382d7365L

    #v9=(LongLo);v10=(LongHi);
    div-double/2addr v7, v9

    double-to-int v0, v7

    .line 553
    #v0=(Integer);
    const/4 v1, 0x1

    .local v1, n:I
    :goto_0
    #v1=(Integer);v2=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/16 v7, 0xc

    #v7=(PosByte);
    if-le v1, v7, :cond_1

    .line 566
    :cond_0
    return-void

    .line 555
    :cond_1
    mul-int/lit8 v7, v1, 0x2

    #v7=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    sub-int/2addr v7, v8

    int-to-double v7, v7

    #v7=(DoubleLo);v8=(DoubleHi);
    mul-double/2addr v7, v11

    const-wide/high16 v9, 0x4028

    #v9=(LongLo);
    div-double/2addr v7, v9

    float-to-double v9, p2

    #v9=(DoubleLo);v10=(DoubleHi);
    add-double v4, v7, v9

    .line 556
    .local v4, radian:D
    #v4=(DoubleLo);v5=(DoubleHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmpl-double v7, v4, v7

    #v7=(Byte);
    if-ltz v7, :cond_3

    .line 558
    cmpl-double v7, v4, v11

    if-lez v7, :cond_2

    add-double/2addr v4, v11

    .line 559
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    #v7=(DoubleLo);v8=(DoubleHi);
    int-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-int v7, v7

    #v7=(Integer);
    sub-int v6, v3, v7

    .line 560
    const/4 v7, 0x5

    #v7=(PosByte);
    if-gt v2, v7, :cond_0

    .line 561
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v7=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    rem-int/lit8 v8, v0, 0x6

    #v8=(Integer);
    aget-object v7, v7, v8

    const/4 v8, 0x0

    #v8=(Null);
    add-int/lit8 v9, v6, 0x4

    #v9=(Integer);
    invoke-virtual {v7, v8, v9}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->SetPos(II)V

    .line 562
    add-int/lit8 v2, v2, 0x1

    .line 564
    :cond_3
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconCaption:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-virtual {v1, p1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->DrawIcon(Landroid/graphics/Canvas;)V

    .line 597
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    invoke-virtual {v1, p1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->DrawIcon(Landroid/graphics/Canvas;)V

    .line 598
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    invoke-virtual {v1, p1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->DrawIcon(Landroid/graphics/Canvas;)V

    .line 600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x6

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 605
    return-void

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v1=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aget-object v1, v1, v0

    iget v1, v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nY:I

    #v1=(Integer);
    const/16 v2, 0xc

    #v2=(PosByte);
    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v1=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aget-object v1, v1, v0

    iget v1, v1, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nY:I

    #v1=(Integer);
    sget v2, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->DEF_WHEEL_HEIGHT:I

    #v2=(Integer);
    const/16 v3, 0xa

    #v3=(PosByte);
    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 600
    :cond_1
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    :cond_2
    #v1=(Integer);v3=(PosByte);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconPikeLine:[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v1=(Reference,[Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->DrawIcon(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->getSuggestedMinimumHeight()I

    move-result v0

    #v0=(Integer);
    sput v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->DEF_WHEEL_HEIGHT:I

    .line 299
    sget v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->DEF_WHEEL_HEIGHT:I

    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->adjustPikeDrawPos(IF)V

    .line 300
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->getSuggestedMinimumHeight()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->setMeasuredDimension(II)V

    .line 301
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, -0x1

    #v4=(Byte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 430
    #v5=(Null);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 431
    .local v0, nAction:I
    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 499
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    #v2=(Boolean);v4=(Float);
    return v2

    .line 434
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Byte);
    iput v5, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    .line 435
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #v3=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    #v4=(Float);
    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->hitTest(FF)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    invoke-virtual {v2, v6}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 438
    iput-boolean v6, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    .line 440
    :cond_1
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->hitTest(FF)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    invoke-virtual {v2, v6}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 443
    iput-boolean v6, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    .line 445
    :cond_2
    #v2=(Conflicted);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    #v2=(Float);
    iput v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fOldYPos:F

    move v2, v6

    .line 446
    #v2=(One);
    goto :goto_1

    .line 448
    :pswitch_1
    #v2=(Uninit);v3=(Uninit);v4=(Byte);
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    #v2=(Boolean);
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconUp:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #v3=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    #v4=(Float);
    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->hitTest(FF)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 450
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->stop()V

    .line 451
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v2, v5}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 452
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    .line 454
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iconDown:Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #v3=(Float);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->hitTest(FF)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->stop()V

    .line 457
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v2, v5}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 458
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    :cond_4
    #v2=(Conflicted);v3=(Conflicted);
    move v2, v6

    .line 460
    #v2=(One);
    goto :goto_1

    .line 462
    :pswitch_2
    #v2=(Uninit);v3=(Uninit);v4=(Byte);
    iput v5, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_nCntInputRepeat:I

    .line 463
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;);
    invoke-virtual {v2, v5}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 464
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v2, v5}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Input(Z)V

    .line 465
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    #v2=(Boolean);
    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    if-nez v2, :cond_6

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    #v2=(Float);
    iget v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fOldYPos:F

    #v3=(Integer);
    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 469
    .local v1, nDeltaY:I
    #v1=(Integer);
    if-lez v1, :cond_5

    .line 471
    const/16 v2, 0x50

    #v2=(PosByte);
    if-lt v1, v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    div-int/lit8 v3, v1, 0x14

    invoke-virtual {v2, v6, v3}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Play(II)V

    goto/16 :goto_0

    .line 476
    :cond_5
    #v2=(Float);
    const/16 v2, -0x50

    #v2=(Byte);
    if-gt v1, v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    div-int/lit8 v3, v1, 0x14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Play(II)V

    goto/16 :goto_0

    .line 483
    .end local v1           #nDeltaY:I
    :cond_6
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    if-eqz v2, :cond_7

    .line 485
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    invoke-virtual {v2, v4, v6}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Play(II)V

    .line 486
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushUpBtn:Z

    .line 488
    :cond_7
    #v2=(Conflicted);
    iget-boolean v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    #v2=(Boolean);
    if-eqz v2, :cond_8

    .line 490
    iput-boolean v5, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_bPushDownBtn:Z

    .line 491
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    invoke-virtual {v2, v6, v6}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Play(II)V

    .line 494
    :cond_8
    #v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    iput v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_fMaxDelta:F

    goto/16 :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thAniThread:Lcom/clipcomm/WiFiRemocon/CWheelAniThread;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWheelAniThread;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CWheelAniThread;->Quit()V

    .line 654
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputUpRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Quit()V

    .line 655
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_thInputDnRptTimer:Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CInputRepeatTimer;->Quit()V

    .line 656
    return-void
.end method

.method processBtnEvent(I)V
    .locals 1
    .parameter "nBtnDir"

    .prologue
    .line 575
    new-instance v0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;);
    invoke-direct {v0, p0, p1}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;-><init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$4;);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public setOnWheelEventListener(Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->m_iOnWheelEventListener:Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;

    .line 638
    return-void
.end method
