package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;

public class CWaitMessagebox
{
  private static WaitMsgbox m_actWaitMsgBox = null;
  private static Activity m_cxtCurParent = null;
  private static int m_nWndCnt = 0;
  boolean m_bExit = false;
  boolean m_bShowWnd = false;
  Activity m_cxtParent;
  Handler m_hExitHandler = new Handler();
  String m_strText;

  /** @deprecated */
  static WaitMsgbox getActMsgBoxInst()
  {
    monitorenter;
    try
    {
      WaitMsgbox localWaitMsgbox = m_actWaitMsgBox;
      monitorexit;
      return localWaitMsgbox;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  /** @deprecated */
  static void setActMsgBoxInst(WaitMsgbox paramWaitMsgbox)
  {
    monitorenter;
    try
    {
      m_actWaitMsgBox = paramWaitMsgbox;
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

  private void show()
  {
    if (this.m_cxtParent == null)
      return;
    if (m_nWndCnt == 0)
      showMsgbox();
    while (true)
    {
      this.m_bShowWnd = true;
      m_nWndCnt = 1 + m_nWndCnt;
      break;
      if (m_cxtCurParent != this.m_cxtParent)
        while (true)
        {
          if (m_nWndCnt <= 0)
          {
            showMsgbox();
            break;
          }
          try
          {
            Thread.sleep(10L);
          }
          catch (InterruptedException localInterruptedException)
          {
          }
        }
      m_actWaitMsgBox.setText(this.m_strText);
    }
  }

  private void showMsgbox()
  {
    this.m_bExit = false;
    m_cxtCurParent = this.m_cxtParent;
    Intent localIntent = new Intent(this.m_cxtParent, WaitMsgbox.class);
    localIntent.putExtra("text", this.m_strText.toString());
    this.m_cxtParent.overridePendingTransition(0, 0);
    this.m_cxtParent.startActivity(localIntent);
  }

  void cancel()
  {
    this.m_hExitHandler.postDelayed(new Runnable()
    {
      public void run()
      {
        CWaitMessagebox.this.hide();
      }
    }
    , 500L);
  }

  void cancel_immediately()
  {
    hide();
  }

  void exit()
  {
    hide();
  }

  void hide()
  {
    if (!this.m_bShowWnd);
    while (true)
    {
      return;
      this.m_bShowWnd = false;
      if (m_nWndCnt > 0)
        m_nWndCnt -= 1;
      if (this.m_bExit)
        continue;
      this.m_bExit = true;
      if ((m_nWndCnt != 0) || (m_actWaitMsgBox == null))
        continue;
      m_actWaitMsgBox.finish();
    }
  }

  void show(Activity paramActivity, int paramInt)
  {
    show(paramActivity, paramActivity.getResources().getString(paramInt));
  }

  void show(Activity paramActivity, String paramString)
  {
    this.m_cxtParent = paramActivity;
    this.m_strText = paramString;
    show();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CWaitMessagebox
 * JD-Core Version:    0.6.0
 */