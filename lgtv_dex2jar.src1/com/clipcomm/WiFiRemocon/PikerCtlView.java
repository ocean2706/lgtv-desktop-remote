package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;

public class PikerCtlView extends ImageView
{
  public static final int BTN_DOWN = 4;
  public static final int BTN_UP = 3;
  private static int DEF_WHEEL_HEIGHT = 0;
  public static final int WHEEL_DOWN = 2;
  public static final int WHEEL_UP = 1;
  boolean m_bPushDownBtn = false;
  boolean m_bPushUpBtn = false;
  float m_fMaxDelta = 0.0F;
  float m_fOldRad;
  float m_fOldRadForTrigger;
  float m_fOldYPos = 0.0F;
  Handler m_hEventAnimation = null;
  Handler m_hEvtInputDnRepeat = null;
  Handler m_hEvtInputUpRepeat = null;
  OnWheelEventListener m_iOnWheelEventListener = null;
  IconType m_iconCaption = new IconType();
  IconType m_iconDown = new IconType();
  IconType[] m_iconPikeLine = new IconType[6];
  IconType m_iconUp = new IconType();
  int m_nCntInputRepeat = 0;
  private CWheelAniThread m_thAniThread = null;
  private CInputRepeatTimer m_thInputDnRptTimer = null;
  private CInputRepeatTimer m_thInputUpRptTimer = null;
  Vibrator m_vVibrate = null;

  public PikerCtlView(Context paramContext)
  {
    super(paramContext);
    InitPikeControl(paramContext, null);
  }

  public PikerCtlView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    InitPikeControl(paramContext, paramAttributeSet);
  }

  public PikerCtlView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    InitPikeControl(paramContext, paramAttributeSet);
  }

  private void GetBtnRegion()
  {
    int i = DEF_WHEEL_HEIGHT / 2;
    int j = 0;
    int k = 0;
    int m = 1;
    if (m > 12);
    int n;
    while (true)
    {
      return;
      double d = 3.141592653589793D * (m * 2 - 1) / 12.0D;
      if (d < 0.0D)
        break;
      if (d > 3.141592653589793D)
        d += 3.141592653589793D;
      n = i - (int)(Math.cos(d) * i);
      if (j > 5)
        continue;
      switch (k % 6)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      j++;
      k++;
      m++;
      break;
      this.m_iconUp.setBtnSY(n + 4);
      continue;
      this.m_iconUp.setBtnDY(n + 4);
      continue;
      this.m_iconDown.setBtnSY(n + 4);
      continue;
      this.m_iconDown.setBtnDY(n + 4);
    }
  }

  private void InitPikeControl(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PikerCtlView);
      this.m_iconCaption.LoadIcon(localTypedArray, 11, 13, 12);
      this.m_iconUp.LoadIcon(localTypedArray, 4, 7, 6);
      this.m_iconDown.LoadIcon(localTypedArray, 8, 10, 9);
      this.m_iconPikeLine[0] = new IconType(localTypedArray, 0, 16);
      this.m_iconPikeLine[1] = new IconType(localTypedArray, 0, 16);
      this.m_iconPikeLine[2] = new IconType(localTypedArray, 1, 16);
      this.m_iconPikeLine[3] = new IconType(localTypedArray, 2, 16);
      this.m_iconPikeLine[4] = new IconType(localTypedArray, 3, 16);
      this.m_iconPikeLine[5] = new IconType(localTypedArray, 3, 16);
    }
    this.m_hEvtInputUpRepeat = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        PikerCtlView localPikerCtlView = PikerCtlView.this;
        localPikerCtlView.m_nCntInputRepeat = (1 + localPikerCtlView.m_nCntInputRepeat);
        PikerCtlView.this.m_thAniThread.Play(-1, 1);
        super.handleMessage(paramMessage);
      }
    };
    this.m_hEvtInputDnRepeat = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        PikerCtlView localPikerCtlView = PikerCtlView.this;
        localPikerCtlView.m_nCntInputRepeat = (1 + localPikerCtlView.m_nCntInputRepeat);
        PikerCtlView.this.m_thAniThread.Play(1, 1);
        super.handleMessage(paramMessage);
      }
    };
    this.m_hEventAnimation = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        if (paramMessage.what % 999 == 0)
          if (paramMessage.what < 0)
            PikerCtlView.this.processBtnEvent(1);
        while (true)
        {
          return;
          PikerCtlView.this.processBtnEvent(2);
          continue;
          PikerCtlView.this.adjustPikeDrawPos(PikerCtlView.DEF_WHEEL_HEIGHT, (float)(0.04363323129985824D * paramMessage.what));
          PikerCtlView.this.invalidate();
          super.handleMessage(paramMessage);
        }
      }
    };
    GetBtnRegion();
    this.m_thInputUpRptTimer = new CInputRepeatTimer(this.m_hEvtInputUpRepeat, 75);
    this.m_thInputDnRptTimer = new CInputRepeatTimer(this.m_hEvtInputDnRepeat, 75);
    this.m_thAniThread = new CWheelAniThread(this.m_hEventAnimation);
    this.m_vVibrate = ((Vibrator)paramContext.getSystemService("vibrator"));
    this.m_thInputUpRptTimer.setName("PikerCtlView:InputUpRptTimer");
    this.m_thInputUpRptTimer.start();
    this.m_thInputDnRptTimer.setName("PikerCtlView:InputDnRptTimer");
    this.m_thInputDnRptTimer.start();
    this.m_thAniThread.setName("PikerCtlView:AniThread");
    this.m_thAniThread.start();
  }

  private void adjustPikeDrawPos(int paramInt, float paramFloat)
  {
    int i = paramInt / 2;
    int j = 0;
    int k = (int)(paramFloat / 0.5235987755982988D);
    for (int m = 1; ; m++)
    {
      if (m > 12);
      while (true)
      {
        return;
        double d = 3.141592653589793D * (m * 2 - 1) / 12.0D + paramFloat;
        if (d < 0.0D)
          break;
        if (d > 3.141592653589793D)
          d += 3.141592653589793D;
        int n = i - (int)(Math.cos(d) * i);
        if (j > 5)
          continue;
        this.m_iconPikeLine[(k % 6)].SetPos(0, n + 4);
        j++;
      }
      k++;
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    this.m_iconCaption.DrawIcon(paramCanvas);
    this.m_iconUp.DrawIcon(paramCanvas);
    this.m_iconDown.DrawIcon(paramCanvas);
    int i = 0;
    if (i >= 6)
      return;
    if ((this.m_iconPikeLine[i].m_nY < 12) || (this.m_iconPikeLine[i].m_nY > DEF_WHEEL_HEIGHT - 10));
    while (true)
    {
      i++;
      break;
      this.m_iconPikeLine[i].DrawIcon(paramCanvas);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    DEF_WHEEL_HEIGHT = getSuggestedMinimumHeight();
    adjustPikeDrawPos(DEF_WHEEL_HEIGHT, 0.0F);
    setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      while (true)
      {
        return bool;
        this.m_nCntInputRepeat = 0;
        if (this.m_iconUp.hitTest(paramMotionEvent.getX(), paramMotionEvent.getY()))
        {
          this.m_thInputUpRptTimer.Input(true);
          this.m_bPushUpBtn = true;
        }
        if (this.m_iconDown.hitTest(paramMotionEvent.getX(), paramMotionEvent.getY()))
        {
          this.m_thInputDnRptTimer.Input(true);
          this.m_bPushDownBtn = true;
        }
        this.m_fOldYPos = paramMotionEvent.getY();
        bool = true;
        continue;
        if ((this.m_bPushUpBtn) && (!this.m_iconUp.hitTest(paramMotionEvent.getX(), paramMotionEvent.getY())))
        {
          this.m_thAniThread.stop();
          this.m_thInputUpRptTimer.Input(false);
          this.m_bPushUpBtn = false;
        }
        if ((this.m_bPushDownBtn) && (!this.m_iconDown.hitTest(paramMotionEvent.getX(), paramMotionEvent.getY())))
        {
          this.m_thAniThread.stop();
          this.m_thInputDnRptTimer.Input(false);
          this.m_bPushDownBtn = false;
        }
        bool = true;
      }
      this.m_nCntInputRepeat = 0;
      this.m_thInputUpRptTimer.Input(false);
      this.m_thInputDnRptTimer.Input(false);
      if ((!this.m_bPushUpBtn) && (!this.m_bPushDownBtn))
      {
        int i = (int)(paramMotionEvent.getY() - this.m_fOldYPos);
        if (i > 0)
        {
          if (i < 80)
            continue;
          this.m_thAniThread.Play(1, i / 20);
          continue;
        }
        if (i > -80)
          continue;
        this.m_thAniThread.Play(-1, Math.abs(i / 20));
        continue;
      }
      if (this.m_bPushUpBtn)
      {
        this.m_thAniThread.Play(-1, 1);
        this.m_bPushUpBtn = false;
      }
      if (this.m_bPushDownBtn)
      {
        this.m_bPushDownBtn = false;
        this.m_thAniThread.Play(1, 1);
      }
      this.m_fMaxDelta = 0.0F;
    }
  }

  public void pause()
  {
    this.m_thAniThread.Quit();
    this.m_thInputUpRptTimer.Quit();
    this.m_thInputDnRptTimer.Quit();
  }

  void processBtnEvent(int paramInt)
  {
    post(new Runnable(paramInt)
    {
      public void run()
      {
        PikerCtlView.Event localEvent = new PikerCtlView.Event(PikerCtlView.this, this.val$nBtnDir);
        if (PikerCtlView.this.m_iOnWheelEventListener != null)
          PikerCtlView.this.m_iOnWheelEventListener.onWheelEvent(PikerCtlView.this, localEvent);
        if (LifeTime.getInstance().m_bVibrateMode)
          PikerCtlView.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_WHELL);
      }
    });
  }

  public void resume()
  {
  }

  public void setOnWheelEventListener(OnWheelEventListener paramOnWheelEventListener)
  {
    this.m_iOnWheelEventListener = paramOnWheelEventListener;
  }

  public class Event
  {
    private int m_nAction;

    Event()
    {
    }

    Event(int arg2)
    {
      int i;
      setAction(i);
    }

    public int getAction()
    {
      return this.m_nAction;
    }

    public void setAction(int paramInt)
    {
      this.m_nAction = paramInt;
    }
  }

  private class IconType
  {
    Bitmap m_bmpImg;
    float m_fBtnDY;
    float m_fBtnSY;
    int m_nMarginLeft;
    int m_nMarginTop;
    int m_nX;
    int m_nY;

    IconType()
    {
    }

    IconType(TypedArray paramInt1, int paramInt2, int arg4)
    {
      LoadIcon(paramInt1, paramInt2);
      int i;
      this.m_nMarginLeft = i;
    }

    public void DrawIcon(Canvas paramCanvas)
    {
      if ((this.m_nX == -1) || (this.m_nY == -1));
      while (true)
      {
        return;
        if (this.m_bmpImg != null)
        {
          paramCanvas.drawBitmap(this.m_bmpImg, this.m_nMarginLeft + this.m_nX, this.m_nMarginTop + this.m_nY, null);
          continue;
        }
      }
    }

    public void LoadIcon(TypedArray paramTypedArray, int paramInt)
    {
      this.m_bmpImg = ((BitmapDrawable)paramTypedArray.getDrawable(paramInt)).getBitmap();
    }

    public void LoadIcon(TypedArray paramTypedArray, int paramInt1, int paramInt2, int paramInt3)
    {
      this.m_bmpImg = ((BitmapDrawable)paramTypedArray.getDrawable(paramInt1)).getBitmap();
      this.m_nMarginTop = paramTypedArray.getDimensionPixelOffset(paramInt3, 0);
      this.m_nMarginLeft = paramTypedArray.getDimensionPixelOffset(paramInt2, 0);
    }

    public void SetPos(int paramInt1, int paramInt2)
    {
      this.m_nX = paramInt1;
      this.m_nY = paramInt2;
    }

    public boolean hitTest(float paramFloat1, float paramFloat2)
    {
      int i;
      if (paramFloat2 < this.m_fBtnSY)
        i = 0;
      while (true)
      {
        return i;
        if (paramFloat2 > this.m_fBtnDY)
        {
          i = 0;
          continue;
        }
        i = 1;
      }
    }

    public void setBtnDY(float paramFloat)
    {
      this.m_fBtnDY = paramFloat;
    }

    public void setBtnSY(float paramFloat)
    {
      this.m_fBtnSY = paramFloat;
    }
  }

  public static abstract interface OnWheelEventListener
  {
    public abstract void onWheelEvent(PikerCtlView paramPikerCtlView, PikerCtlView.Event paramEvent);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.PikerCtlView
 * JD-Core Version:    0.6.0
 */