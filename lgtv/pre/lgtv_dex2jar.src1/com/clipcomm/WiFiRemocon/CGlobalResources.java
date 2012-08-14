package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.media.SoundPool;

public class CGlobalResources
{
  public static int VIBRATE_LEVEL_HARD;
  public static int VIBRATE_LEVEL_SOFT;
  public static int VIBRATE_LEVEL_WHELL = 10;
  private static volatile CGlobalResources uniqueInstance;
  private int m_pMode;
  private int m_pPopup;
  private int m_pTap;
  private SoundPool m_soundMode;
  private SoundPool m_soundPopup;
  private SoundPool m_soundTap;

  static
  {
    VIBRATE_LEVEL_SOFT = 50;
    VIBRATE_LEVEL_HARD = 120;
  }

  public static CGlobalResources getInstance()
  {
    if (uniqueInstance == null)
      monitorenter;
    try
    {
      if (uniqueInstance == null)
        uniqueInstance = new CGlobalResources();
      return uniqueInstance;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void LoadSound(Context paramContext)
  {
    this.m_soundMode = new SoundPool(1, 3, 0);
    this.m_soundPopup = new SoundPool(2, 3, 0);
    this.m_soundTap = new SoundPool(3, 3, 0);
    this.m_pMode = this.m_soundMode.load(paramContext, 2131034112, 1);
    this.m_pPopup = this.m_soundPopup.load(paramContext, 2131034113, 1);
    this.m_pTap = this.m_soundTap.load(paramContext, 2131034114, 1);
  }

  public void PlaySoundMode()
  {
    if (this.m_soundMode != null)
      this.m_soundMode.play(this.m_pMode, 1.0F, 1.0F, 0, 0, 1.0F);
  }

  public void PlaySoundPopup()
  {
    if (this.m_soundPopup != null)
      this.m_soundPopup.play(this.m_pPopup, 2.0F, 2.0F, 0, 0, 1.0F);
  }

  public void PlaySoundTap()
  {
    if (this.m_soundTap != null)
      this.m_soundTap.play(this.m_pTap, 1.0F, 1.0F, 0, 0, 1.0F);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CGlobalResources
 * JD-Core Version:    0.6.0
 */