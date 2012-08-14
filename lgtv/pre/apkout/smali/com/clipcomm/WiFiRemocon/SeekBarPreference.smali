.class public Lcom/clipcomm/WiFiRemocon/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static MOTION_SENSITIVITY:F

.field public static interval:I

.field public static maximum:I


# instance fields
.field private oldValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x5

    #v0=(PosByte);
    sput v0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->maximum:I

    .line 19
    const/4 v0, 0x1

    #v0=(One);
    sput v0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->interval:I

    .line 22
    const v0, 0x3dcccccd

    #v0=(Integer);
    sput v0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->MOTION_SENSITIVITY:F

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 20
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/SeekBarPreference;);
    const/high16 v0, 0x4040

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/SeekBarPreference;);
    const/high16 v0, 0x4040

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/SeekBarPreference;);
    const/high16 v0, 0x4040

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    .line 26
    return-void
.end method

.method public static changeSensitivity(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 126
    sput p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->MOTION_SENSITIVITY:F

    .line 127
    return-void
.end method

.method private updatePreference(I)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference,Landroid/content/SharedPreferences$Editor;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method private validateValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 110
    sget v0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->maximum:I

    #v0=(Integer);
    if-le p1, v0, :cond_1

    sget p1, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->maximum:I

    .line 114
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return p1

    .line 111
    :cond_1
    #v1=(Uninit);
    if-gez p1, :cond_2

    const/4 p1, 0x0

    #p1=(Null);
    goto :goto_0

    .line 112
    :cond_2
    #p1=(Integer);
    sget v0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->interval:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_0

    int-to-float v0, p1

    #v0=(Float);
    sget v1, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->interval:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    #v0=(Integer);
    sget v1, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->interval:I

    #v1=(Integer);
    mul-int p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    #v0=(Integer);
    return v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "parent"

    .prologue
    const/16 v9, 0x14

    #v9=(PosByte);
    const/16 v8, 0xf

    #v8=(PosByte);
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, -0x2

    .line 31
    #v6=(Byte);
    new-instance v1, Landroid/widget/LinearLayout;

    #v1=(UninitRef,Landroid/widget/LinearLayout;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    #v5=(Reference,Landroid/content/Context;);
    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, layout:Landroid/widget/LinearLayout;
    #v1=(Reference,Landroid/widget/LinearLayout;);
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    #v2=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v2, params1:Landroid/widget/LinearLayout$LayoutParams;
    #v2=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 35
    const/high16 v5, 0x3f80

    #v5=(Integer);
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 37
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    #v3=(UninitRef,Landroid/widget/LinearLayout$LayoutParams;);
    const/16 v5, 0x64

    #v5=(PosByte);
    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .local v3, params2:Landroid/widget/LinearLayout$LayoutParams;
    #v3=(Reference,Landroid/widget/LinearLayout$LayoutParams;);
    const/4 v5, 0x5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 40
    invoke-virtual {v1, v9, v8, v9, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 41
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    new-instance v4, Landroid/widget/TextView;

    #v4=(UninitRef,Landroid/widget/TextView;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    #v5=(Reference,Landroid/content/Context;);
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v4, view:Landroid/widget/TextView;
    #v4=(Reference,Landroid/widget/TextView;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/high16 v5, 0x41b0

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 46
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v0, Landroid/widget/SeekBar;

    #v0=(UninitRef,Landroid/widget/SeekBar;);
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    #v5=(Reference,Landroid/content/Context;);
    invoke-direct {v0, v5}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, bar:Landroid/widget/SeekBar;
    #v0=(Reference,Landroid/widget/SeekBar;);
    sget v5, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->maximum:I

    #v5=(Integer);
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 51
    iget v5, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const v5, 0x1020018

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 59
    return-object v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .parameter "ta"
    .parameter "index"

    .prologue
    .line 96
    const/16 v1, 0x32

    #v1=(PosByte);
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 97
    .local v0, dValue:I
    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->validateValue(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference,Ljava/lang/Integer;);
    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 66
    const-string v0, "SEEKBAR PROGRESS"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    int-to-float v0, p2

    #v0=(Float);
    sget v1, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->interval:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    #v0=(Integer);
    sget v1, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->interval:I

    #v1=(Integer);
    mul-int p2, v0, v1

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Integer;);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 72
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    #v0=(Integer);
    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    #v0=(Boolean);
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    int-to-float v0, p2

    #v0=(Float);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    .line 77
    invoke-direct {p0, p2}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->updatePreference(I)V

    .line 79
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 103
    if-eqz p1, :cond_1

    const/16 v1, 0x32

    #v1=(PosByte);
    invoke-virtual {p0, v1}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->getPersistedInt(I)I

    move-result v1

    #v1=(Integer);
    move v0, v1

    .line 104
    .end local p2
    .local v0, temp:I
    :goto_0
    #v0=(Integer);
    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->persistInt(I)Z

    .line 105
    :cond_0
    int-to-float v1, v0

    #v1=(Float);
    iput v1, p0, Lcom/clipcomm/WiFiRemocon/SeekBarPreference;->oldValue:F

    .line 106
    return-void

    .line 103
    .end local v0           #temp:I
    .restart local p2
    :cond_1
    #v0=(Uninit);v1=(Uninit);
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    move v0, v1

    #v0=(Integer);
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 88
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 91
    return-void
.end method
