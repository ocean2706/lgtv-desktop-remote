.class Lcom/strangeberry/jmdns/tools/Browser$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/strangeberry/jmdns/tools/Browser;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/strangeberry/jmdns/tools/Browser;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/strangeberry/jmdns/tools/Browser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/strangeberry/jmdns/tools/Browser$1;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    iput-object p2, p0, Lcom/strangeberry/jmdns/tools/Browser$1;->val$name:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/strangeberry/jmdns/tools/Browser$1;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/strangeberry/jmdns/tools/Browser$1;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    #v0=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    iget-object v1, p0, Lcom/strangeberry/jmdns/tools/Browser$1;->this$0:Lcom/strangeberry/jmdns/tools/Browser;

    #v1=(Reference,Lcom/strangeberry/jmdns/tools/Browser;);
    iget-object v1, v1, Lcom/strangeberry/jmdns/tools/Browser;->services:Ljavax/swing/DefaultListModel;

    iget-object v2, p0, Lcom/strangeberry/jmdns/tools/Browser$1;->val$name:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Lcom/strangeberry/jmdns/tools/Browser;->insertSorted(Ljavax/swing/DefaultListModel;Ljava/lang/String;)V

    .line 155
    return-void
.end method
