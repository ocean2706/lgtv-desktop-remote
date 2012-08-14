.class Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;
.super Ljava/lang/Object;
.source "CTVControl_Button_MM.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM$1;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_Button_MM;->procBackPressed()V

    .line 83
    return-void
.end method
