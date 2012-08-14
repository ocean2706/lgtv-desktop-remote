.class Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CDBAdapter_TVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "create table tvItems (_id integer primary key autoincrement, tv_macaddr text not null, tv_name text not null, tv_disp_name text, tv_port text not null, tv_authkey text not null );"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 306
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "dbInst"

    .prologue
    .line 311
    const-string v0, "create table tvItems (_id integer primary key autoincrement, tv_macaddr text not null, tv_name text not null, tv_disp_name text, tv_port text not null, tv_authkey text not null );"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "dbInst"
    .parameter "nOldVer"
    .parameter "nNewVer"

    .prologue
    .line 317
    const-string v0, "DROP TABLE IF EXISTS tvItems"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_TVInfo$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 319
    return-void
.end method
