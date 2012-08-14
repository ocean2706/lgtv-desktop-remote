.class public Lcom/clipcomm/WiFiRemocon/CHListView;
.super Landroid/widget/ListView;
.source "CHListView.java"


# instance fields
.field private m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

.field m_bClickCheckbox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 63
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CHListView;);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getCheckedItemNum()I
    .locals 3

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, nRet:I
    #v1=(Null);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getCount()I

    move-result v2

    #v2=(Integer);
    if-lt v0, v2, :cond_0

    .line 160
    return v1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v2, v0}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getChecked(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFirstCheckedItem()I
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getCount()I

    move-result v1

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 142
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v1, v0}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getChecked(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move v1, v0

    .line 139
    #v1=(Integer);
    goto :goto_1

    .line 135
    :cond_1
    #v1=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v0, p1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getChecked(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    .line 68
    #v9=(Null);
    const/4 v1, -0x1

    .line 70
    .local v1, nDownTouchPosition:I
    #v1=(Byte);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    #v7=(Integer);
    packed-switch v7, :pswitch_data_0

    .line 118
    :cond_0
    :pswitch_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_0
    #v4=(Conflicted);v7=(Boolean);
    return v7

    .line 73
    :pswitch_1
    #v0=(Uninit);v1=(Byte);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(Uninit);
    iput-boolean v9, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    #v7=(Float);
    float-to-int v7, v7

    #v7=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    #v8=(Float);
    float-to-int v8, v8

    #v8=(Integer);
    invoke-virtual {p0, v7, v8}, Lcom/clipcomm/WiFiRemocon/CHListView;->pointToPosition(II)I

    move-result v1

    .line 75
    #v1=(Integer);
    const/4 v7, -0x1

    #v7=(Byte);
    if-eq v1, v7, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/CHListView;->getFirstVisiblePosition()I

    move-result v7

    #v7=(Integer);
    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Lcom/clipcomm/WiFiRemocon/CHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, view:Landroid/view/View;
    #v6=(Reference,Landroid/view/View;);
    if-eqz v6, :cond_0

    .line 80
    const v7, 0x7f080013

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, imgView:Landroid/widget/ImageView;
    new-instance v5, Landroid/graphics/Rect;

    #v5=(UninitRef,Landroid/graphics/Rect;);
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v5, rect:Landroid/graphics/Rect;
    #v5=(Reference,Landroid/graphics/Rect;);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    #v7=(Float);
    float-to-int v2, v7

    .line 83
    .local v2, nPosX:I
    #v2=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    #v7=(Integer);
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v3, v7, v8

    .line 84
    .local v3, nPosY:I
    #v3=(Integer);
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 85
    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 86
    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 87
    iget v7, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0xa

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 89
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 91
    iput-boolean v10, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    .line 92
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    invoke-virtual {v7, v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getChecked(I)Z

    move-result v4

    .line 93
    .local v4, oldValue:Z
    #v4=(Boolean);
    iget-object v7, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    if-eqz v4, :cond_1

    move v8, v9

    :goto_1
    #v8=(Boolean);
    invoke-virtual {v7, v1, v8}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->setChecked(IZ)V

    .line 94
    if-nez v4, :cond_2

    .line 96
    const v7, 0x7f020043

    #v7=(Integer);
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move v7, v10

    .line 102
    #v7=(One);
    goto :goto_0

    :cond_1
    #v7=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);v8=(Integer);
    move v8, v10

    .line 93
    #v8=(One);
    goto :goto_1

    .line 100
    :cond_2
    #v8=(Boolean);
    const v7, 0x7f020042

    #v7=(Integer);
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 110
    .end local v0           #imgView:Landroid/widget/ImageView;
    .end local v2           #nPosX:I
    .end local v3           #nPosY:I
    .end local v4           #oldValue:Z
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v6           #view:Landroid/view/View;
    :pswitch_2
    #v0=(Uninit);v1=(Byte);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);
    iget-boolean v7, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 112
    iput-boolean v9, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_bClickCheckbox:Z

    move v7, v9

    .line 113
    #v7=(Null);
    goto/16 :goto_0

    .line 70
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    check-cast p1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    .end local p1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CHListView;->m_aaMyChAdapter:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;

    .line 58
    return-void
.end method
