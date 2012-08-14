.class public Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;
.super Ljava/lang/Object;
.source "CMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field m_nID:I

.field m_nIconResID:I

.field m_nTextResID:I

.field final synthetic this$0:Lcom/clipcomm/WiFiRemocon/CMainMenu;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CMainMenu;III)V
    .locals 0
    .parameter
    .parameter "nID"
    .parameter "nTextResID"
    .parameter "nIconResID"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->this$0:Lcom/clipcomm/WiFiRemocon/CMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;);
    iput p2, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nID:I

    iput p3, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nTextResID:I

    iput p4, p0, Lcom/clipcomm/WiFiRemocon/CMainMenu$ItemInfo;->m_nIconResID:I

    return-void
.end method
