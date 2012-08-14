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
import android.widget.ImageButton;
import android.widget.ImageView;

public class CTVControl_ChVol_Piker extends Activity
{
  ImageButton m_vBtnMenu;
  ImageButton m_vBtnMute;
  ImageView[] m_vPikeLineVol = new ImageView[6];
  PikerCtlView m_vPikerChannel;
  PikerCtlView m_vPikerVolume;
  Vibrator m_vVibrate;

  public void onBackPressed()
  {
    new AlertDialog.Builder(LifeTime.getInstance().getCurRootActivity()).setTitle(2131099705).setMessage(2131099706).setPositiveButton(2131099707, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        CTVControl_ChVol_Piker.this.procBackPressed();
      }
    }).setNegativeButton(2131099708, null).show();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903056);
    this.m_vPikerVolume = ((PikerCtlView)findViewById(2131230790));
    this.m_vPikerChannel = ((PikerCtlView)findViewById(2131230791));
    this.m_vBtnMute = ((ImageButton)findViewById(2131230793));
    this.m_vBtnMenu = ((ImageButton)findViewById(2131230794));
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    this.m_vPikerVolume.setOnWheelEventListener(new PikerCtlView.OnWheelEventListener()
    {
      public void onWheelEvent(PikerCtlView paramPikerCtlView, PikerCtlView.Event paramEvent)
      {
        switch (paramEvent.getAction())
        {
        default:
        case 2:
        case 4:
        case 1:
        case 3:
        }
        while (true)
        {
          return;
          if (LifeTime.getInstance().m_bSoundEffect)
            CGlobalResources.getInstance().PlaySoundTap();
          paramPikerCtlView.post(new Runnable()
          {
            public void run()
            {
              LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099781)));
            }
          });
          continue;
          if (LifeTime.getInstance().m_bSoundEffect)
            CGlobalResources.getInstance().PlaySoundTap();
          paramPikerCtlView.post(new Runnable()
          {
            public void run()
            {
              LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099780)));
            }
          });
        }
      }
    });
    this.m_vPikerChannel.setOnWheelEventListener(new PikerCtlView.OnWheelEventListener()
    {
      public void onWheelEvent(PikerCtlView paramPikerCtlView, PikerCtlView.Event paramEvent)
      {
        switch (paramEvent.getAction())
        {
        default:
        case 2:
        case 1:
        }
        while (true)
        {
          return;
          if (LifeTime.getInstance().m_bSoundEffect)
            CGlobalResources.getInstance().PlaySoundTap();
          paramPikerCtlView.post(new Runnable()
          {
            public void run()
            {
              LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099779)));
            }
          });
          continue;
          if (LifeTime.getInstance().m_bSoundEffect)
            CGlobalResources.getInstance().PlaySoundTap();
          paramPikerCtlView.post(new Runnable()
          {
            public void run()
            {
              LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(CTVControl_ChVol_Piker.this.getResources().getString(2131099778)));
            }
          });
        }
      }
    });
    this.m_vBtnMute.setOnTouchListener(new View.OnTouchListener()
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
          if (LifeTime.getInstance().m_bSoundEffect)
            CGlobalResources.getInstance().PlaySoundTap();
          if (!LifeTime.getInstance().m_bVibrateMode)
            continue;
          CTVControl_ChVol_Piker.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_SOFT);
        }
      }
    });
    this.m_vBtnMenu.setOnTouchListener(new View.OnTouchListener()
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
          if (LifeTime.getInstance().m_bSoundEffect)
            CGlobalResources.getInstance().PlaySoundMode();
          paramView.post(new Runnable()
          {
            public void run()
            {
              if (LifeTime.getInstance().m_bVibrateMode)
                CTVControl_ChVol_Piker.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_HARD);
            }
          });
        }
      }
    });
    this.m_vBtnMute.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        CTVControl_ChVol_Piker.this.m_vBtnMute.post(new Runnable()
        {
          public void run()
          {
            commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), CTVControl_ChVol_Piker.this.getResources().getString(2131099772));
          }
        });
      }
    });
    this.m_vBtnMenu.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        CTVControl_ChVol_Piker.this.m_vBtnMenu.post(new Runnable()
        {
          public void run()
          {
            commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), CTVControl_ChVol_Piker.this.getResources().getString(2131099773));
          }
        });
      }
    });
  }

  protected void onDestroy()
  {
    this.m_vPikerVolume.pause();
    this.m_vPikerChannel.pause();
    super.onDestroy();
  }

  public void procBackPressed()
  {
    super.onBackPressed();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_ChVol_Piker
 * JD-Core Version:    0.6.0
 */