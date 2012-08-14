.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 187
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    move-result-object v3

    iget-object v4, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v4=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    const v5, 0x7f06002c

    #v5=(Integer);
    invoke-virtual {v3, v4, v5}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->show(Landroid/app/Activity;I)V

    .line 188
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/LifeTime;->GetDestInfo()Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->getFavoriteChannelPacket(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 190
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->getFAVGroupList()Ljava/util/ArrayList;

    move-result-object v2

    .line 191
    .local v2, strlistGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v2=(Reference,Ljava/util/ArrayList;);
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_0

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 194
    .local v1, strGroupList:[Ljava/lang/String;
    #v1=(Reference,[Ljava/lang/String;);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v3=(Conflicted);
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    #v3=(Integer);
    if-lt v0, v3, :cond_1

    .line 198
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;);
    invoke-direct {v3, p0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;[Ljava/lang/String;)V

    .line 220
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;);
    const-wide/16 v4, 0x1f4

    .line 198
    #v4=(LongLo);v5=(LongHi);
    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    .end local v0           #i:I
    .end local v1           #strGroupList:[Ljava/lang/String;
    .end local v2           #strlistGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;)Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 224
    return-void

    .line 196
    .restart local v0       #i:I
    .restart local v1       #strGroupList:[Ljava/lang/String;
    .restart local v2       #strlistGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    #v0=(Integer);v1=(Reference,[Ljava/lang/String;);v2=(Reference,Ljava/util/ArrayList;);v3=(Integer);v4=(Reference,Ljava/lang/Object;);v5=(Integer);
    new-instance v4, Ljava/lang/String;

    #v4=(UninitRef,Ljava/lang/String;);
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference,Ljava/lang/Object;);
    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v1, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
