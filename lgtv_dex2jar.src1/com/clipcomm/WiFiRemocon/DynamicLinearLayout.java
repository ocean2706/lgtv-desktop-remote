package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Display;
import android.view.WindowManager;
import android.widget.LinearLayout;

public class DynamicLinearLayout extends LinearLayout
{
  onHideSoftkeyEventListener m_cbOnHideSoftkeyEventListener = null;
  int m_nDefaultHeight;
  int m_nDefaultWidth;
  int m_nMaxHeight = 0;

  public DynamicLinearLayout(Context paramContext)
  {
    super(paramContext);
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    this.m_nDefaultWidth = localDisplay.getWidth();
    this.m_nDefaultHeight = localDisplay.getHeight();
  }

  public DynamicLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    this.m_nDefaultWidth = localDisplay.getWidth();
    this.m_nDefaultHeight = localDisplay.getHeight();
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.m_nDefaultWidth < this.m_nDefaultHeight)
    {
      this.m_nMaxHeight = Math.max(this.m_nMaxHeight, paramInt2);
      if (((paramInt3 != 0) || (paramInt4 != 0)) && (paramInt1 == paramInt3) && (paramInt2 == this.m_nMaxHeight) && (this.m_cbOnHideSoftkeyEventListener != null))
        this.m_cbOnHideSoftkeyEventListener.onHideSoftkeyEvent();
    }
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setOnHideSoftkeyEventListener(onHideSoftkeyEventListener paramonHideSoftkeyEventListener)
  {
    this.m_cbOnHideSoftkeyEventListener = paramonHideSoftkeyEventListener;
  }

  public static abstract interface onHideSoftkeyEventListener
  {
    public abstract void onHideSoftkeyEvent();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.DynamicLinearLayout
 * JD-Core Version:    0.6.0
 */