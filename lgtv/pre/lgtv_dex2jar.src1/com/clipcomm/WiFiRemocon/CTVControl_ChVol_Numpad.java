package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;

public class CTVControl_ChVol_Numpad extends Activity
{
  static final int DEF_BUTTON_ARRAY_NUM = 14;
  Button[] m_btnArray = new Button[14];
  Vibrator m_vVibrate;
  ButtonInfo[] tblBtnInfo;

  public CTVControl_ChVol_Numpad()
  {
    ButtonInfo[] arrayOfButtonInfo = new ButtonInfo[14];
    arrayOfButtonInfo[0] = new ButtonInfo(2131230784, 2131099762);
    arrayOfButtonInfo[1] = new ButtonInfo(2131230774, 2131099763);
    arrayOfButtonInfo[2] = new ButtonInfo(2131230775, 2131099764);
    arrayOfButtonInfo[3] = new ButtonInfo(2131230776, 2131099765);
    arrayOfButtonInfo[4] = new ButtonInfo(2131230777, 2131099766);
    arrayOfButtonInfo[5] = new ButtonInfo(2131230778, 2131099767);
    arrayOfButtonInfo[6] = new ButtonInfo(2131230779, 2131099768);
    arrayOfButtonInfo[7] = new ButtonInfo(2131230780, 2131099769);
    arrayOfButtonInfo[8] = new ButtonInfo(2131230781, 2131099770);
    arrayOfButtonInfo[9] = new ButtonInfo(2131230782, 2131099771);
    arrayOfButtonInfo[10] = new ButtonInfo(2131230783, 2131099774);
    arrayOfButtonInfo[11] = new ButtonInfo(2131230785, 2131099775);
    arrayOfButtonInfo[12] = new ButtonInfo(2131230786, 2131099776);
    arrayOfButtonInfo[13] = new ButtonInfo(2131230787, 2131099777);
    this.tblBtnInfo = arrayOfButtonInfo;
  }

  public void onBackPressed()
  {
    new AlertDialog.Builder(LifeTime.getInstance().getCurRootActivity()).setTitle(2131099705).setMessage(2131099706).setPositiveButton(2131099707, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        CTVControl_ChVol_Numpad.this.procBackPressed();
      }
    }).setNegativeButton(2131099708, null).show();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903055);
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    for (int i = 0; ; i++)
    {
      if (i >= 14)
        return;
      this.m_btnArray[i] = ((Button)findViewById(this.tblBtnInfo[i].m_nID));
      Button localButton = this.m_btnArray[i];
      ButtonInfo localButtonInfo = this.tblBtnInfo[i];
      localButton.setOnTouchListener(new View.OnTouchListener(localButtonInfo)
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          switch (paramMotionEvent.getAction())
          {
          default:
          case 0:
          }
          while (true)
          {
            return false;
            paramView.post(new Runnable(this.val$btnInfo)
            {
              public void run()
              {
                if (LifeTime.getInstance().m_bVibrateMode)
                  switch (this.val$btnInfo.m_nKeycodeID)
                  {
                  default:
                    CTVControl_ChVol_Numpad.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_SOFT);
                  case 2131099776:
                  }
                while (true)
                {
                  return;
                  CTVControl_ChVol_Numpad.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_HARD);
                }
              }
            });
          }
        }
      });
      localButton.setOnClickListener(new View.OnClickListener(localButtonInfo)
      {
        public void onClick(View paramView)
        {
          paramView.post(new Runnable(this.val$btnInfo)
          {
            public void run()
            {
              commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), CTVControl_ChVol_Numpad.this.getResources().getString(this.val$btnInfo.m_nKeycodeID));
            }
          });
        }
      });
    }
  }

  public void procBackPressed()
  {
    super.onBackPressed();
  }

  public class ButtonInfo
  {
    int m_nID;
    int m_nKeycodeID;

    ButtonInfo(int paramInt1, int arg3)
    {
      this.m_nID = paramInt1;
      int i;
      this.m_nKeycodeID = i;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_ChVol_Numpad
 * JD-Core Version:    0.6.0
 */