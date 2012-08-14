.class public Lcom/clipcomm/WiFiRemocon/ChannelInfo;
.super Ljava/lang/Object;
.source "ChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/clipcomm/WiFiRemocon/ChannelInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_bIsChecked:Z

.field private m_lDBIndex:I

.field public m_strCHType:Ljava/lang/String;

.field public m_strDispName:Ljava/lang/String;

.field public m_strMajorCH:Ljava/lang/String;

.field public m_strMinorCH:Ljava/lang/String;

.field public m_strName:Ljava/lang/String;

.field public m_strPhyNum:Ljava/lang/String;

.field public m_strSrcIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    .line 19
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "strMajorCH"
    .parameter "strMinorCH"
    .parameter "strSrcIndex"
    .parameter "strPhyNum"
    .parameter "strCHType"
    .parameter "strName"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    .line 86
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "strMajorCH"
    .parameter "strMinorCH"
    .parameter "strSrcIndex"
    .parameter "strPhyNum"
    .parameter "strCHType"
    .parameter "strName"
    .parameter "strDispName"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    .line 41
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "strMajorCH"
    .parameter "strMinorCH"
    .parameter "strSrcIndex"
    .parameter "strPhyNum"
    .parameter "strCHType"
    .parameter "strName"
    .parameter "strDispName"
    .parameter "nDBIndex"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    .line 64
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 70
    iput-object p7, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 71
    iput p8, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    .line 72
    return-void
.end method


# virtual methods
.method GetDBIndex()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    #v0=(Integer);
    return v0
.end method

.method SetDBIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 102
    iput p1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    .line 103
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method isChecked()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_bIsChecked:Z

    #v0=(Boolean);
    return v0
.end method

.method setChecked(Z)V
    .locals 0
    .parameter "bChecked"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_bIsChecked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    const-string v1, "65535"

    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    #v0=(Boolean);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_lDBIndex:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return-void
.end method
