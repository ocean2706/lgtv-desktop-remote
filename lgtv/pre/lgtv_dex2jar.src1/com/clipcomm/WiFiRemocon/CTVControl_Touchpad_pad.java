package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;

public class CTVControl_Touchpad_pad extends Activity
  implements GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener
{
  public static boolean LONGPRESS = false;
  private static final int SWIPE_MAX_OFF_PATH = 250;
  private static final int SWIPE_MIN_DISTANCE = 120;
  private static final int SWIPE_THRESHOLD_VELOCITY = 200;
  static boolean isLongpressEnabled;
  static GestureDetector mGestureScanner;
  float currentX;
  float downXValue;
  int m_nOldX;
  int m_nOldY;
  ImageView m_vPad;
  Vibrator m_vVibrate;
  int nDeltaX;
  int nDeltaY;
  int nTempX;
  int nTempY;

  public static boolean isLongpressEnabled()
  {
    return mGestureScanner.isLongpressEnabled();
  }

  public static void wait(int paramInt)
  {
    long l = System.currentTimeMillis();
    while (l - System.currentTimeMillis() > paramInt);
  }

  public void onBackPressed()
  {
    new AlertDialog.Builder(LifeTime.getInstance().getCurRootActivity()).setTitle(2131099705).setMessage(2131099706).setPositiveButton(2131099707, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        CTVControl_Touchpad_pad.this.procBackPressed();
      }
    }).setNegativeButton(2131099708, null).show();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903053);
    mGestureScanner = new GestureDetector(this);
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    this.m_vPad = ((ImageView)findViewById(2131230768));
    this.m_vPad.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        Log.i("onTouch Called", Integer.toString(paramMotionEvent.getAction()));
        CTVControl_Touchpad_pad.mGestureScanner.onTouchEvent(paramMotionEvent);
        switch (paramMotionEvent.getAction())
        {
        case 1:
        default:
        case 0:
        case 2:
        }
        while (true)
        {
          int i = 0;
          while (true)
          {
            return i;
            CTVControl_Touchpad_pad.this.m_nOldX = (int)paramMotionEvent.getX();
            CTVControl_Touchpad_pad.this.m_nOldY = (int)paramMotionEvent.getY();
            i = 1;
            continue;
            CTVControl_Touchpad_pad.this.nTempX = (int)paramMotionEvent.getX();
            CTVControl_Touchpad_pad.this.nTempY = (int)paramMotionEvent.getY();
            CTVControl_Touchpad_pad.this.nDeltaX = (CTVControl_Touchpad_pad.this.nTempX - CTVControl_Touchpad_pad.this.m_nOldX);
            CTVControl_Touchpad_pad.this.nDeltaY = (CTVControl_Touchpad_pad.this.nTempY - CTVControl_Touchpad_pad.this.m_nOldY);
            if ((CTVControl_Touchpad_pad.this.nDeltaX != 0) || (CTVControl_Touchpad_pad.this.nDeltaY != 0))
              break;
            i = 1;
          }
          CTVControl_Touchpad_pad.this.m_nOldX = CTVControl_Touchpad_pad.this.nTempX;
          CTVControl_Touchpad_pad.this.m_nOldY = CTVControl_Touchpad_pad.this.nTempY;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(CTVControl_Touchpad_pad.this.nDeltaX);
          arrayOfObject[1] = Integer.valueOf(CTVControl_Touchpad_pad.this.nDeltaY);
          Log.i("onScroll", String.format("dsX: %s, dsY: %s", arrayOfObject));
          LifeTime.getInstance().getUDPRequest().HandleTouchMove(CTVControl_Touchpad_pad.this.scalePhone2TV(CTVControl_Touchpad_pad.this.nDeltaX), CTVControl_Touchpad_pad.this.nDeltaY);
        }
      }
    });
  }

  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean onDown(MotionEvent paramMotionEvent)
  {
    Log.i("Ondown called", Integer.toString(paramMotionEvent.getAction()));
    this.m_nOldX = (int)paramMotionEvent.getX();
    this.m_nOldY = (int)paramMotionEvent.getY();
    return true;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    Log.i("onFling EVENT1", Integer.toString(paramMotionEvent1.getAction()));
    Log.i("onFling velocityX", Float.toString(paramFloat1));
    Log.i("onFling EVENT2", Integer.toString(paramMotionEvent2.getAction()));
    Log.i("onFling velocityY", Float.toString(paramFloat2));
    return false;
  }

  public void onLongPress(MotionEvent paramMotionEvent)
  {
  }

  protected void onPause()
  {
    EventRequest.requestCursorVisible(LifeTime.getInstance().GetDestInfo(), "false");
    super.onPause();
  }

  protected void onResume()
  {
    EventRequest.requestCursorVisible(LifeTime.getInstance().GetDestInfo(), "true");
    super.onResume();
  }

  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    Log.i("onScroll EVENT1", Integer.toString(paramMotionEvent1.getAction()));
    Log.i("onScroll EVENT2", Integer.toString(paramMotionEvent2.getAction()));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Float.valueOf(paramFloat1);
    arrayOfObject[1] = Float.valueOf(paramFloat2);
    Log.i("onScroll", String.format("dsX: %s, dsY: %s", arrayOfObject));
    this.nTempX = (int)paramMotionEvent2.getX();
    this.nTempY = (int)paramMotionEvent2.getY();
    this.nDeltaX = (this.nTempX - this.m_nOldX);
    this.nDeltaY = (this.nTempY - this.m_nOldY);
    if ((this.nDeltaX == 0) && (this.nDeltaY == 0));
    for (int i = 1; ; i = 1)
    {
      return i;
      this.m_nOldX = this.nTempX;
      this.m_nOldY = this.nTempY;
      LifeTime.getInstance().getUDPRequest().HandleTouchMove(scalePhone2TV(this.nDeltaX), this.nDeltaY);
    }
  }

  public void onShowPress(MotionEvent paramMotionEvent)
  {
    Log.i("onShowPress called", Integer.toString(paramMotionEvent.getAction()));
  }

  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    Log.i("onSingleTapConfirmed called", Integer.toString(paramMotionEvent.getAction()));
    return false;
  }

  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    Log.i("onSingleTapUp called", Integer.toString(paramMotionEvent.getAction()));
    if ((float)(paramMotionEvent.getEventTime() - paramMotionEvent.getDownTime()) < 40.0F * (1.0F + LifeTime.getInstance().getTouchSensitivity()))
    {
      Log.i("Event Time", Long.toString(paramMotionEvent.getEventTime()));
      Log.i("Down Time", Long.toString(paramMotionEvent.getDownTime()));
      this.m_vPad.post(new Runnable()
      {
        public void run()
        {
          if (LifeTime.getInstance().m_bVibrateMode)
            CTVControl_Touchpad_pad.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_SOFT);
          commandRequest.requestTouchClick(LifeTime.getInstance().GetDestInfo(), CTVControl_Touchpad_pad.this.getResources().getString(2131099789));
        }
      });
    }
    return true;
  }

  public void procBackPressed()
  {
    super.onBackPressed();
  }

  int scalePhone2TV(float paramFloat)
  {
    return 683 * (int)paramFloat / 450;
  }

  int scalePhone2TV(int paramInt)
  {
    return paramInt * 683 / 450;
  }

  public void setIsLongpressEnabled(boolean paramBoolean)
  {
    mGestureScanner.setIsLongpressEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_Touchpad_pad
 * JD-Core Version:    0.6.0
 */