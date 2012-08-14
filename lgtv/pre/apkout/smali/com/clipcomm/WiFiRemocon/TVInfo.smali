.class public Lcom/clipcomm/WiFiRemocon/TVInfo;
.super Ljava/lang/Object;
.source "TVInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/clipcomm/WiFiRemocon/TVInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_lDBIndex:J

.field public m_strAuthKey:Ljava/lang/String;

.field public m_strDispname:Ljava/lang/String;

.field public m_strIP:Ljava/lang/String;

.field public m_strMACAddr:Ljava/lang/String;

.field public m_strName:Ljava/lang/String;

.field public m_strPort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo$1;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo$1;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo$1;-><init>()V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo$1;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 26
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/clipcomm/WiFiRemocon/TVInfo;)V
    .locals 2
    .parameter "oldInfo"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 41
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "strName"
    .parameter "strIP"
    .parameter "strPort"
    .parameter "strText"
    .parameter "strAuthKey"
    .parameter "lDBIndex"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 61
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 66
    iput-wide p6, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "strName"
    .parameter "strDispname"
    .parameter "strIP"
    .parameter "strPort"
    .parameter "strText"
    .parameter "strAuthKey"
    .parameter "lDBIndex"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 83
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 89
    iput-wide p7, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 90
    return-void
.end method

.method public static getSPData(Landroid/content/SharedPreferences;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 4
    .parameter "instShPref"

    .prologue
    .line 160
    const-string v1, "macaddr"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 168
    :goto_0
    #v0=(Conflicted);v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);v3=(Conflicted);
    return-object v1

    .line 162
    :cond_0
    #v0=(Uninit);v1=(Boolean);v3=(Uninit);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>()V

    .line 163
    .local v0, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const-string v1, "name"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    .line 164
    const-string v1, "dispname"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    .line 165
    const-string v1, "macaddr"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    .line 166
    const-string v1, "dbindex"

    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    .line 167
    const-string v1, "IP"

    #v1=(Reference,Ljava/lang/String;);
    const-string v2, ""

    #v2=(Reference,Ljava/lang/String;);
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    move-object v1, v0

    .line 168
    goto :goto_0
.end method

.method public static resetSPData(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter "instEditor"

    .prologue
    .line 173
    const-string v0, "name"

    #v0=(Reference,Ljava/lang/String;);
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v0, "dispname"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v0, "macaddr"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v0, "dbindex"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string v0, "IP"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    return-void
.end method


# virtual methods
.method public SetAuthKey(Ljava/lang/String;)V
    .locals 0
    .parameter "strKey"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method putSPData(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .parameter "instEditor"

    .prologue
    .line 151
    const-string v0, "name"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v0, "dispname"

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v0, "macaddr"

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v0, "dbindex"

    iget-wide v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    #v1=(LongLo);v2=(LongHi);
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v0, "IP"

    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-wide v0, p0, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_lDBIndex:J

    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    return-void
.end method
