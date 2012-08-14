.class public Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DynamicLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;
    }
.end annotation


# instance fields
.field m_cbOnHideSoftkeyEventListener:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;

.field m_nDefaultHeight:I

.field m_nDefaultWidth:I

.field m_nMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_cbOnHideSoftkeyEventListener:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nMaxHeight:I

    .line 33
    const-string v1, "window"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 34
    .local v0, defaultDisplay:Landroid/view/Display;
    #v0=(Reference,Landroid/view/Display;);
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nDefaultWidth:I

    .line 35
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nDefaultHeight:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_cbOnHideSoftkeyEventListener:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nMaxHeight:I

    .line 47
    const-string v1, "window"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 48
    .local v0, defaultDisplay:Landroid/view/Display;
    #v0=(Reference,Landroid/view/Display;);
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nDefaultWidth:I

    .line 49
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nDefaultHeight:I

    .line 50
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 65
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nDefaultWidth:I

    #v0=(Integer);
    iget v1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nDefaultHeight:I

    #v1=(Integer);
    if-ge v0, v1, :cond_1

    .line 69
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nMaxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nMaxHeight:I

    .line 71
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 73
    :cond_0
    if-ne p1, p3, :cond_1

    iget v0, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_nMaxHeight:I

    if-ne p2, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_cbOnHideSoftkeyEventListener:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;);
    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_cbOnHideSoftkeyEventListener:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;

    invoke-interface {v0}, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;->onHideSoftkeyEvent()V

    .line 82
    :cond_1
    #v0=(Conflicted);
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 84
    return-void
.end method

.method public setOnHideSoftkeyEventListener(Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout;->m_cbOnHideSoftkeyEventListener:Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;

    .line 114
    return-void
.end method
