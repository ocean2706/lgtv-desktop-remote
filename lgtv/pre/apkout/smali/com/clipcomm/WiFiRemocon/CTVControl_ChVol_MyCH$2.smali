.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->onBackPressed()V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->procBackPressed()V

    .line 80
    return-void
.end method
