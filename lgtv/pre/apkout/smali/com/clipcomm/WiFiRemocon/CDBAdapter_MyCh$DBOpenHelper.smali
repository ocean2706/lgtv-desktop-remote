.class Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CDBAdapter_MyCh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# static fields
.field private static final DB_CREATE:Ljava/lang/String; = "create table mychItems (_id integer primary key autoincrement, ch_major text not null, ch_minor text not null, ch_srcidx text not null, ch_phynum text not null, ch_type text not null, ch_name text not null, ch_disp_name text not null );"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 317
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 318
    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "dbInst"

    .prologue
    .line 323
    const-string v0, "create table mychItems (_id integer primary key autoincrement, ch_major text not null, ch_minor text not null, ch_srcidx text not null, ch_phynum text not null, ch_type text not null, ch_name text not null, ch_disp_name text not null );"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "dbInst"
    .parameter "nOldVer"
    .parameter "nNewVer"

    .prologue
    .line 329
    const-string v0, "DROP TABLE IF EXISTS mychItems"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/clipcomm/WiFiRemocon/CDBAdapter_MyCh$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 331
    return-void
.end method
