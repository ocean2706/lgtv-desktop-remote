.class public Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_Numpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonInfo"
.end annotation


# instance fields
.field m_nID:I

.field m_nKeycodeID:I

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;II)V
    .locals 0
    .parameter
    .parameter "nID"
    .parameter "nKeycodeID"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;);
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;->m_nID:I

    iput p3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_Numpad$ButtonInfo;->m_nKeycodeID:I

    return-void
.end method
