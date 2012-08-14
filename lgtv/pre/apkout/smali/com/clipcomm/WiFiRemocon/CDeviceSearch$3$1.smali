.class Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;
.super Ljava/lang/Object;
.source "CDeviceSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;);
    invoke-static {v0}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->access$0(Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;)Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    move-result-object v0

    iget-object v0, v0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_dbAdapterTVInfo:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3$1;->this$1:Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;);
    invoke-static {v1}, Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;->access$0(Lcom/clipcomm/WiFiRemocon/CDeviceSearch$3;)Lcom/clipcomm/WiFiRemocon/CDeviceSearch;

    move-result-object v1

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CDeviceSearch;->m_connectTVInfo:Lcom/clipcomm/WiFiRemocon/TVInfo;

    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->removeTVInfoFromMACAddr(Ljava/lang/String;)Z

    .line 337
    return-void
.end method
