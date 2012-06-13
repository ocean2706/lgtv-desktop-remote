package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;

public class NaviButtonView extends ImageView
{
  Bitmap m_bmpImg_Down;
  Bitmap m_bmpImg_Left;
  Bitmap m_bmpImg_Right;
  Bitmap m_bmpImg_Up;
  int m_nNaviCenter;
  int m_nSelectedScancode = 0;
  Vibrator m_vVibrate = null;

  public NaviButtonView(Context paramContext)
  {
    super(paramContext);
    LoadBitmap(paramContext, null);
  }

  public NaviButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LoadBitmap(paramContext, paramAttributeSet);
  }

  public NaviButtonView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LoadBitmap(paramContext, paramAttributeSet);
  }

  private void LoadBitmap(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.NaviButtonView);
    this.m_bmpImg_Up = ((BitmapDrawable)localTypedArray.getDrawable(0)).getBitmap();
    this.m_bmpImg_Down = ((BitmapDrawable)localTypedArray.getDrawable(1)).getBitmap();
    this.m_bmpImg_Left = ((BitmapDrawable)localTypedArray.getDrawable(2)).getBitmap();
    this.m_bmpImg_Right = ((BitmapDrawable)localTypedArray.getDrawable(3)).getBitmap();
    this.m_vVibrate = ((Vibrator)paramContext.getSystemService("vibrator"));
  }

  int getSelectedScancode(MotionEvent paramMotionEvent)
  {
    this.m_nNaviCenter = (getWidth() / 2);
    int i = (int)paramMotionEvent.getX() - this.m_nNaviCenter;
    int j = (int)paramMotionEvent.getY() - this.m_nNaviCenter;
    int k;
    if ((i < 0) && (j < 0))
      if (i > j)
        k = 2131099782;
    while (true)
    {
      return k;
      k = 2131099784;
      continue;
      if ((i >= 0) && (j < 0))
      {
        if (i > Math.abs(j))
        {
          k = 2131099785;
          continue;
        }
        k = 2131099782;
        continue;
      }
      if ((i < 0) && (j >= 0))
      {
        if (Math.abs(i) > j)
        {
          k = 2131099784;
          continue;
        }
        k = 2131099783;
        continue;
      }
      if (i > j)
      {
        k = 2131099785;
        continue;
      }
      k = 2131099783;
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    switch (this.m_nSelectedScancode)
    {
    default:
      super.onDraw(paramCanvas);
    case 2131099782:
    case 2131099783:
    case 2131099784:
    case 2131099785:
    }
    while (true)
    {
      return;
      paramCanvas.drawBitmap(this.m_bmpImg_Up, 0.0F, 0.0F, null);
      continue;
      paramCanvas.drawBitmap(this.m_bmpImg_Down, 0.0F, 0.0F, null);
      continue;
      paramCanvas.drawBitmap(this.m_bmpImg_Left, 0.0F, 0.0F, null);
      continue;
      paramCanvas.drawBitmap(this.m_bmpImg_Right, 0.0F, 0.0F, null);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      for (boolean bool = super.onTouchEvent(paramMotionEvent); ; bool = true)
      {
        return bool;
        this.m_nSelectedScancode = getSelectedScancode(paramMotionEvent);
        invalidate();
        post(new Runnable()
        {
          public void run()
          {
            if (LifeTime.getInstance().m_bVibrateMode)
              NaviButtonView.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_SOFT);
          }
        });
      }
      int i = getSelectedScancode(paramMotionEvent);
      if (i != 0)
        post(new Runnable(i)
        {
          public void run()
          {
            commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), NaviButtonView.this.getResources().getString(this.val$nScancodeID));
          }
        });
      this.m_nSelectedScancode = 0;
      invalidate();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.NaviButtonView
 * JD-Core Version:    0.6.0
 */