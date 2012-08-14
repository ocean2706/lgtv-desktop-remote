.class public Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;
.super Ljava/lang/Object;
.source "CDBAdapter_TVInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;
    }
.end annotation


# static fields
.field public static final DB_COL_KEY_TV_AUTHKEY:I = 0x5

.field public static final DB_COL_TV_DISP_NAME:I = 0x3

.field public static final DB_COL_TV_MACADDR:I = 0x1

.field public static final DB_COL_TV_NAME:I = 0x2

.field public static final DB_COL_TV_PORT:I = 0x4

.field private static final DB_FILE_NAME:Ljava/lang/String; = "tvList.db"

.field private static final DB_KEY_ID:Ljava/lang/String; = "_id"

.field private static final DB_KEY_TV_AUTHKEY:Ljava/lang/String; = "tv_authkey"

.field private static final DB_KEY_TV_DISP_NAME:Ljava/lang/String; = "tv_disp_name"

.field private static final DB_KEY_TV_MACADDR:Ljava/lang/String; = "tv_macaddr"

.field private static final DB_KEY_TV_NAME:Ljava/lang/String; = "tv_name"

.field private static final DB_KEY_TV_PORT:Ljava/lang/String; = "tv_port"

.field private static final DB_TABLE:Ljava/lang/String; = "tvItems"

.field private static final DB_VERSION:I = 0x2


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;

.field private m_dbInst:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;);
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_Context:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_Context:Landroid/content/Context;

    #v1=(Reference,Landroid/content/Context;);
    const-string v2, "tvList.db"

    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;

    .line 77
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    :cond_0
    return-void
.end method

.method public getAllMyTVInfoCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 166
    #v3=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v1, "tvItems"

    .line 168
    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x6

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "_id"

    #v5=(Reference,Ljava/lang/String;);
    aput-object v5, v2, v4

    const/4 v4, 0x1

    #v4=(One);
    const-string v5, "tv_macaddr"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    const-string v5, "tv_name"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "tv_disp_name"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "tv_port"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "tv_authkey"

    aput-object v5, v2, v4

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    move-object v6, v3

    #v6=(Null);
    move-object v7, v3

    .line 166
    #v7=(Null);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCursorFromIndex(J)Landroid/database/Cursor;
    .locals 11
    .parameter "nIndex"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, 0x0

    .line 211
    #v5=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 212
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v2, "tvItems"

    .line 213
    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x6

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v6, "_id"

    #v6=(Reference,Ljava/lang/String;);
    aput-object v6, v3, v4

    const-string v4, "tv_macaddr"

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v3, v1

    const/4 v4, 0x2

    #v4=(PosByte);
    const-string v6, "tv_name"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "tv_disp_name"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "tv_port"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "tv_authkey"

    aput-object v6, v3, v4

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    #v6=(Null);
    move-object v7, v5

    #v7=(Null);
    move-object v8, v5

    #v8=(Null);
    move-object v9, v5

    .line 211
    #v9=(Null);
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 215
    .local v10, result:Landroid/database/Cursor;
    #v10=(Reference,Landroid/database/Cursor;);
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 217
    :cond_0
    #v0=(Integer);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 220
    :goto_0
    #v0=(Reference,Landroid/database/Cursor;);
    return-object v0

    :cond_1
    #v0=(Boolean);
    move-object v0, v10

    #v0=(Reference,Landroid/database/Cursor;);
    goto :goto_0
.end method

.method public getCursorFromMACAddr(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "strMACAddr"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, 0x0

    .line 191
    #v5=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v2, "tvItems"

    .line 193
    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x6

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v6, "_id"

    #v6=(Reference,Ljava/lang/String;);
    aput-object v6, v3, v4

    const-string v4, "tv_macaddr"

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v3, v1

    const/4 v4, 0x2

    #v4=(PosByte);
    const-string v6, "tv_name"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "tv_disp_name"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "tv_port"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "tv_authkey"

    aput-object v6, v3, v4

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "tv_macaddr= \'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    #v6=(Null);
    move-object v7, v5

    #v7=(Null);
    move-object v8, v5

    #v8=(Null);
    move-object v9, v5

    .line 191
    #v9=(Null);
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 195
    .local v10, result:Landroid/database/Cursor;
    #v10=(Reference,Landroid/database/Cursor;);
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 197
    :cond_0
    #v0=(Integer);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 200
    :goto_0
    #v0=(Reference,Landroid/database/Cursor;);
    return-object v0

    :cond_1
    #v0=(Boolean);
    move-object v0, v10

    #v0=(Reference,Landroid/database/Cursor;);
    goto :goto_0
.end method

.method public getTVInfo(J)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 10
    .parameter "nIndex"

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Null);
    invoke-virtual {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->getCursorFromIndex(J)Landroid/database/Cursor;

    move-result-object v9

    .line 266
    .local v9, resCursor:Landroid/database/Cursor;
    #v9=(Reference,Landroid/database/Cursor;);
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 268
    :cond_0
    #v1=(Integer);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 269
    const/4 v1, 0x0

    .line 282
    :goto_0
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v1

    .line 272
    :cond_1
    #v0=(Null);v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 273
    .end local v0           #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, ""

    .line 276
    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x4

    #v4=(PosByte);
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 278
    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    move-wide v7, p1

    .line 272
    #v7=(LongLo);v8=(LongHi);
    invoke-direct/range {v0 .. v8}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 281
    .restart local v0       #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    .line 282
    goto :goto_0
.end method

.method public getTVInfo(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/TVInfo;
    .locals 12
    .parameter "strMACAddr"

    .prologue
    .line 231
    const/4 v10, 0x0

    .line 232
    .local v10, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v10=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 233
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "tvItems"

    .line 234
    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x6

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "_id"

    #v5=(Reference,Ljava/lang/String;);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    const-string v5, "tv_macaddr"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    const-string v5, "tv_name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "tv_disp_name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "tv_port"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "tv_authkey"

    aput-object v5, v3, v4

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v5, "tv_macaddr= \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    .line 232
    #v9=(Null);
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 236
    .local v11, resCursor:Landroid/database/Cursor;
    #v11=(Reference,Landroid/database/Cursor;);
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 238
    :cond_0
    #v1=(Integer);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 v1, 0x0

    #v1=(Null);
    move-object v0, v10

    .line 252
    .end local v10           #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    .local v0, info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :goto_0
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);v5=(Reference,Ljava/lang/String;);v6=(Reference,Ljava/lang/String;);v7=(Conflicted);v8=(Conflicted);
    return-object v1

    .line 242
    .end local v0           #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    .restart local v10       #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    :cond_1
    #v1=(Boolean);v5=(Null);v6=(Null);v7=(Null);v8=(Null);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/TVInfo;

    .line 243
    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, ""

    .line 246
    const/4 v4, 0x4

    #v4=(PosByte);
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 247
    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x1

    #v5=(One);
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 249
    #v6=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 242
    #v7=(LongLo);v8=(LongHi);
    invoke-direct/range {v0 .. v8}, Lcom/clipcomm/WiFiRemocon/TVInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 251
    .end local v10           #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    .restart local v0       #info:Lcom/clipcomm/WiFiRemocon/TVInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/TVInfo;);
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    .line 252
    goto :goto_0
.end method

.method public insertTVInfo(Lcom/clipcomm/WiFiRemocon/TVInfo;)J
    .locals 4
    .parameter "info"

    .prologue
    .line 115
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, newTVInfoValues:Landroid/content/ContentValues;
    #v0=(Reference,Landroid/content/ContentValues;);
    const-string v1, "tv_macaddr"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "tv_name"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "tv_disp_name"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "tv_port"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "tv_authkey"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tvItems"

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    return-wide v1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 90
    :catch_0
    move-exception v1

    #v1=(Reference,Landroid/database/sqlite/SQLiteException;);
    move-object v0, v1

    .line 92
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    #v0=(Reference,Landroid/database/sqlite/SQLiteException;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public removeTVInfo(J)Z
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v1, "tvItems"

    #v1=(Reference,Ljava/lang/String;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "_id="

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public removeTVInfoFromMACAddr(Ljava/lang/String;)Z
    .locals 4
    .parameter "strMACAddr"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v1, "tvItems"

    #v1=(Reference,Ljava/lang/String;);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v3, "tv_macaddr= \'"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public updateTVInfo(JLcom/clipcomm/WiFiRemocon/TVInfo;)Z
    .locals 5
    .parameter "nIndex"
    .parameter "newInfo"

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, newTVInfoValues:Landroid/content/ContentValues;
    #v0=(Reference,Landroid/content/ContentValues;);
    const-string v1, "tv_macaddr"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strMACAddr:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "tv_name"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "tv_disp_name"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strDispname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "tv_port"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "tv_authkey"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/TVInfo;->m_strAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tvItems"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "_id="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    return v1

    :cond_0
    #v1=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method
