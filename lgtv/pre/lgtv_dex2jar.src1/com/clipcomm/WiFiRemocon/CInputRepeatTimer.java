package com.clipcomm.WiFiRemocon;

import android.os.Handler;

class CInputRepeatTimer extends Thread
{
  private boolean m_bFirstInput = true;
  private boolean m_bIsRunning = false;
  private boolean m_bPushDown = false;
  private Handler m_hCallBackEvtHandler;
  private int m_nTimeout;

  CInputRepeatTimer(Handler paramHandler, int paramInt)
  {
    this.m_hCallBackEvtHandler = paramHandler;
    this.m_nTimeout = paramInt;
  }

  /** @deprecated */
  public void Input(boolean paramBoolean)
  {
    monitorenter;
    if (paramBoolean);
    try
    {
      this.m_bFirstInput = true;
      this.m_bPushDown = paramBoolean;
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
    Input(false);
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
      if (!this.m_bPushDown)
      {
        try
        {
          sleep(5000L);
        }
        catch (InterruptedException localInterruptedException2)
        {
        }
        continue;
      }
      try
      {
        if (this.m_bFirstInput)
        {
          this.m_bFirstInput = false;
          sleep(300L);
        }
        while ((this.m_bPushDown) && (this.m_hCallBackEvtHandler != null))
        {
          this.m_hCallBackEvtHandler.sendEmptyMessage(0);
          break;
          sleep(this.m_nTimeout);
        }
      }
      catch (InterruptedException localInterruptedException1)
      {
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CInputRepeatTimer
 * JD-Core Version:    0.6.0
 */