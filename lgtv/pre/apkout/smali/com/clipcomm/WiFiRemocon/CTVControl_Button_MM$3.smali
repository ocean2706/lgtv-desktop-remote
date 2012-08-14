.class Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;
.super Ljava/lang/Object;
.source "CTVControl_Button_MM.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;

.field private final synthetic val$btn:Landroid/widget/Button;

.field private final synthetic val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;Landroid/widget/Button;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;->val$btn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;)Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;);
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;->val$btn:Landroid/widget/Button;

    #v0=(Reference,Landroid/widget/Button;);
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3$1;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3$1;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;->val$btnInfo:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;);
    invoke-direct {v1, p0, v2}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3;Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$ButtonInfo;)V

    .line 135
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$3$1;);
    const-wide/16 v2, 0xa

    .line 127
    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method
