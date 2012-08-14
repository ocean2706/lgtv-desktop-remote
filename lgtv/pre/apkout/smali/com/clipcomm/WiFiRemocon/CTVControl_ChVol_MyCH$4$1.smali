.class Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;
.super Ljava/lang/Object;
.source "CTVControl_ChVol_MyCH.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;

.field private final synthetic val$strGroupList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;

    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->val$strGroupList:[Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;);
    return-void
.end method

.method static synthetic access$0(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;)Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->this$1:Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4;);
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef,Landroid/app/AlertDialog$Builder;);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CTVControl_RootUI;->getActivity()Landroid/app/ActivityGroup;

    move-result-object v1

    #v1=(Reference,Landroid/app/ActivityGroup;);
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    #v0=(Reference,Landroid/app/AlertDialog$Builder;);
    const v1, 0x7f06002d

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->val$strGroupList:[Ljava/lang/String;

    .line 207
    #v1=(Reference,[Ljava/lang/String;);
    new-instance v2, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;

    #v2=(UninitRef,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;);
    iget-object v3, p0, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;->val$strGroupList:[Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    invoke-direct {v2, p0, v3}, Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;-><init>(Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1;[Ljava/lang/String;)V

    .line 206
    #v2=(Reference,Lcom/clipcomm/WiFiRemocon/CTVControl_ChVol_MyCH$4$1$1;);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    const v1, 0x7f06002f

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    iget-boolean v0, v0, Lcom/clipcomm/WiFiRemocon/LifeTime;->m_bSoundEffect:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->PlaySoundPopup()V

    .line 218
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
