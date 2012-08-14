package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

public class ChInfoAdapter extends BaseAdapter
{
  ArrayList<ChannelInfo> m_arSrc;
  Context m_cxtMain;
  LayoutInflater m_layoutInflater;
  int m_nLayout;

  public ChInfoAdapter(Context paramContext, int paramInt, ArrayList<ChannelInfo> paramArrayList)
  {
    this.m_cxtMain = paramContext;
    this.m_layoutInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.m_arSrc = paramArrayList;
    this.m_nLayout = paramInt;
  }

  public boolean getChecked(int paramInt)
  {
    return ((ChannelInfo)this.m_arSrc.get(paramInt)).isChecked();
  }

  public int getCount()
  {
    return this.m_arSrc.size();
  }

  public String getItem(int paramInt)
  {
    return ((ChannelInfo)this.m_arSrc.get(paramInt)).toString();
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = this.m_layoutInflater.inflate(this.m_nLayout, paramViewGroup, false);
    ImageView localImageView1 = (ImageView)paramView.findViewById(2131230740);
    ImageView localImageView2;
    switch ($SWITCH_TABLE$com$clipcomm$WiFiRemocon$ChInfoAdapter$ch_type()[ch_type.toCHType(((ChannelInfo)this.m_arSrc.get(paramInt)).m_strCHType).ordinal()])
    {
    default:
      localImageView2 = (ImageView)paramView.findViewById(2131230739);
      if (!((ChannelInfo)this.m_arSrc.get(paramInt)).isChecked())
        break;
      localImageView2.setImageResource(2130837571);
    case 2:
    case 3:
    case 1:
    }
    while (true)
    {
      ((TextView)paramView.findViewById(2131230741)).setText(((ChannelInfo)this.m_arSrc.get(paramInt)).toString());
      return paramView;
      localImageView1.setImageResource(2130837559);
      break;
      localImageView1.setImageResource(2130837652);
      break;
      localImageView1.setImageResource(2130837617);
      break;
      localImageView2.setImageResource(2130837570);
    }
  }

  public void setChecked(int paramInt, boolean paramBoolean)
  {
    ((ChannelInfo)this.m_arSrc.get(paramInt)).setChecked(paramBoolean);
  }

  public static enum ch_type
  {
    static
    {
      ch_type[] arrayOfch_type = new ch_type[3];
      arrayOfch_type[0] = NOVALUE;
      arrayOfch_type[1] = cable;
      arrayOfch_type[2] = satellite;
      ENUM$VALUES = arrayOfch_type;
    }

    public static ch_type toCHType(String paramString)
    {
      try
      {
        ch_type localch_type2 = valueOf(paramString);
        localch_type1 = localch_type2;
        return localch_type1;
      }
      catch (Exception localException)
      {
        while (true)
          ch_type localch_type1 = NOVALUE;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.ChInfoAdapter
 * JD-Core Version:    0.6.0
 */