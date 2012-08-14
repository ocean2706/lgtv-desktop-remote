/*
 * Created by SharpDevelop.
 * User: george
 * Date: 6/15/2012
 * Time: 2:16 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;


namespace com.lg.clientlib.tv.net
{
    /// <summary>
    /// Description of RemoteClient.
    /// </summary>
    public class RemoteClient
    {

        public RemoteClient()
        {
        }


        public const int DEF_MSG_WIFI_ASSOC = 2;
        public const int DEF_MSG_WIFI_ASSOC_TIMEOUT = 3;
        public const int DEF_MSG_WIFI_ON = 1;
        public void DoRequestAuthSession()
        {
            this.DoRequestAuthSession();
        }
        public void DoResponseCannotFountTV()
        {
            //  	this.m_msgboxWaitForConnect.cancel();
            //      String str = "[" + this.m_connectTVInfo.m_strName + "] " + this.getResources().getString(2131099653);
            //      new AlertDialog.Builder(CWiFiRemocon_start.this).setTitle(this.getResources().getString(2131099652)).setIcon(17301568).setMessage(str.toString()).setPositiveButton(this.getResources().getString(2131099654), new DialogInterface.OnClickListener()
            //      {
            //        public void onClick(DialogInterface paramDialogInterface, int paramInt)
            //        {
            //          LifeTime.getInstance().setDefaultTV(CWiFiRemocon_start.this, null);
            //          Intent localIntent = new Intent(CWiFiRemocon_start.this, Cintro.class);
            //          this.startActivity(localIntent);
            //          this.finish();
            //        }
            //      }).setNegativeButton(this.getResources().getString(2131099655), new DialogInterface.OnClickListener()
            //      {
            //        public void onClick(DialogInterface paramDialogInterface, int paramInt)
            //        {
            //          this.finish();
            //        }
            //      }).show();
        }

        public void DoResponseReqAuthSession()
        {
            //      this.m_msgboxWaitForConnect.cancel();
            //      //if (this.m_strAuthSessionResult.length() > 0)
            ////        switch (int.parse(this.m_strAuthSessionResult))
            ////        {
            ////        case 400:
            ////        	default:
            ////        case 200:
            ////        case 401:
            ////      		break;
            ////        }
            ////      while (true)
            //      {
            ////        return;
            //        LifeTime.getInstance().setTargetTVInfo(this.m_connectTVInfo);
            //        LifeTime.getInstance().Start(this.m_connectTVInfo.m_strIP, AuthRequest.getSession());
            //        Intent localIntent1 = new Intent(CWiFiRemocon_start.this, CTVControl_RootUI.class);
            //        if (!LifeTime.getInstance().GetIntentContextUIState(localIntent1))
            //          continue;
            //        this.startActivity(localIntent1);
            //        this.overridePendingTransition(0, 0);
            //        Intent localIntent2 = new Intent();
            //        this.setResult(-1, localIntent2);
            //        this.finish();
            //        continue;
            //        new AlertDialog.Builder(CWiFiRemocon_start.this).
            //        		setTitle(
            //        		this.getResources().getString(2131099672)
            //        	).setMessage(
            //        		this.getResources().getString(2131099673)
            //        	).setIcon(17301659).setPositiveButton(this.getResources().getString(2131099674),
            //                                                                                                                                                                                                       new DialogInterface.OnClickListener()
            //        {
            //          public void onClick(DialogInterface paramDialogInterface, int paramInt)
            //          {
            //            TVInfo localTVInfo = new TVInfo(this.m_connectTVInfo);
            //            this.m_dbAdapterTVInfo.removeTVInfoFromMACAddr(this.m_connectTVInfo.m_strMACAddr);
            //            LifeTime.getInstance().setDefaultTV(CWiFiRemocon_start.this, null);
            //            Intent localIntent = new Intent(CWiFiRemocon_start.this, CPairingDevice_Main.class);
            //            localIntent.putExtra("set_default_tv", true);
            //            localIntent.putExtra("TVInfo", localTVInfo);
            //            this.startActivity(localIntent);
            //            this.finish();
            //          }
            //        }).show();
            //      }
        }

        //WifiManager m_WiFiManager = null;
        bool m_bIsFirst = true;
        bool m_bSetOnWifi = false;
        //BroadcastReceiver m_brWifiState = null;
        //private TVInfo m_connectTVInfo = new TVInfo();
        //CDBAdapter_TVInfo m_dbAdapterTVInfo;
        //private Handler m_hReqAuthSession = new Handler();
        //private Handler m_hWaitDefaultTV = new Handler();
        //private Handler m_hWiFiEnable;
        //CWaitMessagebox m_msgboxWaitForConnect = null;
        //CWaitMessagebox m_msgboxWaitForWifiOn = null;
        //private String m_strAuthSessionResult;

        private void RequestAuthSession()
        {
            //String str = this.m_connectTVInfo.m_strIP;
            //if (str != null)
            //{
            //  this.m_connectTVInfo.m_strIP = str;
            //  Cursor localCursor = this.m_dbAdapterTVInfo.getCursorFromMACAddr(this.m_connectTVInfo.m_strMACAddr);
            //  if (localCursor != null)
            //  {
            //    this.m_connectTVInfo.m_strAuthKey = localCursor.getString(5);
            //    localCursor.close();
            //  }
            //  this.m_strAuthSessionResult = AuthRequest.requestAuthSession(this.m_connectTVInfo);
            //  if (this.m_strAuthSessionResult.length() > 0)
            //    this.m_hReqAuthSession.post(this.doResponseReqAuthSession);
            //}
            //while (true)
            //{
            //  return;
            //  this.m_hReqAuthSession.post(this.doResponseCannotFountTV);
            //  continue;
            //  this.m_hReqAuthSession.post(this.doResponseCannotFountTV);

            //}
            throw new NotImplementedException();
        }

        /** @deprecated */
        void FirstRun()
        {
            //monitorenter;
            //try
            //{
            //  this.m_bIsFirst = false;
            //  monitorexit;
            //  return;
            //}
            //ly
            //{
            //  localObject = ly;
            //  monitorexit;
            //}
            //throw localObject;
            throw new NotImplementedException();
        }

        void InitConfigValue()
        {
            //SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
            //LifeTime.getInstance().m_bVibrateMode = localSharedPreferences.getbool("config_vibration_feedback", true);
            //LifeTime.getInstance().m_bSoundEffect = localSharedPreferences.getbool("config_sound_effects", false);
            //LifeTime.getInstance().showDemoTV(localSharedPreferences.getbool("config_demo_tv", false));
            //LifeTime.getInstance().setAutoMuteMode(localSharedPreferences.getbool("config_auto_mute", false));
            //LifeTime.getInstance().setTouchSensitivity(localSharedPreferences.getInt("touch_sensitivity", 3));
            throw new NotImplementedException();
        }

        /** @deprecated */
        bool IsFirstRun()
        {
            //monitorenter;
            //try
            //{
            //  bool bool = this.m_bIsFirst;
            //  monitorexit;
            //  return bool;
            //}
            //ly
            //{
            //  localObject = ly;
            //  monitorexit;
            //}
            //throw localObject;
            throw new NotImplementedException();
        }

        void StartWiFiRemocon()
        {
            //FirstRun();
            //this.m_dbAdapterTVInfo = new CDBAdapter_TVInfo(this);
            //this.m_dbAdapterTVInfo.open();
            //this.m_connectTVInfo = LifeTime.getInstance().getDefaultTV(this);
            //if (this.m_connectTVInfo != null)
            //{
            //  Resources localResources = getResources();
            //  String str = "[" + this.m_connectTVInfo.m_strName + "]\n" + localResources.getString(2131099668);
            //  this.m_msgboxWaitForConnect.show(this, str);
            //  Handler localHandler2 = this.m_hWaitDefaultTV;
            //  6 local6 = new Runnable()
            //  {
            //    public void run()
            //    {
            //      new Thread(null, this.doRequestAuthSession, "CWiFiRemocon_start:RequestAuthSession").start();
            //    }
            //  };
            //  if (this.m_bSetOnWifi);
            //  int m;
            //  for (int k = 3000; ; m = 100)
            //  {
            //    localHandler2.postDelayed(local6, k);
            //    return;
            //  }
            //}
            //Handler localHandler1 = this.m_hWaitDefaultTV;
            //7 local7 = new Runnable()
            //{
            //  public void run()
            //  {
            //    Intent localIntent = new Intent(CWiFiRemocon_start.this, Cintro.class);
            //    this.startActivity(localIntent);
            //    this.finish();
            //  }
            //};
            //if (this.m_bSetOnWifi);
            //int j;
            //for (int i = 1000; ; j = 10)
            //{
            //  localHandler1.postDelayed(local7, i);
            //  break;
            //}
        }

        protected void onCreate(Object paramxBundle)
        {
            // Bundle paramBundle= (Bundle) paramxBundle;
            //super.onCreate(paramBundle);
            //InitConfigValue();
            //CGlobalResources.getInstance().LoadSound(this);
            //this.m_msgboxWaitForWifiOn = new CWaitMessagebox();
            //this.m_msgboxWaitForConnect = new CWaitMessagebox();
            //this.m_WiFiManager = ((WifiManager)getSystemService("wifi"));
            //LifeTime.getInstance().setWiFiManager(this.m_WiFiManager);
            //this.m_hWiFiEnable = new Handler()
            //{
            //  public void handleMessage(Message paramMessage)
            //  {
            //    switch (paramMessage.what)
            //    {
            //    case 1:
            //    default:
            //    case 2:
            //    case 3:
            //    }
            //    while (true)
            //    {
            //      return;
            //      this.m_msgboxWaitForWifiOn.cancel();
            //      if (!this.IsFirstRun())
            //        continue;
            //      this.StartWiFiRemocon();
            //      continue;
            //      this.m_msgboxWaitForWifiOn.cancel();
            //      if (!this.IsFirstRun())
            //        continue;
            //      this.StartWiFiRemocon();
            //    }
            //  }
            //};
            //this.m_brWifiState = new BroadcastReceiver()
            //{
            //  public void onReceive(Context paramContext, Intent paramIntent)
            //  {
            //    String str = paramIntent.getAction();
            //    if (str.equals("android.net.wifi.WIFI_STATE_CHANGED"))
            //      switch (paramIntent.getIntExtra("wifi_state", 4))
            //      {
            //      default:
            //      case 3:
            //      }
            //    while (true)
            //    {
            //      return;
            //      this.m_hWiFiEnable.sendEmptyMessageDelayed(3, 8000L);
            //      this.m_hWiFiEnable.sendEmptyMessage(1);
            //      continue;
            //      if ((!str.equals("android.net.wifi.STATE_CHANGE")) || (!((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).isAvailable()))
            //        continue;
            //      this.m_hWiFiEnable.sendEmptyMessage(2);
            //    }
            //  }
            //};
            //if (!this.m_WiFiManager.isWifiEnabled());
            //switch (this.m_WiFiManager.getWifiState())
            //{
            //default:
            //  StartWiFiRemocon();
            //case 0:
            //case 1:
            //}
            //while (true)
            //{
            //  return;
            //  this.m_msgboxWaitForWifiOn.show(this, 2131099651);
            //  this.m_WiFiManager.setWifiEnabled(true);
            //  IntentFilter localIntentFilter = new IntentFilter();
            //  localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
            //  localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            //  registerReceiver(this.m_brWifiState, localIntentFilter);
            //  this.m_bSetOnWifi = true;
            //}
        }

        //  protected void onDestroy()
        //  {
        //    this.m_dbAdapterTVInfo.close();
        //    this.m_msgboxWaitForWifiOn.exit();
        //    this.m_msgboxWaitForConnect.exit();
        //    super.onDestroy();
        //  }
    }

    /* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
     * Qualified Name:     com.clipcomm.WiFiRemocon.CWiFiRemocon_start
     * JD-Core Version:    0.6.0
     */

}
