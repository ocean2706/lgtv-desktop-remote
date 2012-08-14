.class Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/strangeberry/jmdns/tools/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceTableModel"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4dd399593fe9d4f2L


# instance fields
.field final synthetic this$0:Lcom/strangeberry/jmdns/tools/Browser;


# direct methods
.method constructor <init>(Lcom/strangeberry/jmdns/tools/Browser;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    #p0=(Reference,Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;);
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    :goto_0
    #v0=(Reference,Ljava/lang/String;);
    return-object v0

    .line 323
    :pswitch_0
    #v0=(Uninit);
    const-string v0, "service"

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 325
    :pswitch_1
    #v0=(Uninit);
    const-string v0, "address"

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 327
    :pswitch_2
    #v0=(Uninit);
    const-string v0, "port"

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 329
    :pswitch_3
    #v0=(Uninit);
    const-string v0, "text"

    #v0=(Reference,Ljava/lang/String;);
    goto :goto_0

    .line 320
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    iget-object v0, v0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    invoke-virtual {v0}, Ljavax/swing/DefaultListModel;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser$ServiceTableModel;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    iget-object v0, v0, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    invoke-virtual {v0, p1}, Ljavax/swing/DefaultListModel;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
