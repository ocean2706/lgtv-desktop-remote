.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;
    .locals 1
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->m_arMyChList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    check-cast v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 449
    .local v0, selectedChInfo:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    if-eqz v0, :cond_0

    .line 451
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;);
    invoke-direct {v1, p0, v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$1$1;);
    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void
.end method
