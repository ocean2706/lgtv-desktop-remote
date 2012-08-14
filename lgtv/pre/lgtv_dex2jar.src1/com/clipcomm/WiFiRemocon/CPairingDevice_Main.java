package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class CPairingDevice_Main extends Activity
{
  private static final int INPUT_PINCODE = 1;
  private Runnable doReqCancelAuthKey = new Runnable()
  {
    public void run()
    {
      CPairingDevice_Main.this.ReqCancelAuthKey();
    }
  };
  private Runnable doRequestAuthKey = new Runnable()
  {
    public void run()
    {
      CPairingDevice_Main.this.RequestAuthKey();
    }
  };
  private Runnable doRequestAuthSession = new Runnable()
  {
    public void run()
    {
      CPairingDevice_Main.this.RequestAuthSession();
    }
  };
  private Runnable doResponseReqAuthKey = new Runnable()
  {
    public void run()
    {
      CPairingDevice_Main.this.ResponseReqAuthKey();
    }
  };
  private Runnable doResponseReqAuthSession = new Runnable()
  {
    public void run()
    {
      if (CPairingDevice_Main.this.m_strAuthSessionResult.length() > 0)
        switch (Integer.parseInt(CPairingDevice_Main.this.m_strAuthSessionResult))
        {
        default:
        case 200:
        case 401:
        }
      while (true)
      {
        new Thread(CPairingDevice_Main.this.doRequestAuthKey).start();
        CPairingDevice_Main.this.m_msgboxWaitForConnect.cancel();
        while (true)
        {
          return;
          ByeByeReceiver.sendBroadcastByeBye(false);
          CPairingDevice_Main.this.m_bNeedToCancelAuthKey = false;
          LifeTime.getInstance().setTargetTVInfo(CPairingDevice_Main.this.m_connectTVInfo);
          LifeTime.getInstance().Start(CPairingDevice_Main.this.m_connectTVInfo.m_strIP, AuthRequest.getSession());
          Intent localIntent1 = new Intent(CPairingDevice_Main.this, CTVControl_RootUI.class);
          if (!LifeTime.getInstance().GetIntentContextUIState(localIntent1))
            continue;
          CPairingDevice_Main.this.startActivity(localIntent1);
          CPairingDevice_Main.this.m_connectTVInfo.SetAuthKey(CPairingDevice_Main.this.m_strPincode);
          CPairingDevice_Main.this.m_connectTVInfo.m_lDBIndex = CPairingDevice_Main.this.m_dbAdapterTVInfo.insertTVInfo(CPairingDevice_Main.this.m_connectTVInfo);
          if (CPairingDevice_Main.this.m_bSetDefaultTV)
            LifeTime.getInstance().setDefaultTV(CPairingDevice_Main.this, CPairingDevice_Main.this.m_connectTVInfo);
          Intent localIntent2 = new Intent();
          CPairingDevice_Main.this.setResult(-1, localIntent2);
          CPairingDevice_Main.this.finish();
        }
        Vibrator localVibrator = (Vibrator)CPairingDevice_Main.this.getSystemService("vibrator");
        String str1 = CPairingDevice_Main.this.getResources().getString(2131099670);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = CPairingDevice_Main.access$5(CPairingDevice_Main.this).m_strName;
        String str2 = String.format(str1, arrayOfObject);
        new AlertDialog.Builder(CPairingDevice_Main.this).setTitle(CPairingDevice_Main.this.getResources().getString(2131099669)).setMessage(str2).setIcon(17301659).setPositiveButton(CPairingDevice_Main.this.getResources().getString(2131099671), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
          }
        }).show();
        if (LifeTime.getInstance().m_bVibrateMode)
          localVibrator.vibrate(CGlobalResources.VIBRATE_LEVEL_SOFT);
        if (!LifeTime.getInstance().m_bSoundEffect)
          continue;
        CGlobalResources.getInstance().PlaySoundPopup();
      }
    }
  };
  View.OnClickListener mMenuBackClickListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      CPairingDevice_Main.this.setResult(0, null);
      CPairingDevice_Main.this.finish();
    }
  };
  View.OnClickListener mMenuInputPincodeClickListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      Intent localIntent = new Intent(CPairingDevice_Main.this, CPairingDevice_InputPincode.class);
      CPairingDevice_Main.this.startActivityForResult(localIntent, 1);
      CPairingDevice_Main.this.overridePendingTransition(0, 0);
    }
  };
  private boolean m_bNeedToCancelAuthKey = false;
  private boolean m_bSetDefaultTV = false;
  private TVInfo m_connectTVInfo;
  CDBAdapter_TVInfo m_dbAdapterTVInfo;
  private Handler m_hReqAuthKeyEvt = new Handler();
  private Handler m_hReqAuthSession = new Handler();
  Intent m_itdDeviceInfo;
  CWaitMessagebox m_msgboxWaitForConnect = null;
  private String m_strAuthSessionResult;
  private String m_strPincode;
  private String m_strResult;
  Button m_vBtnInputPincode;
  Button m_vBtnMenuBack;

  private void ReqCancelAuthKey()
  {
    AuthRequest.cancelRequestAuthKey(this.m_connectTVInfo.m_strIP);
  }

  private void RequestAuthKey()
  {
    if (!LifeTime.getInstance().isDemoTVMode())
      this.m_strResult = AuthRequest.requestAuthKey(this.m_connectTVInfo);
    while (true)
    {
      this.m_hReqAuthKeyEvt.post(this.doResponseReqAuthKey);
      return;
      try
      {
        Thread.sleep(100L);
        label39: this.m_strResult = "200";
      }
      catch (InterruptedException localInterruptedException)
      {
        break label39;
      }
    }
  }

  private void RequestAuthSession()
  {
    if (!LifeTime.getInstance().isDemoTVMode())
      this.m_strAuthSessionResult = AuthRequest.requestAuthSession(this.m_connectTVInfo.m_strIP, this.m_strPincode);
    while (true)
    {
      this.m_hReqAuthSession.post(this.doResponseReqAuthSession);
      return;
      try
      {
        Thread.sleep(800L);
        label46: this.m_strAuthSessionResult = "200";
      }
      catch (InterruptedException localInterruptedException)
      {
        break label46;
      }
    }
  }

  private void ResponseReqAuthKey()
  {
    if (this.m_strResult.equals("200"))
    {
      this.m_vBtnInputPincode.setEnabled(true);
      this.m_bNeedToCancelAuthKey = true;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1:
    }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 != -1)
        continue;
      Resources localResources = getResources();
      String str = "[" + this.m_connectTVInfo.m_strName + "]\n" + localResources.getString(2131099668);
      this.m_msgboxWaitForConnect.show(this, str);
      this.m_strPincode = paramIntent.getStringExtra("pincode");
      new Thread(this.doRequestAuthSession).start();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    this.m_msgboxWaitForConnect = new CWaitMessagebox();
    this.m_itdDeviceInfo = getIntent();
    this.m_vBtnMenuBack = ((Button)findViewById(2131230722));
    this.m_vBtnMenuBack.setOnClickListener(this.mMenuBackClickListener);
    this.m_vBtnInputPincode = ((Button)findViewById(2131230721));
    this.m_vBtnInputPincode.setOnClickListener(this.mMenuInputPincodeClickListener);
    this.m_bSetDefaultTV = this.m_itdDeviceInfo.getBooleanExtra("set_default_tv", false);
    this.m_connectTVInfo = ((TVInfo)this.m_itdDeviceInfo.getParcelableExtra("TVInfo"));
    this.m_dbAdapterTVInfo = new CDBAdapter_TVInfo(this);
    this.m_dbAdapterTVInfo.open();
    String str1 = getResources().getString(2131099664);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.m_connectTVInfo.m_strName;
    String str2 = String.format(str1, arrayOfObject);
    ((TextView)findViewById(2131230720)).setText(str2);
    new Thread(this.doRequestAuthKey).start();
  }

  protected void onDestroy()
  {
    this.m_dbAdapterTVInfo.close();
    if ((!LifeTime.getInstance().isDemoTVMode()) && (this.m_bNeedToCancelAuthKey))
      new Thread(this.doReqCancelAuthKey).start();
    this.m_msgboxWaitForConnect.exit();
    super.onDestroy();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CPairingDevice_Main
 * JD-Core Version:    0.6.0
 */