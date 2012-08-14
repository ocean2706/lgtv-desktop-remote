.class public Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;
.super Ljava/lang/Object;
.source "PikerCtlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/PikerCtlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Event"
.end annotation


# instance fields
.field private m_nAction:I

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;);
    return-void
.end method

.method constructor <init>(Lcom/clipcomm/WiFiRemocon/PikerCtlView;I)V
    .locals 0
    .parameter
    .parameter "nAction"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->this$0:Lcom/clipcomm/WiFiRemocon/PikerCtlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;);
    invoke-virtual {p0, p2}, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->setAction(I)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->m_nAction:I

    #v0=(Integer);
    return v0
.end method

.method public setAction(I)V
    .locals 0
    .parameter "nAction"

    .prologue
    .line 282
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/PikerCtlView$Event;->m_nAction:I

    return-void
.end method
