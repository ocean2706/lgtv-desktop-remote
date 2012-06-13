package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.TextView;

public class WaitMsgbox extends Activity
{
  boolean m_bShowWindow = false;
  Handler m_hTimer = new Handler();
  TextView m_vText;

  /** @deprecated */
  public void finish()
  {
    monitorenter;
    try
    {
      if (this.m_bShowWindow)
      {
        this.m_bShowWindow = false;
        super.finish();
        overridePendingTransition(0, 0);
        CWaitMessagebox.setActMsgBoxInst(null);
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

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    CWaitMessagebox.setActMsgBoxInst(this);
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903044);
    this.m_vText = ((TextView)findViewById(2131230736));
    String str = getIntent().getStringExtra("text");
    if (str != null)
      this.m_vText.setText(str);
    this.m_bShowWindow = true;
    this.m_hTimer.postDelayed(new Runnable()
    {
      public void run()
      {
        WaitMsgbox.this.finish();
      }
    }
    , 10000L);
  }

  public void setText(String paramString)
  {
    if (paramString != null)
      this.m_vText.setText(paramString);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.WaitMsgbox
 * JD-Core Version:    0.6.0
 */