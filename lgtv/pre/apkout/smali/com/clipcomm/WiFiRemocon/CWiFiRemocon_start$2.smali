.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;
.super Ljava/lang/Object;
.source "CWiFiRemocon_start.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    iget-object v1, v1, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->m_msgboxWaitForConnect:Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CWaitMessagebox;->cancel()V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v2, "["

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$1(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060005

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, strMsg:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    #v1=(Reference,Landroid/app/AlertDialog$Builder;);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 278
    const v2, 0x1080040

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 281
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)V

    .line 280
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$1;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    invoke-virtual {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    new-instance v3, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;

    #v3=(UninitRef,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;);
    invoke-direct {v3, p0}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;-><init>(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2;)V

    .line 293
    #v3=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$2$2;);
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 304
    return-void
.end method
