package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class TVInfoAdapter extends BaseAdapter
{
  ArrayList<TVInfo> m_arSrc;
  Context m_cxtMain;
  LayoutInflater m_layoutInflater;
  int m_nLayout;

  public TVInfoAdapter(Context paramContext, int paramInt, ArrayList<TVInfo> paramArrayList)
  {
    this.m_cxtMain = paramContext;
    this.m_layoutInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.m_arSrc = paramArrayList;
    this.m_nLayout = paramInt;
  }

  public int getCount()
  {
    return this.m_arSrc.size();
  }

  public String getItem(int paramInt)
  {
    return ((TVInfo)this.m_arSrc.get(paramInt)).toString();
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemPosFromMAC(String paramString)
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.m_arSrc.size());
      for (int j = -1; ; j = i)
      {
        return j;
        if (!((TVInfo)this.m_arSrc.get(i)).m_strMACAddr.equals(paramString))
          break;
      }
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = this.m_layoutInflater.inflate(this.m_nLayout, paramViewGroup, false);
    TVInfo localTVInfo = (TVInfo)this.m_arSrc.get(paramInt);
    ((TextView)paramView.findViewById(2131230741)).setText(localTVInfo.m_strName);
    TextView localTextView = (TextView)paramView.findViewById(2131230743);
    if ((localTVInfo.m_strDispname != null) && (localTVInfo.m_strDispname.length() > 0))
      localTextView.setText(localTVInfo.m_strDispname);
    while (true)
    {
      return paramView;
      localTextView.setText("");
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.TVInfoAdapter
 * JD-Core Version:    0.6.0
 */