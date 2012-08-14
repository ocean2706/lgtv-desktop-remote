.class public Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;
.super Ljava/lang/Object;
.source "CDBAdapter_MyCh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;
    }
.end annotation


# static fields
.field public static final DB_COL_CH_DISPNAME:I = 0x7

.field public static final DB_COL_CH_MAJOR:I = 0x1

.field public static final DB_COL_CH_MINOR:I = 0x2

.field public static final DB_COL_CH_NAME:I = 0x6

.field public static final DB_COL_CH_PHYNUM:I = 0x4

.field public static final DB_COL_CH_SRCIDX:I = 0x3

.field public static final DB_COL_CH_TYPE:I = 0x5

.field private static final DB_FILE_NAME:Ljava/lang/String; = "mychList.db"

.field private static final DB_KEY_CH_DISPNAME:Ljava/lang/String; = "ch_disp_name"

.field private static final DB_KEY_CH_MAJOR:Ljava/lang/String; = "ch_major"

.field private static final DB_KEY_CH_MINOR:Ljava/lang/String; = "ch_minor"

.field private static final DB_KEY_CH_NAME:Ljava/lang/String; = "ch_name"

.field private static final DB_KEY_CH_PHYNUM:Ljava/lang/String; = "ch_phynum"

.field private static final DB_KEY_CH_SRCIDX:Ljava/lang/String; = "ch_srcidx"

.field private static final DB_KEY_CH_TYPE:Ljava/lang/String; = "ch_type"

.field private static final DB_KEY_ID:Ljava/lang/String; = "_id"

.field private static final DB_TABLE:Ljava/lang/String; = "mychItems"

.field private static final DB_VERSION:I = 0x3


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

.field private m_dbInst:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "strDBFilename"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x3

    .line 81
    #v3=(PosByte);
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;);
    iput-object p1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_Context:Landroid/content/Context;

    .line 84
    if-nez p2, :cond_0

    .line 86
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_Context:Landroid/content/Context;

    #v1=(Reference,Landroid/content/Context;);
    const-string v2, "mychList.db"

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

    .line 92
    :goto_0
    #v2=(Conflicted);
    return-void

    .line 90
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_Context:Landroid/content/Context;

    #v1=(Reference,Landroid/content/Context;);
    invoke-direct {v0, v1, p2, v4, v3}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;);
    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 120
    :cond_0
    return-void
.end method

.method public getAllMyChInfoCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 232
    #v3=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 233
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v1, "mychItems"

    .line 234
    #v1=(Reference,Ljava/lang/String;);
    const/16 v2, 0x8

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "_id"

    #v5=(Reference,Ljava/lang/String;);
    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 235
    #v4=(One);
    const-string v5, "ch_major"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 236
    #v4=(PosByte);
    const-string v5, "ch_minor"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 237
    const-string v5, "ch_srcidx"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 238
    const-string v5, "ch_phynum"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 239
    const-string v5, "ch_type"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    .line 240
    const-string v5, "ch_name"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    .line 241
    const-string v5, "ch_disp_name"

    aput-object v5, v2, v4

    .line 242
    const-string v7, "ch_major desc"

    #v7=(Reference,Ljava/lang/String;);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    move-object v6, v3

    .line 232
    #v6=(Null);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChannelInfo(J)Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    .locals 9
    .parameter "nIndex"

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->getCursorFromIndex(J)Landroid/database/Cursor;

    move-result-object v8

    .line 281
    .local v8, resCursor:Landroid/database/Cursor;
    #v8=(Reference,Landroid/database/Cursor;);
    if-nez v8, :cond_0

    const/4 v1, 0x0

    .line 292
    :goto_0
    #v0=(Conflicted);v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-object v1

    .line 283
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    .line 284
    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    const/4 v1, 0x1

    #v1=(One);
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    #v2=(Reference,Ljava/lang/String;);
    const/4 v3, 0x3

    #v3=(PosByte);
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    #v3=(Reference,Ljava/lang/String;);
    const/4 v4, 0x4

    #v4=(PosByte);
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    #v4=(Reference,Ljava/lang/String;);
    const/4 v5, 0x5

    #v5=(PosByte);
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x6

    #v6=(PosByte);
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    #v6=(Reference,Ljava/lang/String;);
    const/4 v7, 0x7

    #v7=(PosByte);
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 283
    #v7=(Reference,Ljava/lang/String;);
    invoke-direct/range {v0 .. v7}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v0, info:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    .line 292
    goto :goto_0
.end method

.method public getCursorFromIndex(J)Landroid/database/Cursor;
    .locals 11
    .parameter "nIndex"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, 0x0

    .line 253
    #v5=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 254
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v2, "mychItems"

    .line 255
    #v2=(Reference,Ljava/lang/String;);
    const/16 v3, 0x8

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    const/4 v4, 0x0

    #v4=(Null);
    const-string v6, "_id"

    #v6=(Reference,Ljava/lang/String;);
    aput-object v6, v3, v4

    .line 256
    const-string v4, "ch_major"

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v3, v1

    const/4 v4, 0x2

    .line 257
    #v4=(PosByte);
    const-string v6, "ch_minor"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 258
    const-string v6, "ch_srcidx"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 259
    const-string v6, "ch_phynum"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 260
    const-string v6, "ch_type"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    .line 261
    const-string v6, "ch_name"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 262
    const-string v6, "ch_disp_name"

    aput-object v6, v3, v4

    .line 263
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

    .line 253
    #v9=(Null);
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 264
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

    .line 266
    :cond_0
    #v0=(Integer);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 269
    :goto_0
    #v0=(Reference,Landroid/database/Cursor;);
    return-object v0

    :cond_1
    #v0=(Boolean);
    move-object v0, v10

    #v0=(Reference,Landroid/database/Cursor;);
    goto :goto_0
.end method

.method public insertChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)J
    .locals 4
    .parameter "info"

    .prologue
    .line 130
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v0, newChInfoValues:Landroid/content/ContentValues;
    #v0=(Reference,Landroid/content/ContentValues;);
    const-string v1, "ch_major"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "ch_minor"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "ch_srcidx"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "ch_phynum"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "ch_type"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "ch_name"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "ch_disp_name"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mychItems"

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    return-wide v1
.end method

.method public isExistCH(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z
    .locals 12
    .parameter "info"

    .prologue
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, 0x0

    .line 205
    #v5=(Null);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    .line 206
    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v2, "mychItems"

    .line 207
    #v2=(Reference,Ljava/lang/String;);
    const/16 v3, 0x8

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference,[Ljava/lang/String;);
    const-string v4, "_id"

    #v4=(Reference,Ljava/lang/String;);
    aput-object v4, v3, v11

    .line 208
    const-string v4, "ch_major"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    .line 209
    #v4=(PosByte);
    const-string v6, "ch_minor"

    #v6=(Reference,Ljava/lang/String;);
    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 210
    const-string v6, "ch_srcidx"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 211
    const-string v6, "ch_phynum"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 212
    const-string v6, "ch_type"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    .line 213
    const-string v6, "ch_name"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    .line 214
    const-string v6, "ch_disp_name"

    aput-object v6, v3, v4

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "ch_major=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/StringBuilder;);
    iget-object v6, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ch_minor"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 205
    #v9=(Null);
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 217
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

    .line 219
    :cond_0
    #v0=(Integer);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 222
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    move v0, v1

    #v0=(One);
    goto :goto_0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 105
    :catch_0
    move-exception v1

    #v1=(Reference,Landroid/database/sqlite/SQLiteException;);
    move-object v0, v1

    .line 107
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    #v0=(Reference,Landroid/database/sqlite/SQLiteException;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbHelper:Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;

    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public removeChInfo(J)Z
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    #v0=(Reference,Landroid/database/sqlite/SQLiteDatabase;);
    const-string v1, "mychItems"

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

.method public updateChInfo(JLcom/clipcomm/WiFiRemocon/ChannelInfo;)Z
    .locals 5
    .parameter "nIndex"
    .parameter "newChInfo"

    .prologue
    .line 185
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v0, newChInfoValues:Landroid/content/ContentValues;
    #v0=(Reference,Landroid/content/ContentValues;);
    const-string v1, "ch_major"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "ch_minor"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "ch_srcidx"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "ch_phynum"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "ch_type"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "ch_name"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "ch_disp_name"

    iget-object v2, p3, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mychItems"

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

.method public updateChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z
    .locals 5
    .parameter "newChInfo"

    .prologue
    .line 163
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef,Landroid/content/ContentValues;);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v0, newChInfoValues:Landroid/content/ContentValues;
    #v0=(Reference,Landroid/content/ContentValues;);
    const-string v1, "ch_major"

    #v1=(Reference,Ljava/lang/String;);
    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "ch_minor"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "ch_srcidx"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "ch_phynum"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "ch_type"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "ch_name"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "ch_disp_name"

    iget-object v2, p1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;->m_dbInst:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "mychItems"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "_id="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {p1}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->GetDBIndex()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
