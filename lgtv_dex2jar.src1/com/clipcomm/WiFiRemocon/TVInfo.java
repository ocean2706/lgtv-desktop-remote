package com.clipcomm.WiFiRemocon;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TVInfo
  implements Parcelable
{
  public static final Parcelable.Creator<TVInfo> CREATOR = new Parcelable.Creator()
  {
    public TVInfo createFromParcel(Parcel paramParcel)
    {
      return new TVInfo(paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), Long.valueOf(paramParcel.readLong()).longValue());
    }

    public TVInfo[] newArray(int paramInt)
    {
      return new TVInfo[paramInt];
    }
  };
  public long m_lDBIndex = -1L;
  public String m_strAuthKey;
  public String m_strDispname;
  public String m_strIP;
  public String m_strMACAddr;
  public String m_strName;
  public String m_strPort;

  public TVInfo()
  {
    this.m_strName = new String();
    this.m_strDispname = new String();
    this.m_strIP = new String();
    this.m_strPort = new String();
    this.m_strMACAddr = new String();
    this.m_strAuthKey = new String();
  }

  public TVInfo(TVInfo paramTVInfo)
  {
    this.m_strName = paramTVInfo.m_strName;
    this.m_strDispname = paramTVInfo.m_strDispname;
    this.m_strIP = paramTVInfo.m_strIP;
    this.m_strPort = paramTVInfo.m_strPort;
    this.m_strMACAddr = paramTVInfo.m_strMACAddr;
    this.m_strAuthKey = paramTVInfo.m_strAuthKey;
  }

  public TVInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong)
  {
    this.m_strName = paramString1;
    this.m_strIP = paramString2;
    this.m_strPort = paramString3;
    this.m_strMACAddr = paramString4;
    this.m_strAuthKey = paramString5;
    this.m_lDBIndex = paramLong;
  }

  public TVInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong)
  {
    this.m_strName = paramString1;
    this.m_strDispname = paramString2;
    this.m_strIP = paramString3;
    this.m_strPort = paramString4;
    this.m_strMACAddr = paramString5;
    this.m_strAuthKey = paramString6;
    this.m_lDBIndex = paramLong;
  }

  public static TVInfo getSPData(SharedPreferences paramSharedPreferences)
  {
    if (paramSharedPreferences.getString("macaddr", "").equals(""));
    TVInfo localTVInfo;
    for (Object localObject = null; ; localObject = localTVInfo)
    {
      return localObject;
      localTVInfo = new TVInfo();
      localTVInfo.m_strName = paramSharedPreferences.getString("name", "");
      localTVInfo.m_strDispname = paramSharedPreferences.getString("dispname", "");
      localTVInfo.m_strMACAddr = paramSharedPreferences.getString("macaddr", "");
      localTVInfo.m_lDBIndex = paramSharedPreferences.getLong("dbindex", -1L);
      localTVInfo.m_strIP = paramSharedPreferences.getString("IP", "");
    }
  }

  public static void resetSPData(SharedPreferences.Editor paramEditor)
  {
    paramEditor.remove("name");
    paramEditor.remove("dispname");
    paramEditor.remove("macaddr");
    paramEditor.remove("dbindex");
    paramEditor.remove("IP");
  }

  public void SetAuthKey(String paramString)
  {
    this.m_strAuthKey = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  void putSPData(SharedPreferences.Editor paramEditor)
  {
    paramEditor.putString("name", this.m_strName);
    paramEditor.putString("dispname", this.m_strDispname);
    paramEditor.putString("macaddr", this.m_strMACAddr);
    paramEditor.putLong("dbindex", this.m_lDBIndex);
    paramEditor.putString("IP", this.m_strIP);
  }

  public String toString()
  {
    return this.m_strName;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.m_strName);
    paramParcel.writeString(this.m_strDispname);
    paramParcel.writeString(this.m_strIP);
    paramParcel.writeString(this.m_strPort);
    paramParcel.writeString(this.m_strMACAddr);
    paramParcel.writeString(this.m_strAuthKey);
    paramParcel.writeLong(this.m_lDBIndex);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.TVInfo
 * JD-Core Version:    0.6.0
 */