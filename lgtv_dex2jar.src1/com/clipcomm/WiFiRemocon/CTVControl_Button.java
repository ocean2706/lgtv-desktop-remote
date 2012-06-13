package com.clipcomm.WiFiRemocon;

import android.app.TabActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Vibrator;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.lang.reflect.Field;

public class CTVControl_Button extends TabActivity
{
  static TabHost m_mControlTab;
  CMainMenu m_ctlMenu;
  TabWidget m_mTabWidget;
  Vibrator m_vVibrate;

  public static TabHost GetCurTabHost()
  {
    return m_mControlTab;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    m_mControlTab = getTabHost();
    m_mControlTab.setOnTabChangedListener(new TabHost.OnTabChangeListener()
    {
      public void onTabChanged(String paramString)
      {
        CTVControl_Button.m_mControlTab.post(new Runnable()
        {
          public void run()
          {
            if (LifeTime.getInstance().m_bVibrateMode)
              CTVControl_Button.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_HARD);
          }
        });
      }
    });
    this.m_mTabWidget = m_mControlTab.getTabWidget();
    LayoutInflater.from(this).inflate(2130903048, m_mControlTab.getTabContentView(), true);
    m_mControlTab.addTab(m_mControlTab.newTabSpec("Navi").setIndicator(null, getResources().getDrawable(2130837555)).setContent(new Intent(this, CTVControl_Button_navi.class)));
    m_mControlTab.addTab(m_mControlTab.newTabSpec("MM").setIndicator(null, getResources().getDrawable(2130837556)).setContent(new Intent(this, CTVControl_Button_MM.class)));
    int i = 0;
    if (i >= this.m_mTabWidget.getChildCount())
    {
      registerForContextMenu(m_mControlTab);
      return;
    }
    ImageView localImageView = (ImageView)this.m_mTabWidget.getChildAt(i).findViewById(16908294);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.m_mTabWidget.getChildAt(i).setSoundEffectsEnabled(false);
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    switch (localDisplayMetrics.densityDpi)
    {
    default:
      label260: if (Integer.parseInt(Build.VERSION.SDK) > 7)
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
        localField1.set(this.m_mTabWidget, getResources().getDrawable(2130837658));
        localField2.set(this.m_mTabWidget, getResources().getDrawable(2130837659));
        this.m_mTabWidget.getChildAt(i).setBackgroundDrawable(getResources().getDrawable(2130837661));
        i++;
        break;
        localImageView.setPadding(0, 4, 0, 0);
        this.m_mTabWidget.getChildAt(i).getLayoutParams().height = 64;
        break label260;
        localImageView.setPadding(0, 1, 0, 0);
        this.m_mTabWidget.getChildAt(i).getLayoutParams().height = 32;
        break label260;
        localImageView.setPadding(0, 0, 0, 0);
        this.m_mTabWidget.getChildAt(i).getLayoutParams().height = 16;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      this.m_mTabWidget.setStripEnabled(true);
      this.m_mTabWidget.setLeftStripDrawable(2130837658);
      this.m_mTabWidget.setRightStripDrawable(2130837659);
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_Button
 * JD-Core Version:    0.6.0
 */