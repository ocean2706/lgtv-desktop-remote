.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH_Edit_Name.java"

# interfaces
.implements Lcom/clipcomm/WiFiRemocon/DynamicLinearLayout$onHideSoftkeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;);
    return-void
.end method


# virtual methods
.method public onHideSoftkeyEvent()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->setResult(I)V

    .line 80
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name$2;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;

    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH_Edit_Name;->finish()V

    .line 81
    return-void
.end method
