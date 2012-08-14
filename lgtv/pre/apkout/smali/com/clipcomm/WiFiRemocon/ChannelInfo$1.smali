.class Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;
.super Ljava/lang/Object;
.source "ChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/ChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/clipcomm/WiFiRemocon/ChannelInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;);
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    .locals 9
    .parameter "source"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, strMajorCH:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, strMinorCH:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, strSrcIndex:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, strPhyNum:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, m_strCHType:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, strName:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, strDispName:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 194
    .local v8, nDBIndex:I
    #v8=(Integer);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    invoke-direct/range {v0 .. v8}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    return-object v0
.end method

.method public newArray(I)[Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 200
    new-array v0, p1, [Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/ChannelInfo$1;->newArray(I)[Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    move-result-object v0

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    return-object v0
.end method
