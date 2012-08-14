.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;

.field private final synthetic val$strGroupList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;->this$2:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;->val$strGroupList:[Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;->this$2:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;

    move-result-object v0

    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;->val$strGroupList:[Ljava/lang/String;

    #v1=(Reference,[Ljava/lang/String;);
    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->access$1(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;Ljava/lang/String;)V

    .line 213
    return-void
.end method
