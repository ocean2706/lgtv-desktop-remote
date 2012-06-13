package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import java.util.LinkedList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class LifeTime
{
  public static final String DEMO_MYCHLIST_DB_FILE_NAME = "demo_mychList.db";
  public static final String SETTINGS_DEFAULT_TVINFO = "Pref_DefaultTVInfo";
  private static volatile LifeTime uniqueInstance;
  private ReentrantReadWriteLock lockTextChangedHandler = new ReentrantReadWriteLock();
  private PowerManager.WakeLock m_WL;
  WifiManager m_WiFiManager = null;
  private boolean m_bAutoMuteMode = false;
  private boolean m_bDemoTVMode = false;
  private boolean m_bIsByeByeFromTV = false;
  boolean m_bIsKeyboardActivated = false;
  private boolean m_bShowDemoTV = false;
  public boolean m_bSoundEffect = false;
  public boolean m_bVibrateMode = false;
  public UDPRequest m_ctlUDPRequest = new UDPRequest();
  private DestInfo m_curDestInfo = new DestInfo();
  float m_fTouchSensitivity = 3.0F;
  private Handler m_hRecvCHInfoHandler = null;
  private int m_nAliveInstNum = 0;
  int m_nMyIPAddr;
  private int m_nRefCnt = 0;
  Activity m_rootActivity = null;
  private ReentrantReadWriteLock m_rwlRegiEvtHandler = new ReentrantReadWriteLock();
  LinkedList<Handler> m_stackEventHandler = new LinkedList();
  private String m_strIP = null;
  private String m_strSession = null;
  private TVInfo m_targetTVInfo;
  threadDetectChangeIPAddr m_threadIPCheck;

  private void deleteActiveHandler(Handler paramHandler)
  {
    this.m_rwlRegiEvtHandler.writeLock().lock();
    this.m_stackEventHandler.remove(paramHandler);
    this.m_rwlRegiEvtHandler.writeLock().unlock();
  }

  public static LifeTime getInstance()
  {
    if (uniqueInstance == null)
      monitorenter;
    try
    {
      if (uniqueInstance == null)
        uniqueInstance = new LifeTime();
      return uniqueInstance;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void setActivityHandler(Handler paramHandler)
  {
    this.m_rwlRegiEvtHandler.writeLock().lock();
    this.m_stackEventHandler.addLast(paramHandler);
    this.m_rwlRegiEvtHandler.writeLock().unlock();
  }

  public void AddRef(Handler paramHandler, Context paramContext)
  {
    setActivityHandler(paramHandler);
    if (this.m_nRefCnt == 0)
    {
      setWL(((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "WiFiRemocon"));
      getWL().acquire();
    }
    this.m_nRefCnt = (1 + this.m_nRefCnt);
  }

  int GetContextUIState()
  {
    if (getInstance().GetDestInfo() == null);
    for (int i = 0; ; i = QueryRequest.GetInitUIState(getInstance().GetDestInfo()))
      return i;
  }

  public DestInfo GetDestInfo()
  {
    DestInfo localDestInfo;
    if (isDemoTVMode())
      localDestInfo = null;
    while (true)
    {
      return localDestInfo;
      if (this.m_strIP == null)
      {
        localDestInfo = null;
        continue;
      }
      if (this.m_strSession == null)
      {
        localDestInfo = null;
        continue;
      }
      this.m_curDestInfo.SetInfo(this.m_strIP, this.m_strSession);
      localDestInfo = this.m_curDestInfo;
    }
  }

  boolean GetIntentContextUIState(Intent paramIntent)
  {
    int i;
    if (getInstance().GetDestInfo() == null)
    {
      i = 0;
      return i;
    }
    switch (GetContextUIState())
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      i = 1;
      break;
      paramIntent.putExtra("tabindex", 0);
      continue;
      paramIntent.putExtra("tabindex", 1);
      continue;
      paramIntent.putExtra("tabindex", 2);
    }
  }

  /** @deprecated */
  public void ReleaseRef(Handler paramHandler)
  {
    monitorenter;
    try
    {
      deleteActiveHandler(paramHandler);
      if (this.m_nRefCnt > 0)
        this.m_nRefCnt -= 1;
      if (this.m_nRefCnt == 0)
      {
        if (this.m_WL != null)
        {
          this.m_WL.release();
          this.m_WL = null;
        }
        Stop();
      }
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

  public void Start(String paramString1, String paramString2)
  {
    this.m_nAliveInstNum = (1 + this.m_nAliveInstNum);
    if (this.m_nAliveInstNum > 1)
    {
      if (!this.m_bIsByeByeFromTV)
        EventRequest.requestByebye(this.m_strIP, this.m_strSession);
      this.m_ctlUDPRequest.close();
    }
    while (true)
    {
      this.m_strIP = paramString1;
      this.m_strSession = paramString2;
      this.m_ctlUDPRequest.create(GetDestInfo());
      return;
      this.m_threadIPCheck = new threadDetectChangeIPAddr();
      this.m_threadIPCheck.start();
      HTTPPostServer.getInstance().start();
      UDPEventServer.getInstance().start();
    }
  }

  /** @deprecated */
  public void Stop()
  {
    monitorenter;
    try
    {
      if (this.m_nAliveInstNum > 0)
        this.m_nAliveInstNum -= 1;
      if (this.m_nAliveInstNum == 0)
      {
        if (this.m_ctlUDPRequest != null)
          this.m_ctlUDPRequest.close();
        if (!this.m_bIsByeByeFromTV)
          EventRequest.requestByebye(this.m_strIP, this.m_strSession);
        if (this.m_threadIPCheck != null)
        {
          this.m_threadIPCheck.Quit();
          this.m_threadIPCheck = null;
        }
        HTTPPostServer.getInstance().stop();
        UDPEventServer.getInstance().stop();
        this.m_strIP = null;
        this.m_strSession = null;
      }
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

  public void UpdateDestInfo(String paramString1, String paramString2)
  {
    this.m_strIP = paramString1;
    this.m_strSession = paramString2;
    this.m_ctlUDPRequest.create(GetDestInfo());
  }

  public Handler getActiveHandler()
  {
    Handler localHandler = null;
    this.m_rwlRegiEvtHandler.readLock().lock();
    if (this.m_stackEventHandler.size() > 0)
      localHandler = (Handler)this.m_stackEventHandler.getLast();
    this.m_rwlRegiEvtHandler.readLock().unlock();
    return localHandler;
  }

  Activity getCurRootActivity()
  {
    return this.m_rootActivity;
  }

  public TVInfo getDefaultTV(Activity paramActivity)
  {
    return TVInfo.getSPData(paramActivity.getSharedPreferences("Pref_DefaultTVInfo", 0));
  }

  public Handler getRecvCHInfoHandler()
  {
    return this.m_hRecvCHInfoHandler;
  }

  public TVInfo getTargetTVInfo()
  {
    return this.m_targetTVInfo;
  }

  public float getTouchSensitivity()
  {
    return this.m_fTouchSensitivity;
  }

  public UDPRequest getUDPRequest()
  {
    return this.m_ctlUDPRequest;
  }

  public PowerManager.WakeLock getWL()
  {
    return this.m_WL;
  }

  public boolean isAutoMuteMode()
  {
    return this.m_bAutoMuteMode;
  }

  public boolean isDemoTVMode()
  {
    return this.m_bDemoTVMode;
  }

  public boolean isKBDActivated()
  {
    this.lockTextChangedHandler.readLock().lock();
    boolean bool = this.m_bIsKeyboardActivated;
    this.lockTextChangedHandler.readLock().unlock();
    return bool;
  }

  public boolean isShowDemoTV()
  {
    return this.m_bShowDemoTV;
  }

  public boolean isVibrateMode()
  {
    return this.m_bVibrateMode;
  }

  public void onByeByeFromTV(boolean paramBoolean)
  {
    this.m_bIsByeByeFromTV = paramBoolean;
  }

  public void setAutoMuteMode(boolean paramBoolean)
  {
    this.m_bAutoMuteMode = paramBoolean;
  }

  void setCurRootActivity(Activity paramActivity)
  {
    this.m_rootActivity = paramActivity;
  }

  public void setDefaultTV(Activity paramActivity, TVInfo paramTVInfo)
  {
    SharedPreferences.Editor localEditor = paramActivity.getSharedPreferences("Pref_DefaultTVInfo", 0).edit();
    if (paramTVInfo != null)
      paramTVInfo.putSPData(localEditor);
    while (true)
    {
      localEditor.commit();
      return;
      TVInfo.resetSPData(localEditor);
    }
  }

  public void setDemoTVMode(boolean paramBoolean)
  {
    this.m_bDemoTVMode = paramBoolean;
  }

  public void setKBDActive(boolean paramBoolean)
  {
    this.lockTextChangedHandler.writeLock().lock();
    this.m_bIsKeyboardActivated = paramBoolean;
    this.lockTextChangedHandler.writeLock().unlock();
  }

  public void setRecvCHInfoHandler(Handler paramHandler)
  {
    this.m_hRecvCHInfoHandler = paramHandler;
  }

  public void setTargetTVInfo(TVInfo paramTVInfo)
  {
    this.m_targetTVInfo = paramTVInfo;
  }

  public void setTouchSensitivity(float paramFloat)
  {
    this.m_fTouchSensitivity = paramFloat;
  }

  public void setWL(PowerManager.WakeLock paramWakeLock)
  {
    this.m_WL = paramWakeLock;
  }

  public void setWiFiManager(WifiManager paramWifiManager)
  {
    this.m_WiFiManager = paramWifiManager;
  }

  public void showDemoTV(boolean paramBoolean)
  {
    this.m_bShowDemoTV = paramBoolean;
  }

  public class DestInfo
  {
    String m_strIP;
    String m_strSessionID;

    DestInfo()
    {
      this.m_strIP = new String();
      this.m_strSessionID = new String();
    }

    DestInfo(String paramString1, String arg3)
    {
      this.m_strIP = paramString1;
      Object localObject;
      this.m_strSessionID = localObject;
    }

    void SetInfo(String paramString1, String paramString2)
    {
      this.m_strIP = paramString1;
      this.m_strSessionID = paramString2;
    }
  }

  class threadDetectChangeIPAddr extends Thread
  {
    boolean m_bIsRunning = false;

    threadDetectChangeIPAddr()
    {
    }

    private String intToIp(int paramInt)
    {
      return (paramInt & 0xFF) + "." + (0xFF & paramInt >> 8) + "." + (0xFF & paramInt >> 16) + "." + (0xFF & paramInt >> 24);
    }

    public void Quit()
    {
      this.m_bIsRunning = false;
      interrupt();
    }

    public void destroy()
    {
      Quit();
    }

    int getIPAddress()
    {
      if (LifeTime.this.m_WiFiManager == null);
      for (int i = 0; ; i = LifeTime.this.m_WiFiManager.getDhcpInfo().ipAddress)
        return i;
    }

    public void run()
    {
      LifeTime.this.m_nMyIPAddr = getIPAddress();
      this.m_bIsRunning = true;
      while (true)
      {
        if (!this.m_bIsRunning)
          return;
        int i = getIPAddress();
        if ((i != 0) && (LifeTime.this.m_nMyIPAddr != i))
        {
          EventRequest.requestUpdate(LifeTime.this.GetDestInfo(), intToIp(LifeTime.this.m_nMyIPAddr), intToIp(i));
          LifeTime.this.m_nMyIPAddr = i;
        }
        try
        {
          sleep(2000L);
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
    }

    /** @deprecated */
    public void start()
    {
      monitorenter;
      try
      {
        super.start();
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
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.LifeTime
 * JD-Core Version:    0.6.0
 */