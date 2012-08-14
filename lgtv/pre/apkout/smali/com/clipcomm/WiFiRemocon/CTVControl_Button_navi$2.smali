.class Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;
.super Ljava/lang/Object;
.source "CTVControl_Button_navi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

.field private final synthetic val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;);
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    return v0

    .line 119
    :pswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bVibrateMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    iget v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;->m_nKeycodeID:I

    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 126
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_SOFT:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 123
    :sswitch_0
    #v0=(Integer);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;);
    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;->m_vVibrate:Landroid/os/Vibrator;

    sget v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_HARD:I

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x7f06007d -> :sswitch_0
        0x7f06008e -> :sswitch_0
    .end sparse-switch
.end method
