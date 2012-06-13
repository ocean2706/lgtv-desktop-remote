package com.clipcomm.WiFiRemocon;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ChannelInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ChannelInfo> CREATOR = new Parcelable.Creator()
  {
    public ChannelInfo createFromParcel(Parcel paramParcel)
    {
      return new ChannelInfo(paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readInt());
    }

    public ChannelInfo[] newArray(int paramInt)
    {
      return new ChannelInfo[paramInt];
    }
  };
  private boolean m_bIsChecked;
  private int m_lDBIndex = -1;
  public String m_strCHType;
  public String m_strDispName;
  public String m_strMajorCH;
  public String m_strMinorCH;
  public String m_strName;
  public String m_strPhyNum;
  public String m_strSrcIndex;

  public ChannelInfo()
  {
    this.m_strMajorCH = new String();
    this.m_strMinorCH = new String();
    this.m_strSrcIndex = new String();
    this.m_strPhyNum = new String();
    this.m_strCHType = new String();
    this.m_strName = new String();
    this.m_strDispName = new String();
  }

  public ChannelInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.m_strMajorCH = paramString1;
    this.m_strMinorCH = paramString2;
    this.m_strSrcIndex = paramString3;
    this.m_strPhyNum = paramString4;
    this.m_strCHType = paramString5;
    this.m_strName = paramString6;
    this.m_strDispName = paramString6;
  }

  public ChannelInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.m_strMajorCH = paramString1;
    this.m_strMinorCH = paramString2;
    this.m_strSrcIndex = paramString3;
    this.m_strPhyNum = paramString4;
    this.m_strCHType = paramString5;
    this.m_strName = paramString6;
    this.m_strDispName = paramString7;
  }

  public ChannelInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt)
  {
    this.m_strMajorCH = paramString1;
    this.m_strMinorCH = paramString2;
    this.m_strSrcIndex = paramString3;
    this.m_strPhyNum = paramString4;
    this.m_strCHType = paramString5;
    this.m_strName = paramString6;
    this.m_strDispName = paramString7;
    this.m_lDBIndex = paramInt;
  }

  int GetDBIndex()
  {
    return this.m_lDBIndex;
  }

  void SetDBIndex(int paramInt)
  {
    this.m_lDBIndex = paramInt;
  }

  public int describeContents()
  {
    return 0;
  }

  boolean isChecked()
  {
    return this.m_bIsChecked;
  }

  void setChecked(boolean paramBoolean)
  {
    this.m_bIsChecked = paramBoolean;
  }

  public String toString()
  {
    if (this.m_strMinorCH.equals("65535"));
    for (String str = this.m_strMajorCH + " " + this.m_strDispName; ; str = this.m_strMajorCH + "-" + this.m_strMinorCH + " " + this.m_strDispName)
      return str;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.m_strMajorCH);
    paramParcel.writeString(this.m_strMinorCH);
    paramParcel.writeString(this.m_strSrcIndex);
    paramParcel.writeString(this.m_strPhyNum);
    paramParcel.writeString(this.m_strCHType);
    paramParcel.writeString(this.m_strName);
    paramParcel.writeString(this.m_strDispName);
    paramParcel.writeInt(this.m_lDBIndex);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.ChannelInfo
 * JD-Core Version:    0.6.0
 */