package com.clipcomm.WiFiRemocon;

import android.os.Handler;

class CInputTimer extends Thread
{
  private boolean m_bInputExist = false;
  private boolean m_bIsRunning = false;
  private Handler m_hCallBackEvtHandler;
  private int m_nTimeout;

  CInputTimer(Handler paramHandler, int paramInt)
  {
    this.m_hCallBackEvtHandler = paramHandler;
    this.m_nTimeout = paramInt;
  }

  /** @deprecated */
  public void Input()
  {
    monitorenter;
    try
    {
      interrupt();
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

  public void Quit()
  {
    this.m_bIsRunning = false;
    Input();
  }

  public void destroy()
  {
    Quit();
  }

  public void run()
  {
    this.m_bIsRunning = true;
    while (true)
    {
      if (!this.m_bIsRunning)
        return;
      try
      {
        sleep(this.m_nTimeout);
        if (!this.m_bInputExist)
          continue;
        this.m_bInputExist = false;
        if (this.m_hCallBackEvtHandler == null)
          continue;
        this.m_hCallBackEvtHandler.sendEmptyMessage(0);
      }
      catch (InterruptedException localInterruptedException)
      {
        this.m_bInputExist = true;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CInputTimer
 * JD-Core Version:    0.6.0
 */