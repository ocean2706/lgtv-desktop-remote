.class public final Lcom/clipcomm/WiFiRemocon/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CheckableRelativeLayout:[I = null

.field public static final CheckableRelativeLayout_checkable:I = 0x0

.field public static final NaviButtonView:[I = null

.field public static final NaviButtonView_src_image_down:I = 0x1

.field public static final NaviButtonView_src_image_left:I = 0x2

.field public static final NaviButtonView_src_image_right:I = 0x3

.field public static final NaviButtonView_src_image_up:I = 0x0

.field public static final PikerCtlView:[I = null

.field public static final PikerCtlView_repeat_timeout:I = 0x5

.field public static final PikerCtlView_src_btn_down:I = 0x8

.field public static final PikerCtlView_src_btn_down_marginLeft:I = 0xa

.field public static final PikerCtlView_src_btn_down_marginTop:I = 0x9

.field public static final PikerCtlView_src_btn_title:I = 0xb

.field public static final PikerCtlView_src_btn_title_marginLeft:I = 0xd

.field public static final PikerCtlView_src_btn_title_marginTop:I = 0xc

.field public static final PikerCtlView_src_btn_up:I = 0x4

.field public static final PikerCtlView_src_btn_up_marginLeft:I = 0x7

.field public static final PikerCtlView_src_btn_up_marginTop:I = 0x6

.field public static final PikerCtlView_src_image_piker1:I = 0x0

.field public static final PikerCtlView_src_image_piker2:I = 0x1

.field public static final PikerCtlView_src_image_piker3:I = 0x2

.field public static final PikerCtlView_src_image_piker4:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 667
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [I

    #v0=(Reference,[I);
    const/4 v1, 0x0

    .line 668
    #v1=(Null);
    const v2, 0x7f010012

    #v2=(Integer);
    aput v2, v0, v1

    .line 667
    sput-object v0, Lcom/clipcomm/WiFiRemocon/R$styleable;->CheckableRelativeLayout:[I

    .line 700
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference,[I);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/clipcomm/WiFiRemocon/R$styleable;->NaviButtonView:[I

    .line 795
    const/16 v0, 0xe

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference,[I);
    fill-array-data v0, :array_1

    sput-object v0, Lcom/clipcomm/WiFiRemocon/R$styleable;->PikerCtlView:[I

    .line 656
    return-void

    .line 700
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
    .end array-data

    .line 795
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/R$styleable;);
    return-void
.end method
