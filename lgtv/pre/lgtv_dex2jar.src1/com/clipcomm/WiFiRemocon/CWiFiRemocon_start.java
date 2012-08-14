package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;

public class CWiFiRemocon_start extends Activity
{
  static final int DEF_MSG_WIFI_ASSOC = 2;
  static final int DEF_MSG_WIFI_ASSOC_TIMEOUT = 3;
  static final int DEF_MSG_WIFI_ON = 1;
  private Runnable doRequestAuthSession = new Runnable()
  {
    public void run()
    {
      CWiFiRemocon_start.this.RequestAuthSession();
    }
  };
  private Runnable doResponseCannotFountTV = new Runnable()
  {
    public void run()
    {
      CWiFiRemocon_start.this.m_msgboxWaitForConnect.cancel();
      String str = "[" + CWiFiRemocon_start.this.m_connectTVInfo.m_strName + "] " + CWiFiRemocon_start.this.getResources().getString(2131099653);
      new AlertDialog.Builder(CWiFiRemocon_start.this).setTitle(CWiFiRemocon_start.this.getResources().getString(2131099652)).setIcon(17301568).setMessage(str.toString()).setPositiveButton(CWiFiRemocon_start.this.getResources().getString(2131099654), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          LifeTime.getInstance().setDefaultTV(CWiFiRemocon_start.this, null);
          Intent localIntent = new Intent(CWiFiRemocon_start.this, Cintro.class);
          CWiFiRemocon_start.this.startActivity(localIntent);
          CWiFiRemocon_start.this.finish();
        }
      }).setNegativeButton(CWiFiRemocon_start.this.getResources().getString(2131099655), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          CWiFiRemocon_start.this.finish();
        }
      }).show();
    }
  };
  private Runnable doResponseReqAuthSession = new Runnable()
  {
    public void run()
    {
      CWiFiRemocon_start.this.m_msgboxWaitForConnect.cancel();
      if (CWiFiRemocon_start.this.m_strAuthSessionResult.length() > 0)
        switch (Integer.parseInt(CWiFiRemocon_start.this.m_strAuthSessionResult))
        {
        case 400:
        default:
        case 200:
        case 401:
        }
      while (true)
      {
        return;
        LifeTime.getInstance().setTargetTVInfo(CWiFiRemocon_start.this.m_connectTVInfo);
        LifeTime.getInstance().Start(CWiFiRemocon_start.this.m_connectTVInfo.m_strIP, AuthRequest.getSession());
        Intent localIntent1 = new Intent(CWiFiRemocon_start.this, CTVControl_RootUI.class);
        if (!LifeTime.getInstance().GetIntentContextUIState(localIntent1))
          continue;
        CWiFiRemocon_start.this.startActivity(localIntent1);
        CWiFiRemocon_start.this.overridePendingTransition(0, 0);
        Intent localIntent2 = new Intent();
        CWiFiRemocon_start.this.setResult(-1, localIntent2);
        CWiFiRemocon_start.this.finish();
        continue;
        new AlertDialog.Builder(CWiFiRemocon_start.this).setTitle(CWiFiRemocon_start.this.getResources().getString(2131099672)).setMessage(CWiFiRemocon_start.this.getResources().getString(2131099673)).setIcon(17301659).setPositiveButton(CWiFiRemocon_start.this.getResources().getString(2131099674), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            TVInfo localTVInfo = new TVInfo(CWiFiRemocon_start.this.m_connectTVInfo);
            CWiFiRemocon_start.this.m_dbAdapterTVInfo.removeTVInfoFromMACAddr(CWiFiRemocon_start.this.m_connectTVInfo.m_strMACAddr);
            LifeTime.getInstance().setDefaultTV(CWiFiRemocon_start.this, null);
            Intent localIntent = new Intent(CWiFiRemocon_start.this, CPairingDevice_Main.class);
            localIntent.putExtra("set_default_tv", true);
            localIntent.putExtra("TVInfo", localTVInfo);
            CWiFiRemocon_start.this.startActivity(localIntent);
            CWiFiRemocon_start.this.finish();
          }
        }).show();
      }
    }
  };
  WifiManager m_WiFiManager = null;
  boolean m_bIsFirst = true;
  boolean m_bSetOnWifi = false;
  BroadcastReceiver m_brWifiState = null;
  private TVInfo m_connectTVInfo = new TVInfo();
  CDBAdapter_TVInfo m_dbAdapterTVInfo;
  private Handler m_hReqAuthSession = new Handler();
  private Handler m_hWaitDefaultTV = new Handler();
  private Handler m_hWiFiEnable;
  CWaitMessagebox m_msgboxWaitForConnect = null;
  CWaitMessagebox m_msgboxWaitForWifiOn = null;
  private String m_strAuthSessionResult;

  private void RequestAuthSession()
  {
    String str = this.m_connectTVInfo.m_strIP;
    if (str != null)
    {
      this.m_connectTVInfo.m_strIP = str;
      Cursor localCursor = this.m_dbAdapterTVInfo.getCursorFromMACAddr(this.m_connectTVInfo.m_strMACAddr);
      if (localCursor != null)
      {
        this.m_connectTVInfo.m_strAuthKey = localCursor.getString(5);
        localCursor.close();
      }
      this.m_strAuthSessionResult = AuthRequest.requestAuthSession(this.m_connectTVInfo);
      if (this.m_strAuthSessionResult.length() > 0)
        this.m_hReqAuthSession.post(this.doResponseReqAuthSession);
    }
    while (true)
    {
      return;
      this.m_hReqAuthSession.post(this.doResponseCannotFountTV);
      continue;
      this.m_hReqAuthSession.post(this.doResponseCannotFountTV);
    }
  }

  /** @deprecated */
  void FirstRun()
  {
    monitorenter;
    try
    {
      this.m_bIsFirst = false;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  void InitConfigValue()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
    LifeTime.getInstance().m_bVibrateMode = localSharedPreferences.getBoolean("config_vibration_feedback", true);
    LifeTime.getInstance().m_bSoundEffect = localSharedPreferences.getBoolean("config_sound_effects", false);
    LifeTime.getInstance().showDemoTV(localSharedPreferences.getBoolean("config_demo_tv", false));
    LifeTime.getInstance().setAutoMuteMode(localSharedPreferences.getBoolean("config_auto_mute", false));
    LifeTime.getInstance().setTouchSensitivity(localSharedPreferences.getInt("touch_sensitivity", 3));
  }

  /** @deprecated */
  boolean IsFirstRun()
  {
    monitorenter;
    try
    {
      boolean bool = this.m_bIsFirst;
      monitorexit;
      return bool;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  void StartWiFiRemocon()
  {
    FirstRun();
    this.m_dbAdapterTVInfo = new CDBAdapter_TVInfo(this);
    this.m_dbAdapterTVInfo.open();
    this.m_connectTVInfo = LifeTime.getInstance().getDefaultTV(this);
    if (this.m_connectTVInfo != null)
    {
      Resources localResources = getResources();
      String str = "[" + this.m_connectTVInfo.m_strName + "]\n" + localResources.getString(2131099668);
      this.m_msgboxWaitForConnect.show(this, str);
      Handler localHandler2 = this.m_hWaitDefaultTV;
      6 local6 = new Runnable()
      {
        public void run()
        {
          new Thread(null, CWiFiRemocon_start.this.doRequestAuthSession, "CWiFiRemocon_start:RequestAuthSession").start();
        }
      };
      if (this.m_bSetOnWifi);
      int m;
      for (int k = 3000; ; m = 100)
      {
        localHandler2.postDelayed(local6, k);
        return;
      }
    }
    Handler localHandler1 = this.m_hWaitDefaultTV;
    7 local7 = new Runnable()
    {
      public void run()
      {
        Intent localIntent = new Intent(CWiFiRemocon_start.this, Cintro.class);
        CWiFiRemocon_start.this.startActivity(localIntent);
        CWiFiRemocon_start.this.finish();
      }
    };
    if (this.m_bSetOnWifi);
    int j;
    for (int i = 1000; ; j = 10)
    {
      localHandler1.postDelayed(local7, i);
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    InitConfigValue();
    CGlobalResources.getInstance().LoadSound(this);
    this.m_msgboxWaitForWifiOn = new CWaitMessagebox();
    this.m_msgboxWaitForConnect = new CWaitMessagebox();
    this.m_WiFiManager = ((WifiManager)getSystemService("wifi"));
    LifeTime.getInstance().setWiFiManager(this.m_WiFiManager);
    this.m_hWiFiEnable = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        switch (paramMessage.what)
        {
        case 1:
        default:
        case 2:
        case 3:
        }
        while (true)
        {
          return;
          CWiFiRemocon_start.this.m_msgboxWaitForWifiOn.cancel();
          if (!CWiFiRemocon_start.this.IsFirstRun())
            continue;
          CWiFiRemocon_start.this.StartWiFiRemocon();
          continue;
          CWiFiRemocon_start.this.m_msgboxWaitForWifiOn.cancel();
          if (!CWiFiRemocon_start.this.IsFirstRun())
            continue;
          CWiFiRemocon_start.this.StartWiFiRemocon();
        }
      }
    };
    this.m_brWifiState = new BroadcastReceiver()
    {
      public void onReceive(Context paramContext, Intent paramIntent)
      {
        String str = paramIntent.getAction();
        if (str.equals("android.net.wifi.WIFI_STATE_CHANGED"))
          switch (paramIntent.getIntExtra("wifi_state", 4))
          {
          default:
          case 3:
          }
        while (true)
        {
          return;
          CWiFiRemocon_start.this.m_hWiFiEnable.sendEmptyMessageDelayed(3, 8000L);
          CWiFiRemocon_start.this.m_hWiFiEnable.sendEmptyMessage(1);
          continue;
          if ((!str.equals("android.net.wifi.STATE_CHANGE")) || (!((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).isAvailable()))
            continue;
          CWiFiRemocon_start.this.m_hWiFiEnable.sendEmptyMessage(2);
        }
      }
    };
    if (!this.m_WiFiManager.isWifiEnabled());
    switch (this.m_WiFiManager.getWifiState())
    {
    default:
      StartWiFiRemocon();
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      this.m_msgboxWaitForWifiOn.show(this, 2131099651);
      this.m_WiFiManager.setWifiEnabled(true);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
      localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
      registerReceiver(this.m_brWifiState, localIntentFilter);
      this.m_bSetOnWifi = true;
    }
  }

  protected void onDestroy()
  {
    this.m_dbAdapterTVInfo.close();
    this.m_msgboxWaitForWifiOn.exit();
    this.m_msgboxWaitForConnect.exit();
    super.onDestroy();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CWiFiRemocon_start
 * JD-Core Version:    0.6.0
 */