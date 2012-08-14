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

public class CTVControl_Button_navi extends Activity
{
  static final int DEF_BUTTON_ARRAY_NUM = 9;
  Button[] m_btnArray = new Button[9];
  NaviButtonView m_vNaviCur;
  Vibrator m_vVibrate;
  ButtonInfo[] tblBtnInfo;

  public CTVControl_Button_navi()
  {
    ButtonInfo[] arrayOfButtonInfo = new ButtonInfo[9];
    arrayOfButtonInfo[0] = new ButtonInfo(2131230761, 2131099773);
    arrayOfButtonInfo[1] = new ButtonInfo(2131230762, 2131099790);
    arrayOfButtonInfo[2] = new ButtonInfo(2131230764, 2131099787);
    arrayOfButtonInfo[3] = new ButtonInfo(2131230763, 2131099786);
    arrayOfButtonInfo[4] = new ButtonInfo(2131230766, 2131099788);
    arrayOfButtonInfo[5] = new ButtonInfo(2131230756, 2131099791);
    arrayOfButtonInfo[6] = new ButtonInfo(2131230757, 2131099792);
    arrayOfButtonInfo[7] = new ButtonInfo(2131230758, 2131099793);
    arrayOfButtonInfo[8] = new ButtonInfo(2131230759, 2131099794);
    this.tblBtnInfo = arrayOfButtonInfo;
  }

  public void onBackPressed()
  {
    new AlertDialog.Builder(LifeTime.getInstance().getCurRootActivity()).setTitle(2131099705).setMessage(2131099706).setPositiveButton(2131099707, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        CTVControl_Button_navi.this.procBackPressed();
      }
    }).setNegativeButton(2131099708, null).show();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903052);
    this.m_vNaviCur = ((NaviButtonView)findViewById(2131230765));
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    for (int i = 0; ; i++)
    {
      if (i >= 9)
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
            if (!LifeTime.getInstance().m_bVibrateMode)
              continue;
            switch (this.val$btnInfo.m_nKeycodeID)
            {
            default:
              CTVControl_Button_navi.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_SOFT);
              break;
            case 2131099773:
            case 2131099790:
              CTVControl_Button_navi.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_HARD);
            }
          }
        }
      });
      localButton.setOnClickListener(new View.OnClickListener(localButton, localButtonInfo)
      {
        public void onClick(View paramView)
        {
          this.val$btn.postDelayed(new Runnable(this.val$btnInfo)
          {
            public void run()
            {
              commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), CTVControl_Button_navi.this.getResources().getString(this.val$btnInfo.m_nKeycodeID));
            }
          }
          , 10L);
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
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_Button_navi
 * JD-Core Version:    0.6.0
 */