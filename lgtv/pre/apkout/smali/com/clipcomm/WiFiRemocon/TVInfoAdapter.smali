.class public Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "TVInfoAdapter.java"


# instance fields
.field m_arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/TVInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_cxtMain:Landroid/content/Context;

.field m_layoutInflater:Landroid/view/LayoutInflater;

.field m_nLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "nLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/TVInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, arSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/TVInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;);
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_cxtMain:Landroid/content/Context;

    .line 35
    const-string v0, "layout_inflater"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    .line 37
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_nLayout:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/TVInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "nPosition"

    .prologue
    .line 55
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getItemPosFromMAC(Ljava/lang/String;)I
    .locals 2
    .parameter "strMAC"

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 73
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v1=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move v1, v0

    .line 70
    #v1=(Integer);
    goto :goto_1

    .line 66
    :cond_1
    #v1=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "nPosition"
    .parameter "convView"
    .parameter "vgParent"

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    #v3=(Reference,Landroid/view/LayoutInflater;);
    iget v4, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_nLayout:I

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/TVInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v3=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 84
    .local v0, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    const v3, 0x7f080015

    #v3=(Integer);
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, vText1:Landroid/widget/TextView;
    iget-object v3, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v3, 0x7f080017

    #v3=(Integer);
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference,Landroid/view/View;);
    check-cast v2, Landroid/widget/TextView;

    .line 87
    .local v2, vText2:Landroid/widget/TextView;
    iget-object v3, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_1

    .line 89
    iget-object v3, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-object p2

    .line 93
    :cond_1
    #v3=(Conflicted);
    const-string v3, ""

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
