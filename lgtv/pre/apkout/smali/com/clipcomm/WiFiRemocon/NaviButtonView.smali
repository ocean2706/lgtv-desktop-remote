.class public Lcom/clipcomm/WiFiRemocon/NaviButtonView;
.super Landroid/widget/ImageView;
.source "NaviButtonView.java"


# instance fields
.field m_bmpImg_Down:Landroid/graphics/Bitmap;

.field m_bmpImg_Left:Landroid/graphics/Bitmap;

.field m_bmpImg_Right:Landroid/graphics/Bitmap;

.field m_bmpImg_Up:Landroid/graphics/Bitmap;

.field m_nNaviCenter:I

.field m_nSelectedScancode:I

.field m_vVibrate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 84
    #v1=(Null);
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView;);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_vVibrate:Landroid/os/Vibrator;

    .line 98
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nSelectedScancode:I

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->LoadBitmap(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_vVibrate:Landroid/os/Vibrator;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nSelectedScancode:I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->LoadBitmap(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_vVibrate:Landroid/os/Vibrator;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nSelectedScancode:I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->LoadBitmap(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private LoadBitmap(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    sget-object v1, Lcom/clipcomm/WiFiRemocon/R$styleable;->NaviButtonView:[I

    #v1=(Reference,[I);
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, a:Landroid/content/res/TypedArray;
    #v0=(Reference,Landroid/content/res/TypedArray;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #v1=(Reference,Landroid/graphics/drawable/Drawable;);
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Up:Landroid/graphics/Bitmap;

    .line 46
    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #v1=(Reference,Landroid/graphics/drawable/Drawable;);
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Down:Landroid/graphics/Bitmap;

    .line 47
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #v1=(Reference,Landroid/graphics/drawable/Drawable;);
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Left:Landroid/graphics/Bitmap;

    .line 48
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #v1=(Reference,Landroid/graphics/drawable/Drawable;);
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Right:Landroid/graphics/Bitmap;

    .line 49
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_vVibrate:Landroid/os/Vibrator;

    .line 50
    return-void
.end method


# virtual methods
.method getSelectedScancode(Landroid/view/MotionEvent;)I
    .locals 5
    .parameter "event"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->getWidth()I

    move-result v3

    #v3=(Integer);
    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nNaviCenter:I

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iget v4, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nNaviCenter:I

    #v4=(Integer);
    sub-int v1, v3, v4

    .line 139
    .local v1, x:I
    #v1=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    #v3=(Float);
    float-to-int v3, v3

    #v3=(Integer);
    iget v4, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nNaviCenter:I

    sub-int v2, v3, v4

    .line 140
    .local v2, y:I
    #v2=(Integer);
    const/4 v0, 0x0

    .line 141
    .local v0, nScancodeID:I
    #v0=(Null);
    if-gez v1, :cond_1

    if-gez v2, :cond_1

    .line 143
    if-le v1, v2, :cond_0

    const v0, 0x7f060086

    .line 161
    :goto_0
    #v0=(Integer);
    return v0

    .line 144
    :cond_0
    #v0=(Null);
    const v0, 0x7f060088

    #v0=(Integer);
    goto :goto_0

    .line 146
    :cond_1
    #v0=(Null);
    if-ltz v1, :cond_3

    if-gez v2, :cond_3

    .line 148
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v1, v3, :cond_2

    const v0, 0x7f060089

    #v0=(Integer);
    goto :goto_0

    .line 149
    :cond_2
    #v0=(Null);
    const v0, 0x7f060086

    #v0=(Integer);
    goto :goto_0

    .line 151
    :cond_3
    #v0=(Null);
    if-gez v1, :cond_5

    if-ltz v2, :cond_5

    .line 153
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_4

    const v0, 0x7f060088

    #v0=(Integer);
    goto :goto_0

    .line 154
    :cond_4
    #v0=(Null);
    const v0, 0x7f060087

    #v0=(Integer);
    goto :goto_0

    .line 158
    :cond_5
    #v0=(Null);
    if-le v1, v2, :cond_6

    const v0, 0x7f060089

    #v0=(Integer);
    goto :goto_0

    .line 159
    :cond_6
    #v0=(Null);
    const v0, 0x7f060087

    #v0=(Integer);
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x0

    .line 106
    #v1=(Null);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nSelectedScancode:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 109
    :pswitch_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Up:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 112
    :pswitch_1
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Down:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 115
    :pswitch_2
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Left:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 118
    :pswitch_3
    #v0=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_bmpImg_Right:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x7f060086
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->getSuggestedMinimumWidth()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->getSuggestedMinimumHeight()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 203
    :goto_0
    #v0=(Conflicted);
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    #v1=(Boolean);
    return v1

    .line 173
    :pswitch_0
    #v0=(Uninit);v1=(Integer);
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->getSelectedScancode(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nSelectedScancode:I

    .line 174
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->invalidate()V

    .line 175
    new-instance v1, Lcom/clipcomm/WiFiRemocon/NaviButtonView$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/NaviButtonView$1;);
    invoke-direct {v1, p0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView$1;-><init>(Lcom/clipcomm/WiFiRemocon/NaviButtonView;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView$1;);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->post(Ljava/lang/Runnable;)Z

    .line 183
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_1

    .line 185
    :pswitch_1
    #v1=(Integer);
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->getSelectedScancode(Landroid/view/MotionEvent;)I

    move-result v0

    .line 186
    .local v0, nScancodeID:I
    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;);
    invoke-direct {v1, p0, v0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;-><init>(Lcom/clipcomm/WiFiRemocon/NaviButtonView;I)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/NaviButtonView$2;);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, p0, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->m_nSelectedScancode:I

    .line 200
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/NaviButtonView;->invalidate()V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
