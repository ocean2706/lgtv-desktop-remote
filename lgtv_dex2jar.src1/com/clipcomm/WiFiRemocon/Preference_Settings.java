package com.clipcomm.WiFiRemocon;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;

public class Preference_Settings extends PreferenceActivity
{
  public static final String KEY_PREFCONF_AUTO_MUTE = "config_auto_mute";
  public static final String KEY_PREFCONF_DEMO_TV_MODE = "config_demo_tv";
  public static final String KEY_PREFCONF_SOUND_EFFECT = "config_sound_effects";
  public static final String KEY_PREFCONF_TOUCH_SENSITIVITY = "touch_sensitivity";
  public static final String KEY_PREFCONF_VIBRATE_FEEDBACK = "config_vibration_feedback";
  public static final String KEY_PREFSCR_CONNECTED_TV = "config_connected_tv";
  public static final String KEY_PREFSCR_EDIT_TV_NAME = "config_edit_tv_name";
  public static final int REQ_CODE_CONNECTED_TV = 1;
  public static final int REQ_CODE_EDIT_TV_NAME = 2;
  Handler m_Handler = new Handler();
  ByeByeReceiver m_ReceiverByeBye;
  private TVInfo m_connectTVInfo = new TVInfo();
  CDBAdapter_TVInfo m_dbAdapterTVInfo;
  PreferenceScreen m_prefAboutApp;
  CheckBoxPreference m_prefChkBox;
  PreferenceScreen m_prefEditTVname;
  SeekBarPreference m_prefSensitivity;
  PreferenceScreen m_prefSupportedModels;
  PreferenceScreen m_prefscrConTV;

  void DisplayTVNameInfo()
  {
    String str = this.m_connectTVInfo.m_strName;
    if ((this.m_connectTVInfo.m_strDispname != null) && (this.m_connectTVInfo.m_strDispname.length() > 0))
      str = str + " - " + this.m_connectTVInfo.m_strDispname;
    this.m_prefscrConTV.setSummary(str);
    if (this.m_connectTVInfo.m_strDispname != null)
      this.m_prefEditTVname.setSummary(this.m_connectTVInfo.m_strDispname);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((paramInt2 != 0) || (paramIntent == null))
        continue;
      String str = paramIntent.getStringExtra("DefaultTV");
      if (str == null)
        continue;
      if (str.equals(this.m_connectTVInfo.m_strMACAddr))
      {
        LifeTime.getInstance().setDefaultTV(this, this.m_connectTVInfo);
        continue;
      }
      LifeTime.getInstance().setDefaultTV(this, null);
      continue;
      if (paramInt2 != -1)
        continue;
      this.m_connectTVInfo.m_strDispname = paramIntent.getStringExtra("text");
      DisplayTVNameInfo();
      this.m_dbAdapterTVInfo.open();
      this.m_dbAdapterTVInfo.updateTVInfo(this.m_connectTVInfo.m_lDBIndex, this.m_connectTVInfo);
      this.m_dbAdapterTVInfo.close();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_ReceiverByeBye = new ByeByeReceiver(this);
    switch (getIntent().getIntExtra("mode", 2))
    {
    default:
    case 2:
    case 6:
    }
    while (true)
    {
      this.m_prefSensitivity = ((SeekBarPreference)getPreferenceScreen().findPreference("touch_sensitivity"));
      this.m_prefAboutApp = ((PreferenceScreen)getPreferenceScreen().findPreference("pref_about_app"));
      this.m_prefSupportedModels = ((PreferenceScreen)getPreferenceScreen().findPreference("pref_supported_model"));
      this.m_prefAboutApp.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener()
      {
        public boolean onPreferenceClick(Preference paramPreference)
        {
          Intent localIntent = new Intent(Preference_Settings.this, PreferenceManual.class);
          localIntent.putExtra("manual", "about");
          Preference_Settings.this.startActivity(localIntent);
          return true;
        }
      });
      this.m_prefSupportedModels.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener()
      {
        public boolean onPreferenceClick(Preference paramPreference)
        {
          Intent localIntent = new Intent(Preference_Settings.this, PreferenceManual.class);
          localIntent.putExtra("manual", "models");
          Preference_Settings.this.startActivity(localIntent);
          return true;
        }
      });
      this.m_prefChkBox = ((CheckBoxPreference)getPreferenceScreen().findPreference("config_demo_tv"));
      this.m_prefChkBox.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener()
      {
        public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
        {
          String str = Preference_Settings.this.getResources().getString(2131099724);
          new AlertDialog.Builder(Preference_Settings.this).setTitle(Preference_Settings.this.getResources().getString(2131099723)).setMessage(str.toString()).setNegativeButton(Preference_Settings.this.getResources().getString(2131099725), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramDialogInterface, int paramInt)
            {
              Preference_Settings.this.m_Handler.postDelayed(new Runnable()
              {
                public void run()
                {
                  Message localMessage = new Message();
                  localMessage.arg1 = 3;
                  localMessage.obj = null;
                  Handler localHandler = LifeTime.getInstance().getActiveHandler();
                  if (localHandler != null)
                    localHandler.sendMessage(localMessage);
                  Preference_Settings.this.finish();
                }
              }
              , 100L);
            }
          }).show();
          return true;
        }
      });
      return;
      addPreferencesFromResource(2130968576);
      this.m_connectTVInfo = LifeTime.getInstance().getTargetTVInfo();
      this.m_prefscrConTV = ((PreferenceScreen)getPreferenceScreen().findPreference("config_connected_tv"));
      this.m_prefEditTVname = ((PreferenceScreen)getPreferenceScreen().findPreference("config_edit_tv_name"));
      DisplayTVNameInfo();
      this.m_dbAdapterTVInfo = new CDBAdapter_TVInfo(this);
      this.m_prefscrConTV.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener()
      {
        public boolean onPreferenceClick(Preference paramPreference)
        {
          Intent localIntent = new Intent(Preference_Settings.this, CDeviceSearch.class);
          localIntent.putExtra("isReconnectMode", true);
          Preference_Settings.this.startActivityForResult(localIntent, 1);
          return true;
        }
      });
      this.m_prefEditTVname.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener()
      {
        public boolean onPreferenceClick(Preference paramPreference)
        {
          if (LifeTime.getInstance().isDemoTVMode());
          for (int i = 0; ; i = 1)
          {
            return i;
            Intent localIntent = new Intent(Preference_Settings.this, CSetting_EditTVName.class);
            localIntent.putExtra("text", Preference_Settings.this.m_connectTVInfo.m_strDispname);
            Preference_Settings.this.startActivityForResult(localIntent, 2);
          }
        }
      });
      continue;
      addPreferencesFromResource(2130968577);
    }
  }

  protected void onDestroy()
  {
    if (this.m_ReceiverByeBye != null)
    {
      this.m_ReceiverByeBye.unRegReceiver();
      this.m_ReceiverByeBye = null;
    }
    super.onDestroy();
  }

  protected void onPause()
  {
    CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)getPreferenceScreen().findPreference("config_vibration_feedback");
    LifeTime.getInstance().m_bVibrateMode = localCheckBoxPreference1.isChecked();
    CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)getPreferenceScreen().findPreference("config_sound_effects");
    LifeTime.getInstance().m_bSoundEffect = localCheckBoxPreference2.isChecked();
    CheckBoxPreference localCheckBoxPreference3 = (CheckBoxPreference)getPreferenceScreen().findPreference("config_demo_tv");
    LifeTime.getInstance().showDemoTV(localCheckBoxPreference3.isChecked());
    CheckBoxPreference localCheckBoxPreference4 = (CheckBoxPreference)getPreferenceScreen().findPreference("config_auto_mute");
    LifeTime.getInstance().setAutoMuteMode(localCheckBoxPreference4.isChecked());
    LifeTime.getInstance().setTouchSensitivity(this.m_prefSensitivity.getValue());
    super.onPause();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.Preference_Settings
 * JD-Core Version:    0.6.0
 */