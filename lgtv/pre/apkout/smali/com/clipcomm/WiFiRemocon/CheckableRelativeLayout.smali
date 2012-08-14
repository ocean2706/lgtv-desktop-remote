.class public Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field final ATTR:Ljava/lang/String;

.field final NS:Ljava/lang/String;

.field checkable:Landroid/widget/Checkable;

.field checkableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;);
    const-string v0, "http://schemas.android.com/apk/res/com.clipcomm.WiFiRemocon"

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->NS:Ljava/lang/String;

    .line 19
    const-string v0, "checkable"

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->ATTR:Ljava/lang/String;

    .line 36
    const-string v0, "http://schemas.android.com/apk/res/com.clipcomm.WiFiRemocon"

    const-string v1, "checkable"

    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkableId:I

    .line 37
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkableId:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 47
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference,Landroid/widget/Checkable;);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 60
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkableId:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 61
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkableId:I

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference,Landroid/view/View;);
    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 75
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0
.end method
