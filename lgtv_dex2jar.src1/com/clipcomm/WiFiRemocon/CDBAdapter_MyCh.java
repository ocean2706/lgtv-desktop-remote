package com.clipcomm.WiFiRemocon;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;

public class CDBAdapter_MyCh
{
  public static final int DB_COL_CH_DISPNAME = 7;
  public static final int DB_COL_CH_MAJOR = 1;
  public static final int DB_COL_CH_MINOR = 2;
  public static final int DB_COL_CH_NAME = 6;
  public static final int DB_COL_CH_PHYNUM = 4;
  public static final int DB_COL_CH_SRCIDX = 3;
  public static final int DB_COL_CH_TYPE = 5;
  private static final String DB_FILE_NAME = "mychList.db";
  private static final String DB_KEY_CH_DISPNAME = "ch_disp_name";
  private static final String DB_KEY_CH_MAJOR = "ch_major";
  private static final String DB_KEY_CH_MINOR = "ch_minor";
  private static final String DB_KEY_CH_NAME = "ch_name";
  private static final String DB_KEY_CH_PHYNUM = "ch_phynum";
  private static final String DB_KEY_CH_SRCIDX = "ch_srcidx";
  private static final String DB_KEY_CH_TYPE = "ch_type";
  private static final String DB_KEY_ID = "_id";
  private static final String DB_TABLE = "mychItems";
  private static final int DB_VERSION = 3;
  private final Context m_Context;
  private DBOpenHelper m_dbHelper;
  private SQLiteDatabase m_dbInst;

  public CDBAdapter_MyCh(Context paramContext, String paramString)
  {
    this.m_Context = paramContext;
    if (paramString == null);
    for (this.m_dbHelper = new DBOpenHelper(this.m_Context, "mychList.db", null, 3); ; this.m_dbHelper = new DBOpenHelper(this.m_Context, paramString, null, 3))
      return;
  }

  public void close()
  {
    if (this.m_dbInst != null)
      this.m_dbInst.close();
  }

  public Cursor getAllMyChInfoCursor()
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[8];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "ch_major";
    arrayOfString[2] = "ch_minor";
    arrayOfString[3] = "ch_srcidx";
    arrayOfString[4] = "ch_phynum";
    arrayOfString[5] = "ch_type";
    arrayOfString[6] = "ch_name";
    arrayOfString[7] = "ch_disp_name";
    return localSQLiteDatabase.query("mychItems", arrayOfString, null, null, null, null, "ch_major desc");
  }

  public ChannelInfo getChannelInfo(long paramLong)
  {
    Cursor localCursor = getCursorFromIndex(paramLong);
    if (localCursor == null);
    ChannelInfo localChannelInfo;
    for (Object localObject = null; ; localObject = localChannelInfo)
    {
      return localObject;
      localChannelInfo = new ChannelInfo(localCursor.getString(1), localCursor.getString(2), localCursor.getString(3), localCursor.getString(4), localCursor.getString(5), localCursor.getString(6), localCursor.getString(7));
      localCursor.close();
    }
  }

  public Cursor getCursorFromIndex(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[8];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "ch_major";
    arrayOfString[2] = "ch_minor";
    arrayOfString[3] = "ch_srcidx";
    arrayOfString[4] = "ch_phynum";
    arrayOfString[5] = "ch_type";
    arrayOfString[6] = "ch_name";
    arrayOfString[7] = "ch_disp_name";
    Cursor localCursor1 = localSQLiteDatabase.query(true, "mychItems", arrayOfString, "_id=" + paramLong, null, null, null, null, null);
    if ((localCursor1.getCount() == 0) || (!localCursor1.moveToFirst()))
      localCursor1.close();
    for (Cursor localCursor2 = null; ; localCursor2 = localCursor1)
      return localCursor2;
  }

  public long insertChInfo(ChannelInfo paramChannelInfo)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("ch_major", paramChannelInfo.m_strMajorCH);
    localContentValues.put("ch_minor", paramChannelInfo.m_strMinorCH);
    localContentValues.put("ch_srcidx", paramChannelInfo.m_strSrcIndex);
    localContentValues.put("ch_phynum", paramChannelInfo.m_strPhyNum);
    localContentValues.put("ch_type", paramChannelInfo.m_strCHType);
    localContentValues.put("ch_name", paramChannelInfo.m_strName);
    localContentValues.put("ch_disp_name", paramChannelInfo.m_strDispName);
    return this.m_dbInst.insert("mychItems", null, localContentValues);
  }

  public boolean isExistCH(ChannelInfo paramChannelInfo)
  {
    SQLiteDatabase localSQLiteDatabase = this.m_dbInst;
    String[] arrayOfString = new String[8];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "ch_major";
    arrayOfString[2] = "ch_minor";
    arrayOfString[3] = "ch_srcidx";
    arrayOfString[4] = "ch_phynum";
    arrayOfString[5] = "ch_type";
    arrayOfString[6] = "ch_name";
    arrayOfString[7] = "ch_disp_name";
    Cursor localCursor = localSQLiteDatabase.query(true, "mychItems", arrayOfString, "ch_major='" + paramChannelInfo.m_strMajorCH + "' AND " + "ch_minor" + "='" + paramChannelInfo.m_strMinorCH + "'", null, null, null, null, null);
    if ((localCursor.getCount() == 0) || (!localCursor.moveToFirst()))
      localCursor.close();
    for (int i = 0; ; i = 1)
      return i;
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

  public boolean removeChInfo(long paramLong)
  {
    if (this.m_dbInst.delete("mychItems", "_id=" + paramLong, null) > 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean updateChInfo(long paramLong, ChannelInfo paramChannelInfo)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("ch_major", paramChannelInfo.m_strMajorCH);
    localContentValues.put("ch_minor", paramChannelInfo.m_strMinorCH);
    localContentValues.put("ch_srcidx", paramChannelInfo.m_strSrcIndex);
    localContentValues.put("ch_phynum", paramChannelInfo.m_strPhyNum);
    localContentValues.put("ch_type", paramChannelInfo.m_strCHType);
    localContentValues.put("ch_name", paramChannelInfo.m_strName);
    localContentValues.put("ch_disp_name", paramChannelInfo.m_strDispName);
    if (this.m_dbInst.update("mychItems", localContentValues, "_id=" + paramLong, null) > 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean updateChInfo(ChannelInfo paramChannelInfo)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("ch_major", paramChannelInfo.m_strMajorCH);
    localContentValues.put("ch_minor", paramChannelInfo.m_strMinorCH);
    localContentValues.put("ch_srcidx", paramChannelInfo.m_strSrcIndex);
    localContentValues.put("ch_phynum", paramChannelInfo.m_strPhyNum);
    localContentValues.put("ch_type", paramChannelInfo.m_strCHType);
    localContentValues.put("ch_name", paramChannelInfo.m_strName);
    localContentValues.put("ch_disp_name", paramChannelInfo.m_strDispName);
    if (this.m_dbInst.update("mychItems", localContentValues, "_id=" + paramChannelInfo.GetDBIndex(), null) > 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  private static class DBOpenHelper extends SQLiteOpenHelper
  {
    private static final String DB_CREATE = "create table mychItems (_id integer primary key autoincrement, ch_major text not null, ch_minor text not null, ch_srcidx text not null, ch_phynum text not null, ch_type text not null, ch_name text not null, ch_disp_name text not null );";

    public DBOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
    {
      super(paramString, paramCursorFactory, paramInt);
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("create table mychItems (_id integer primary key autoincrement, ch_major text not null, ch_minor text not null, ch_srcidx text not null, ch_phynum text not null, ch_type text not null, ch_name text not null, ch_disp_name text not null );");
    }

    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS mychItems");
      onCreate(paramSQLiteDatabase);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CDBAdapter_MyCh
 * JD-Core Version:    0.6.0
 */