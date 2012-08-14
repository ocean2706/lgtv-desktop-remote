.class public Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;
.super Ljava/lang/Object;
.source "CTVControl_Button_navi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonInfo"
.end annotation


# instance fields
.field m_nID:I

.field m_nKeycodeID:I

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;II)V
    .locals 0
    .parameter
    .parameter "nID"
    .parameter "nKeycodeID"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;->m_nID:I

    iput p3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;->m_nKeycodeID:I

    return-void
.end method
