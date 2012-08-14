.class public Lcom/clipcomm/WiFiRemocon/CGlobalResources;
.super Ljava/lang/Object;
.source "CGlobalResources.java"


# static fields
.field public static VIBRATE_LEVEL_HARD:I

.field public static VIBRATE_LEVEL_SOFT:I

.field public static VIBRATE_LEVEL_WHELL:I

.field private static volatile uniqueInstance:Lcom/clipcomm/WiFiRemocon/CGlobalResources;


# instance fields
.field private m_pMode:I

.field private m_pPopup:I

.field private m_pTap:I

.field private m_soundMode:Landroid/media/SoundPool;

.field private m_soundPopup:Landroid/media/SoundPool;

.field private m_soundTap:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xa

    #v0=(PosByte);
    sput v0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_WHELL:I

    .line 46
    const/16 v0, 0x32

    sput v0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_SOFT:I

    .line 47
    const/16 v0, 0x78

    sput v0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->VIBRATE_LEVEL_HARD:I

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    return-void
.end method

.method public static getInstance()Lcom/clipcomm/WiFiRemocon/CGlobalResources;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/CGlobalResources;-><init>()V

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CGlobalResources;);
    sput-object v1, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    #v1=(Conflicted);
    sget-object v0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->uniqueInstance:Lcom/clipcomm/WiFiRemocon/CGlobalResources;

    return-object v0

    .line 17
    :catchall_0
    move-exception v1

    :try_start_1
    #v1=(Reference,Ljava/lang/Throwable;);
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public LoadSound(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x3

    #v3=(PosByte);
    const/4 v2, 0x1

    .line 57
    #v2=(One);
    new-instance v0, Landroid/media/SoundPool;

    #v0=(UninitRef,Landroid/media/SoundPool;);
    invoke-direct {v0, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    #v0=(Reference,Landroid/media/SoundPool;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundMode:Landroid/media/SoundPool;

    .line 58
    new-instance v0, Landroid/media/SoundPool;

    #v0=(UninitRef,Landroid/media/SoundPool;);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {v0, v1, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    #v0=(Reference,Landroid/media/SoundPool;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundPopup:Landroid/media/SoundPool;

    .line 59
    new-instance v0, Landroid/media/SoundPool;

    #v0=(UninitRef,Landroid/media/SoundPool;);
    invoke-direct {v0, v3, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    #v0=(Reference,Landroid/media/SoundPool;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundTap:Landroid/media/SoundPool;

    .line 61
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundMode:Landroid/media/SoundPool;

    const/high16 v1, 0x7f05

    #v1=(Integer);
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_pMode:I

    .line 62
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundPopup:Landroid/media/SoundPool;

    #v0=(Reference,Landroid/media/SoundPool;);
    const v1, 0x7f050001

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_pPopup:I

    .line 63
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundTap:Landroid/media/SoundPool;

    #v0=(Reference,Landroid/media/SoundPool;);
    const v1, 0x7f050002

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_pTap:I

    .line 65
    return-void
.end method

.method public PlaySoundMode()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/high16 v2, 0x3f80

    .line 72
    #v2=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundMode:Landroid/media/SoundPool;

    #v0=(Reference,Landroid/media/SoundPool;);
    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundMode:Landroid/media/SoundPool;

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_pMode:I

    #v1=(Integer);
    move v3, v2

    #v3=(Integer);
    move v5, v4

    #v5=(Null);
    move v6, v2

    #v6=(Integer);
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 76
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method

.method public PlaySoundPopup()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/high16 v2, 0x4000

    .line 83
    #v2=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundPopup:Landroid/media/SoundPool;

    #v0=(Reference,Landroid/media/SoundPool;);
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundPopup:Landroid/media/SoundPool;

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_pPopup:I

    #v1=(Integer);
    const/high16 v6, 0x3f80

    #v6=(Integer);
    move v3, v2

    #v3=(Integer);
    move v5, v4

    #v5=(Null);
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 87
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method

.method public PlaySoundTap()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/high16 v2, 0x3f80

    .line 94
    #v2=(Integer);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundTap:Landroid/media/SoundPool;

    #v0=(Reference,Landroid/media/SoundPool;);
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_soundTap:Landroid/media/SoundPool;

    iget v1, p0, Lcom/clipcomm/WiFiRemocon/CGlobalResources;->m_pTap:I

    #v1=(Integer);
    move v3, v2

    #v3=(Integer);
    move v5, v4

    #v5=(Null);
    move v6, v2

    #v6=(Integer);
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 98
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method
