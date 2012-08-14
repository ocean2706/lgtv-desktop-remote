package com.clipcomm.WiFiRemocon;

import android.app.ActivityGroup;
import android.content.Intent;
import android.content.res.Resources;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import java.lang.reflect.Field;

public class CTVControl_RootUI extends ActivityGroup
  implements SensorListener
{
  private static final int REQUEST_CODE_KBD_VISIBLE = 6985;
  private static final int SHAKE_THRESHOLD = 2000;
  private static CTVControl_RootUI m_myActivityGroup;
  float fVolume_curTC;
  float fVolume_oldTC;
  private long lastSend = -1L;
  private long lastUpdate = -1L;
  private float last_x;
  private PhoneStateListener mPhoneListener = new PhoneStateListener()
  {
    public void onCallStateChanged(int paramInt, String paramString)
    {
      switch (paramInt)
      {
      case 2:
      default:
      case 1:
      case 0:
      }
      while (true)
      {
        return;
        if (CTVControl_RootUI.this.m_bIsOnMuteState)
          continue;
        CTVControl_RootUI.this.m_bIsOnMuteState = true;
        if (!LifeTime.getInstance().isAutoMuteMode())
          continue;
        EventRequest.requestCallStateChanged(LifeTime.getInstance().GetDestInfo(), "ringon");
        continue;
        if (!CTVControl_RootUI.this.m_bIsOnMuteState)
          continue;
        CTVControl_RootUI.this.m_bIsOnMuteState = false;
        if (!LifeTime.getInstance().isAutoMuteMode())
          continue;
        EventRequest.requestCallStateChanged(LifeTime.getInstance().GetDestInfo(), "ringoff");
      }
    }
  };
  ByeByeReceiver m_ReceiverByeBye;
  boolean m_bIsOnMuteState = false;
  CMainMenu m_ctlMenu;
  Handler m_hEventHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      CTVControl_RootUI.this.processEventHadler(paramMessage.arg1);
      super.handleMessage(paramMessage);
    }
  };
  Handler m_hGoNetcast = new Handler();
  TabHost m_mControlTab;
  TabWidget m_mTabWidget;
  private SensorManager m_mgrSensor;
  private TelephonyManager m_mgrTelephony;
  Vibrator m_vVibrate;

  public static ActivityGroup getActivity()
  {
    return m_myActivityGroup;
  }

  void GoNetcast()
  {
    if (LifeTime.getInstance().m_bVibrateMode)
      this.m_vVibrate.vibrate(100L);
    commandRequest.requestKeyInput(LifeTime.getInstance().GetDestInfo(), getResources().getString(2131099810));
  }

  public int getCurrentTabIdx()
  {
    return this.m_mControlTab.getCurrentTab();
  }

  public void onAccuracyChanged(int paramInt1, int paramInt2)
  {
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 6985) && (paramIntent != null))
      switch (paramIntent.getIntExtra("result_filter", -1))
      {
      default:
      case 1:
      case 2:
      }
    while (true)
    {
      return;
      processEventHadler(paramIntent.getIntExtra("reason", -1));
      continue;
      switch (paramIntent.getIntExtra("tabindex", -1))
      {
      default:
        break;
      case 0:
        if (this.m_mControlTab.getCurrentTab() != 0)
          this.m_mControlTab.setCurrentTab(0);
        if (CTVControl_ChVol.GetCurTabHost() == null)
          continue;
        CTVControl_ChVol.GetCurTabHost().setCurrentTab(0);
        break;
      case 1:
        if (this.m_mControlTab.getCurrentTab() == 1)
          continue;
        this.m_mControlTab.setCurrentTab(1);
        break;
      case 2:
        if (this.m_mControlTab.getCurrentTab() == 2)
          continue;
        this.m_mControlTab.setCurrentTab(2);
        continue;
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    LifeTime.getInstance().AddRef(this.m_hEventHandler, this);
    super.onCreate(paramBundle);
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    ByeByeReceiver localByeByeReceiver = new ByeByeReceiver(this);
    this.m_ReceiverByeBye = localByeByeReceiver;
    setContentView(2130903050);
    m_myActivityGroup = this;
    this.m_mControlTab = ((TabHost)findViewById(2131230747));
    this.m_mControlTab.setup(getLocalActivityManager());
    TabHost localTabHost1 = this.m_mControlTab;
    4 local4 = new TabHost.OnTabChangeListener()
    {
      public void onTabChanged(String paramString)
      {
        CTVControl_RootUI.this.m_mControlTab.post(new Runnable()
        {
          public void run()
          {
            if (LifeTime.getInstance().m_bVibrateMode)
              CTVControl_RootUI.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_HARD);
            if (LifeTime.getInstance().m_bSoundEffect)
              CGlobalResources.getInstance().PlaySoundMode();
          }
        });
      }
    };
    localTabHost1.setOnTabChangedListener(local4);
    this.m_mTabWidget = this.m_mControlTab.getTabWidget();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    if (this.m_mControlTab != null)
      switch (localDisplayMetrics.densityDpi)
      {
      default:
      case 240:
      case 160:
      case 120:
      case 320:
      }
    int i;
    while (true)
    {
      i = 0;
      if (i < this.m_mTabWidget.getChildCount())
        break;
      registerForContextMenu(this.m_mControlTab);
      Intent localIntent1 = getIntent();
      this.m_mControlTab.setCurrentTab(localIntent1.getIntExtra("tabindex", 0));
      LifeTime.getInstance().setCurRootActivity(this);
      this.m_mgrSensor = ((SensorManager)getSystemService("sensor"));
      if (!this.m_mgrSensor.registerListener(this, 2, 1))
        this.m_mgrSensor.unregisterListener(this, 2);
      this.m_mgrTelephony = ((TelephonyManager)getSystemService("phone"));
      if (this.m_mgrTelephony != null)
        this.m_mgrTelephony.listen(this.mPhoneListener, 32);
      return;
      TabHost localTabHost11 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec10 = this.m_mControlTab.newTabSpec("VOLCH").setIndicator(getResources().getString(2131099675), getResources().getDrawable(2130837560));
      Intent localIntent11 = new Intent(this, CTVControl_ChVol.class);
      localTabHost11.addTab(localTabSpec10.setContent(localIntent11));
      TabHost localTabHost12 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec11 = this.m_mControlTab.newTabSpec("TouchPAD").setIndicator(getResources().getString(2131099696), getResources().getDrawable(2130837663));
      Intent localIntent12 = new Intent(this, CTVControl_Touchpad_pad.class);
      localTabHost12.addTab(localTabSpec11.setContent(localIntent12));
      TabHost localTabHost13 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec12 = this.m_mControlTab.newTabSpec("NaviKey").setIndicator(getResources().getString(2131099699), getResources().getDrawable(2130837666));
      Intent localIntent13 = new Intent(this, CTVControl_Button.class);
      localTabHost13.addTab(localTabSpec12.setContent(localIntent13));
      continue;
      TabHost localTabHost8 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec7 = this.m_mControlTab.newTabSpec("VOLCH").setIndicator(getResources().getString(2131099675));
      Intent localIntent8 = new Intent(this, CTVControl_ChVol.class);
      localTabHost8.addTab(localTabSpec7.setContent(localIntent8));
      TabHost localTabHost9 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec8 = this.m_mControlTab.newTabSpec("TouchPAD").setIndicator(getResources().getString(2131099696));
      Intent localIntent9 = new Intent(this, CTVControl_Touchpad_pad.class);
      localTabHost9.addTab(localTabSpec8.setContent(localIntent9));
      TabHost localTabHost10 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec9 = this.m_mControlTab.newTabSpec("NaviKey").setIndicator(getResources().getString(2131099699));
      Intent localIntent10 = new Intent(this, CTVControl_Button.class);
      localTabHost10.addTab(localTabSpec9.setContent(localIntent10));
      continue;
      TabHost localTabHost5 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec4 = this.m_mControlTab.newTabSpec("VOLCH").setIndicator(getResources().getString(2131099675));
      Intent localIntent5 = new Intent(this, CTVControl_ChVol.class);
      localTabHost5.addTab(localTabSpec4.setContent(localIntent5));
      TabHost localTabHost6 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec5 = this.m_mControlTab.newTabSpec("TouchPAD").setIndicator(getResources().getString(2131099696));
      Intent localIntent6 = new Intent(this, CTVControl_Touchpad_pad.class);
      localTabHost6.addTab(localTabSpec5.setContent(localIntent6));
      TabHost localTabHost7 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec6 = this.m_mControlTab.newTabSpec("NaviKey").setIndicator(getResources().getString(2131099699));
      Intent localIntent7 = new Intent(this, CTVControl_Button.class);
      localTabHost7.addTab(localTabSpec6.setContent(localIntent7));
      continue;
      TabHost localTabHost2 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec1 = this.m_mControlTab.newTabSpec("VOLCH").setIndicator(getResources().getString(2131099675), getResources().getDrawable(2130837560));
      Intent localIntent2 = new Intent(this, CTVControl_ChVol.class);
      localTabHost2.addTab(localTabSpec1.setContent(localIntent2));
      TabHost localTabHost3 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec2 = this.m_mControlTab.newTabSpec("TouchPAD").setIndicator(getResources().getString(2131099696), getResources().getDrawable(2130837663));
      Intent localIntent3 = new Intent(this, CTVControl_Touchpad_pad.class);
      localTabHost3.addTab(localTabSpec2.setContent(localIntent3));
      TabHost localTabHost4 = this.m_mControlTab;
      TabHost.TabSpec localTabSpec3 = this.m_mControlTab.newTabSpec("NaviKey").setIndicator(getResources().getString(2131099699), getResources().getDrawable(2130837666));
      Intent localIntent4 = new Intent(this, CTVControl_Button.class);
      localTabHost4.addTab(localTabSpec3.setContent(localIntent4));
    }
    ImageView localImageView = (ImageView)this.m_mTabWidget.getChildAt(i).findViewById(16908294);
    TextView localTextView = (TextView)this.m_mTabWidget.getChildAt(i).findViewById(16908310);
    localTextView.setTextColor(getResources().getColorStateList(2131165184));
    this.m_mTabWidget.getChildAt(i).setSoundEffectsEnabled(false);
    switch (localDisplayMetrics.densityDpi)
    {
    default:
      label1156: if (Integer.parseInt(Build.VERSION.SDK) > 7)
        break;
    case 240:
    case 160:
    case 120:
    }
    while (true)
    {
      try
      {
        Field localField1 = this.m_mTabWidget.getClass().getDeclaredField("mBottomLeftStrip");
        Field localField2 = this.m_mTabWidget.getClass().getDeclaredField("mBottomRightStrip");
        if (localField1.isAccessible())
          continue;
        localField1.setAccessible(true);
        if (localField2.isAccessible())
          continue;
        localField2.setAccessible(true);
        localField1.set(this.m_mTabWidget, getResources().getDrawable(2130837529));
        localField2.set(this.m_mTabWidget, getResources().getDrawable(2130837530));
        this.m_mTabWidget.getChildAt(i).setBackgroundDrawable(getResources().getDrawable(2130837660));
        i++;
        break;
        localImageView.setPadding(0, 6, 0, 0);
        localTextView.setPadding(0, 0, 0, 3);
        break label1156;
        this.m_mTabWidget.getChildAt(i).getLayoutParams().height = 32;
        break label1156;
        this.m_mTabWidget.getChildAt(i).getLayoutParams().height = 16;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      this.m_mTabWidget.setStripEnabled(true);
      this.m_mTabWidget.setLeftStripDrawable(2130837529);
      this.m_mTabWidget.setRightStripDrawable(2130837530);
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    this.m_ctlMenu = new CMainMenu(paramMenu);
    this.m_ctlMenu.SetMainMenu();
    return true;
  }

  protected void onDestroy()
  {
    if (this.m_mgrSensor != null)
    {
      this.m_mgrSensor.unregisterListener(this, 2);
      this.m_mgrSensor = null;
    }
    if (this.m_mgrTelephony != null)
    {
      if (this.m_mgrTelephony != null)
        this.m_mgrTelephony.listen(this.mPhoneListener, 0);
      this.m_mgrTelephony = null;
    }
    m_myActivityGroup = null;
    if (this.m_ReceiverByeBye != null)
    {
      this.m_ReceiverByeBye.unRegReceiver();
      this.m_ReceiverByeBye = null;
    }
    super.onDestroy();
    LifeTime.getInstance().ReleaseRef(this.m_hEventHandler);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    super.onOptionsItemSelected(paramMenuItem);
    return this.m_ctlMenu.onOptionsItemSelected(paramMenuItem, this);
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2).setVisible(true);
    paramMenu.findItem(3).setVisible(true);
    return super.onPrepareOptionsMenu(paramMenu);
  }

  public void onSensorChanged(int paramInt, float[] paramArrayOfFloat)
  {
    if (paramInt == 2)
    {
      long l1 = System.currentTimeMillis();
      if (l1 - this.lastUpdate >= 100L)
      {
        long l2 = l1 - this.lastUpdate;
        this.lastUpdate = l1;
        float f = paramArrayOfFloat[0];
        if ((f > 1.0F) || (f < -1.0F))
        {
          if ((10000.0F * (Math.abs(f - this.last_x) / (float)l2) >= 2000.0F) && (l1 - this.lastSend >= 2000L))
          {
            this.lastSend = l1;
            this.m_hGoNetcast.post(new Runnable()
            {
              public void run()
              {
                CTVControl_RootUI.this.GoNetcast();
              }
            });
          }
          this.last_x = f;
        }
      }
    }
  }

  void processEventHadler(int paramInt)
  {
    ByeByeReceiver.sendBroadcastBye();
    switch (paramInt)
    {
    case 5:
    case 8:
    default:
    case 4:
    case 6:
    case 7:
    case 9:
    }
    while (true)
    {
      return;
      LifeTime.getInstance().setKBDActive(false);
      startActivityForResult(new Intent(this, CTVControl_Keyboard.class), 6985);
      continue;
      if (this.m_mControlTab.getCurrentTab() != 0)
        this.m_mControlTab.setCurrentTab(0);
      if (CTVControl_ChVol.GetCurTabHost() == null)
        continue;
      CTVControl_ChVol.GetCurTabHost().setCurrentTab(0);
      continue;
      if (this.m_mControlTab.getCurrentTab() == 1)
        continue;
      this.m_mControlTab.setCurrentTab(1);
      continue;
      if (this.m_mControlTab.getCurrentTab() == 2)
        continue;
      this.m_mControlTab.setCurrentTab(2);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_RootUI
 * JD-Core Version:    0.6.0
 */