package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;

public class CHListView extends ListView
{
  private ChInfoAdapter m_aaMyChAdapter;
  boolean m_bClickCheckbox = false;

  public CHListView(Context paramContext)
  {
    super(paramContext);
  }

  public CHListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CHListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public int getCheckedItemNum()
  {
    int i = 0;
    for (int j = 0; ; j++)
    {
      if (j >= this.m_aaMyChAdapter.getCount())
        return i;
      if (!this.m_aaMyChAdapter.getChecked(j))
        continue;
      i++;
    }
  }

  public int getFirstCheckedItem()
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.m_aaMyChAdapter.getCount());
      for (int j = -1; ; j = i)
      {
        return j;
        if (!this.m_aaMyChAdapter.getChecked(i))
          break;
      }
    }
  }

  public boolean isItemChecked(int paramInt)
  {
    return this.m_aaMyChAdapter.getChecked(paramInt);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    switch (paramMotionEvent.getAction())
    {
    case 2:
    default:
      bool1 = super.onTouchEvent(paramMotionEvent);
    case 0:
    case 1:
    }
    while (true)
    {
      return bool1;
      this.m_bClickCheckbox = false;
      int i = pointToPosition((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if (i == -1)
        break;
      View localView = getChildAt(i - getFirstVisiblePosition());
      if (localView == null)
        break;
      ImageView localImageView = (ImageView)localView.findViewById(2131230739);
      Rect localRect = new Rect();
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY() - localView.getTop();
      localImageView.getHitRect(localRect);
      localRect.top = 0;
      localRect.left = 0;
      localRect.right = (10 + localRect.right);
      localRect.bottom = localView.getBottom();
      if (!localRect.contains(j, k))
        break;
      this.m_bClickCheckbox = true;
      boolean bool2 = this.m_aaMyChAdapter.getChecked(i);
      ChInfoAdapter localChInfoAdapter = this.m_aaMyChAdapter;
      boolean bool3;
      if (bool2)
      {
        bool3 = false;
        label207: localChInfoAdapter.setChecked(i, bool3);
        if (bool2)
          break label238;
        localImageView.setImageResource(2130837571);
      }
      while (true)
      {
        bool1 = true;
        break;
        bool3 = true;
        break label207;
        label238: localImageView.setImageResource(2130837570);
      }
      if (!this.m_bClickCheckbox)
        break;
      this.m_bClickCheckbox = false;
      bool1 = false;
    }
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.m_aaMyChAdapter = ((ChInfoAdapter)paramListAdapter);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CHListView
 * JD-Core Version:    0.6.0
 */