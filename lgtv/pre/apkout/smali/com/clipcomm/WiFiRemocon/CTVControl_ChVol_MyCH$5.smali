.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

.field private final synthetic val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;Landroid/widget/AdapterView$AdapterContextMenuInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;->val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;->this$0:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$5;->val$info:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #v1=(Reference,Landroid/widget/AdapterView$AdapterContextMenuInfo;);
    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH;->removeChInfo(I)V

    .line 347
    return-void
.end method
