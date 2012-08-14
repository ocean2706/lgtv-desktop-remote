.class Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;
.super Ljava/lang/Object;
.source "PikerCtlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/PikerCtlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconType"
.end annotation


# instance fields
.field m_bmpImg:Landroid/graphics/Bitmap;

.field m_fBtnDY:F

.field m_fBtnSY:F

.field m_nMarginLeft:I

.field m_nMarginTop:I

.field m_nX:I

.field m_nY:I

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    return-void
.end method

.method constructor <init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Landroid/content/res/TypedArray;II)V
    .locals 0
    .parameter
    .parameter "a"
    .parameter "nbmpID"
    .parameter "nMarginX"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;);
    invoke-virtual {p0, p2, p3}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->LoadIcon(Landroid/content/res/TypedArray;I)V

    .line 76
    iput p4, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nMarginLeft:I

    return-void
.end method


# virtual methods
.method public DrawIcon(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v1, -0x1

    .line 123
    #v1=(Byte);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nX:I

    #v0=(Integer);
    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nY:I

    if-ne v0, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Float);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 124
    :cond_1
    #v0=(Integer);v1=(Byte);v2=(Uninit);v3=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_bmpImg:Landroid/graphics/Bitmap;

    #v0=(Reference,Landroid/graphics/Bitmap;);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_bmpImg:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nMarginLeft:I

    #v1=(Integer);
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nX:I

    #v2=(Integer);
    add-int/2addr v1, v2

    int-to-float v1, v1

    #v1=(Float);
    iget v2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nMarginTop:I

    iget v3, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nY:I

    #v3=(Integer);
    add-int/2addr v2, v3

    int-to-float v2, v2

    #v2=(Float);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public LoadIcon(Landroid/content/res/TypedArray;I)V
    .locals 1
    .parameter "a"
    .parameter "nbmpID"

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference,Landroid/graphics/drawable/Drawable;);
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_bmpImg:Landroid/graphics/Bitmap;

    .line 99
    return-void
.end method

.method public LoadIcon(Landroid/content/res/TypedArray;III)V
    .locals 2
    .parameter "a"
    .parameter "nbmpID"
    .parameter "nMarginLeftID"
    .parameter "nMarginTopID"

    .prologue
    const/4 v1, 0x0

    .line 111
    #v1=(Null);
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference,Landroid/graphics/drawable/Drawable;);
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_bmpImg:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nMarginTop:I

    .line 113
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nMarginLeft:I

    .line 114
    return-void
.end method

.method public SetPos(II)V
    .locals 0
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 87
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nX:I

    iput p2, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_nY:I

    .line 88
    return-void
.end method

.method public hitTest(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 156
    #v1=(Null);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_fBtnSY:F

    #v0=(Integer);
    cmpg-float v0, p2, v0

    #v0=(Byte);
    if-gez v0, :cond_0

    move v0, v1

    .line 159
    :goto_0
    #v0=(Boolean);
    return v0

    .line 157
    :cond_0
    #v0=(Byte);
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_fBtnDY:F

    #v0=(Integer);
    cmpl-float v0, p2, v0

    #v0=(Byte);
    if-lez v0, :cond_1

    move v0, v1

    #v0=(Null);
    goto :goto_0

    .line 159
    :cond_1
    #v0=(Byte);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public setBtnDY(F)V
    .locals 0
    .parameter "fDY"

    .prologue
    .line 144
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_fBtnDY:F

    .line 145
    return-void
.end method

.method public setBtnSY(F)V
    .locals 0
    .parameter "fSY"

    .prologue
    .line 134
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$IconType;->m_fBtnSY:F

    .line 135
    return-void
.end method
