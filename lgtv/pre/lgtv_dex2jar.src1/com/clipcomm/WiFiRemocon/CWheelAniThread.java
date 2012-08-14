package com.clipcomm.WiFiRemocon;

import android.os.Handler;

class CWheelAniThread extends Thread
{
  private boolean m_bIsRunning = false;
  private Handler m_hCallBackEvtHandler;
  private int m_nDir;
  private int m_nSpeed;

  CWheelAniThread(Handler paramHandler)
  {
    this.m_hCallBackEvtHandler = paramHandler;
  }

  /** @deprecated */
  public void Play(int paramInt1, int paramInt2)
  {
    monitorenter;
    try
    {
      this.m_nDir = paramInt1;
      this.m_nSpeed = paramInt2;
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
    Stop();
  }

  /** @deprecated */
  public void Stop()
  {
    monitorenter;
    try
    {
      this.m_nDir = 0;
      this.m_nSpeed = 0;
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

  public void destroy()
  {
    Quit();
  }

  public void run()
  {
    this.m_bIsRunning = true;
    label34: int i;
    while (true)
    {
      if (!this.m_bIsRunning)
        return;
      if (this.m_nSpeed != 0)
        break;
      try
      {
        sleep(5000L);
      }
      catch (InterruptedException localInterruptedException2)
      {
      }
      continue;
      switch (this.m_nSpeed)
      {
      default:
        i = 4;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      }
    }
    int j;
    while (true)
    {
      j = 0;
      if (j <= 12)
        break label145;
      this.m_hCallBackEvtHandler.sendEmptyMessage(999 * this.m_nDir);
      this.m_nSpeed -= 1;
      if (this.m_nSpeed > 0)
        break label34;
      break;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
    }
    label145: if (j == 0);
    while (true)
    {
      j += i;
      break;
      try
      {
        sleep(6L);
        label162: if (this.m_hCallBackEvtHandler == null)
          continue;
        this.m_hCallBackEvtHandler.sendEmptyMessage(j * this.m_nDir);
      }
      catch (InterruptedException localInterruptedException1)
      {
        break label162;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CWheelAniThread
 * JD-Core Version:    0.6.0
 */