package com.clipcomm.WiFiRemocon;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;

public class CDBAdapter_TVInfo
{
  public static final int DB_COL_KEY_TV_AUTHKEY = 5;
  public static final int DB_COL_TV_DISP_NAME = 3;
  public static final int DB_COL_TV_MACADDR = 1;
  public static final int DB_COL_TV_NAME = 2;
  public static final int DB_COL_TV_PORT = 4;
  private static final String DB_FILE_NAME = "tvList.db";
  private static final String DB_KEY_ID = "_id";
  private static final String DB_KEY_TV_AUTHKEY = "tv_authkey";
  private static final String DB_KEY_TV_DISP_NAME = "tv_disp_name";
  private static final String DB_KEY_TV_MACADDR = "tv_macaddr";
  private static final String DB_KEY_TV_NAME = "tv_name";
  private static final String DB_KEY_TV_PORT = "tv_port";
  private static final String DB_TABLE = "tvItems";
  private static final int DB_VERSION = 2;
  private final Context m_Context;
  private DBOpenHelper m_dbHelper;
  private SQLiteDatabase m_dbInst;

  public CDBAdapter_TVInfo(Context paramContext)
  {
    this.m_Context = paramContext;
    this.m_dbHelper = new DBOpenHelper(this.m_Context, "tvList.db", null, 2);
  }

  public void close()
  {
    if (this.m_dbInst != null)
      this.m_dbInst.close();
  }

  public Cursor getAllMyTVInfoCursor()
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "tv_macaddr";
    arrayOfString[2] = "tv_name";
    arrayOfString[3] = "tv_disp_name";
    arrayOfString[4] = "tv_port";
    arrayOfString[5] = "tv_authkey";
    return localSQLiteDatabase.query("tvItems", arrayOfString, null, null, null, null, null);
  }

  public Cursor getCursorFromIndex(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "tv_macaddr";
    arrayOfString[2] = "tv_name";
    arrayOfString[3] = "tv_disp_name";
    arrayOfString[4] = "tv_port";
    arrayOfString[5] = "tv_authkey";
    Cursor localCursor1 = localSQLiteDatabase.query(true, "tvItems", arrayOfString, "_id=" + paramLong, null, null, null, null, null);
    if ((localCursor1.getCount() == 0) || (!localCursor1.moveToFirst()))
      localCursor1.close();
    for (Cursor localCursor2 = null; ; localCursor2 = localCursor1)
      return localCursor2;
  }

  public Cursor getCursorFromMACAddr(String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "tv_macaddr";
    arrayOfString[2] = "tv_name";
    arrayOfString[3] = "tv_disp_name";
    arrayOfString[4] = "tv_port";
    arrayOfString[5] = "tv_authkey";
    Cursor localCursor1 = localSQLiteDatabase.query(true, "tvItems", arrayOfString, "tv_macaddr= '" + paramString + "'", null, null, null, null, null);
    if ((localCursor1.getCount() == 0) || (!localCursor1.moveToFirst()))
      localCursor1.close();
    for (Cursor localCursor2 = null; ; localCursor2 = localCursor1)
      return localCursor2;
  }

  public TVInfo getTVInfo(long paramLong)
  {
    Cursor localCursor = getCursorFromIndex(paramLong);
    if ((localCursor.getCount() == 0) || (!localCursor.moveToFirst()))
      localCursor.close();
    TVInfo localTVInfo;
    for (Object localObject = null; ; localObject = localTVInfo)
    {
      return localObject;
      localTVInfo = new TVInfo(localCursor.getString(2), localCursor.getString(3), "", localCursor.getString(4), localCursor.getString(1), localCursor.getString(5), paramLong);
      localCursor.close();
    }
  }

  public TVInfo getTVInfo(String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "tv_macaddr";
    arrayOfString[2] = "tv_name";
    arrayOfString[3] = "tv_disp_name";
    arrayOfString[4] = "tv_port";
    arrayOfString[5] = "tv_authkey";
    Cursor localCursor = localSQLiteDatabase.query(true, "tvItems", arrayOfString, "tv_macaddr= '" + paramString + "'", null, null, null, null, null);
    if ((localCursor.getCount() == 0) || (!localCursor.moveToFirst()))
      localCursor.close();
    TVInfo localTVInfo;
    for (Object localObject = null; ; localObject = localTVInfo)
    {
      return localObject;
      localTVInfo = new TVInfo(localCursor.getString(2), localCursor.getString(3), "", localCursor.getString(4), localCursor.getString(1), localCursor.getString(5), localCursor.getLong(0));
      localCursor.close();
    }
  }

  public long insertTVInfo(TVInfo paramTVInfo)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("tv_macaddr", paramTVInfo.m_strMACAddr);
    localContentValues.put("tv_name", paramTVInfo.m_strName);
    localContentValues.put("tv_disp_name", paramTVInfo.m_strDispname);
    localContentValues.put("tv_port", paramTVInfo.m_strPort);
    localContentValues.put("tv_authkey", paramTVInfo.m_strAuthKey);
    return this.m_dbInst.insert("tvItems", null, localContentValues);
  }

  public void open()
    throws SQLiteException
  {
    try
    {
      this.m_dbInst = this.m_dbHelper.getWritableDatabase();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
        this.m_dbInst = this.m_dbHelper.getReadableDatabase();
    }
  }

  public boolean removeTVInfo(long paramLong)
  {
    if (this.m_dbInst.delete("tvItems", "_id=" + paramLong, null) > 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean removeTVInfoFromMACAddr(String paramString)
  {
    if (this.m_dbInst.delete("tvItems", "tv_macaddr= '" + paramString + "'", null) > 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean updateTVInfo(long paramLong, TVInfo paramTVInfo)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("tv_macaddr", paramTVInfo.m_strMACAddr);
    localContentValues.put("tv_name", paramTVInfo.m_strName);
    localContentValues.put("tv_disp_name", paramTVInfo.m_strDispname);
    localContentValues.put("tv_port", paramTVInfo.m_strPort);
    localContentValues.put("tv_authkey", paramTVInfo.m_strAuthKey);
    if (this.m_dbInst.update("tvItems", localContentValues, "_id=" + paramLong, null) > 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  private static class DBOpenHelper extends SQLiteOpenHelper
  {
    private static final String DB_CREATE = "create table tvItems (_id integer primary key autoincrement, tv_macaddr text not null, tv_name text not null, tv_disp_name text, tv_port text not null, tv_authkey text not null );";

    public DBOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
    {
      super(paramString, paramCursorFactory, paramInt);
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("create table tvItems (_id integer primary key autoincrement, tv_macaddr text not null, tv_name text not null, tv_disp_name text, tv_port text not null, tv_authkey text not null );");
    }

    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS tvItems");
      onCreate(paramSQLiteDatabase);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CDBAdapter_TVInfo
 * JD-Core Version:    0.6.0
 */