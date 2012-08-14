.class Lcom/clipcomm/WiFiRemocon/TVInfo$1;
.super Ljava/lang/Object;
.source "TVInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/TVInfo;
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
        "Lcom/clipcomm/WiFiRemocon/TVInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo$1;);
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 10
    .parameter "source"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, strName:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, strDispname:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, strIP:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, strPort:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, strText:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, strAuthKey:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 138
    .local v9, lDBIndex:Ljava/lang/Long;
    #v9=(Reference,Ljava/lang/Long;);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/TVInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method

.method public newArray(I)[Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 144
    new-array v0, p1, [Lcom/clipcomm/WiFiRemocon/TVInfo;

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/TVInfo$1;->newArray(I)[Lcom/clipcomm/WiFiRemocon/TVInfo;

    move-result-object v0

    #v0=(Reference,[Lcom/clipcomm/WiFiRemocon/TVInfo;);
    return-object v0
.end method
