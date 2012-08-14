.class Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;
.super Ljava/lang/Object;
.source "CTVControl_Button_navi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$btn:Landroid/widget/Button;

.field private final synthetic val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;Landroid/widget/Button;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;)Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi;);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;->val$btn:Landroid/widget/Button;

    #v0=(Reference,Landroid/widget/Button;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3$1;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;);
    invoke-direct {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$ButtonInfo;)V

    .line 149
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_navi$3$1;);
    const-wide/16 v2, 0xa

    .line 141
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method
