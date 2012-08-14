.class Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;
.super Ljava/lang/Object;
.source "CWiFiRemocon_start.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->StartWiFiRemocon()V
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
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/lang/Thread;

    #v0=(UninitRef,Ljava/lang/Thread;);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start$6;->this$0:Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;

    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;);
    invoke-static {v2}, Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;->access$4(Lcom/clipcomm/WiFiRemocon/CWiFiRemocon_start;)Ljava/lang/Runnable;

    move-result-object v2

    const-string v3, "CWiFiRemocon_start:RequestAuthSession"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 208
    .local v0, thread:Ljava/lang/Thread;
    #v0=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method
