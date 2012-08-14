.class public Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$ChInfoAdapter$ch_type:[I


# instance fields
.field m_arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_cxtMain:Landroid/content/Context;

.field m_layoutInflater:Landroid/view/LayoutInflater;

.field m_nLayout:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$ChInfoAdapter$ch_type()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$ChInfoAdapter$ch_type:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->values()[Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->NOVALUE:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->cable:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->satellite:Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$ChInfoAdapter$ch_type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

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
            "Lcom/clipcomm/WiFiRemocon/ChannelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, arSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/ChannelInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;);
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_cxtMain:Landroid/content/Context;

    .line 41
    const-string v0, "layout_inflater"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    .line 43
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_nLayout:I

    .line 44
    return-void
.end method


# virtual methods
.method public getChecked(I)Z
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->isChecked()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "nPosition"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "nPosition"

    .prologue
    .line 61
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "nPosition"
    .parameter "convView"
    .parameter "vgParent"

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    #v2=(Reference,Landroid/view/LayoutInflater;);
    iget v3, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_nLayout:I

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 122
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    const v2, 0x7f080014

    #v2=(Integer);
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, vImage:Landroid/widget/ImageView;
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$ChInfoAdapter$ch_type()[I

    move-result-object v3

    #v3=(Reference,[I);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->toCHType(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter$ch_type;->ordinal()I

    move-result v2

    #v2=(Integer);
    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 136
    :goto_0
    const v2, 0x7f080013

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #vImage:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .restart local v0       #vImage:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->isChecked()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 139
    const v2, 0x7f020043

    #v2=(Integer);
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    :goto_1
    const v2, 0x7f080015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference,Landroid/view/View;);
    check-cast v1, Landroid/widget/TextView;

    .line 147
    .local v1, vText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v2=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {p0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-object p2

    .line 126
    .end local v1           #vText:Landroid/widget/TextView;
    .restart local p0
    :pswitch_0
    #v1=(Uninit);v2=(Integer);
    const v2, 0x7f020037

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 129
    :pswitch_1
    const v2, 0x7f020094

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 132
    :pswitch_2
    const v2, 0x7f020071

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 143
    :cond_1
    #v2=(Boolean);
    const v2, 0x7f020042

    #v2=(Integer);
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 123
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "nPosition"
    .parameter "bChecked"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChInfoAdapter;->m_arSrc:Ljava/util/ArrayList;

    #v0=(Reference,Ljava/util/ArrayList;);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    invoke-virtual {p0, p2}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->setChecked(Z)V

    .line 102
    return-void
.end method
