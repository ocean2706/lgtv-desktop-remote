.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Add.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/PikerCtlView$OnWheelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add;);
    return-object v0
.end method


# virtual methods
.method public onWheelEvent(Lcom/clipcomm/WiFiRemocon/PikerCtlView;Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;)V
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    const-wide/16 v1, 0xa

    .line 167
    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {p2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 170
    :pswitch_0
    #v0=(Integer);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$1;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$1;);
    invoke-virtual {p1, v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 182
    :pswitch_1
    #v0=(Integer);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;);
    invoke-direct {v0, p0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5;)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Add$5$2;);
    invoke-virtual {p1, v0, v1, v2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
