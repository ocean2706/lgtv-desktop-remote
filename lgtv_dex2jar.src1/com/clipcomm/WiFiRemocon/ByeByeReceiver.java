package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class ByeByeReceiver extends BroadcastReceiver
{
  public static final String BROADCAST_BYEBYE = "com.clipcomm.WiFiRemocon.BYEBYE";
  private boolean m_bIsLeafUI = false;
  Activity m_recvActivity = null;

  ByeByeReceiver(Activity paramActivity)
  {
    this.m_bIsLeafUI = false;
    this.m_recvActivity = paramActivity;
    if (this.m_recvActivity != null)
    {
      IntentFilter localIntentFilter = new IntentFilter("com.clipcomm.WiFiRemocon.BYEBYE");
      this.m_recvActivity.registerReceiver(this, localIntentFilter);
    }
  }

  ByeByeReceiver(Activity paramActivity, boolean paramBoolean)
  {
    this.m_bIsLeafUI = paramBoolean;
    this.m_recvActivity = paramActivity;
    if (this.m_recvActivity != null)
    {
      IntentFilter localIntentFilter = new IntentFilter("com.clipcomm.WiFiRemocon.BYEBYE");
      this.m_recvActivity.registerReceiver(this, localIntentFilter);
    }
  }

  public static void sendBroadcastBye()
  {
    Activity localActivity = LifeTime.getInstance().getCurRootActivity();
    if (localActivity != null)
    {
      Intent localIntent = new Intent("com.clipcomm.WiFiRemocon.BYEBYE");
      localIntent.putExtra("toRootUI", true);
      localActivity.sendBroadcast(localIntent);
    }
  }

  public static void sendBroadcastByeBye(boolean paramBoolean)
  {
    Activity localActivity = LifeTime.getInstance().getCurRootActivity();
    if (localActivity != null)
    {
      LifeTime.getInstance().onByeByeFromTV(paramBoolean);
      localActivity.sendBroadcast(new Intent("com.clipcomm.WiFiRemocon.BYEBYE"));
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.m_recvActivity == null);
    while (true)
    {
      return;
      boolean bool = paramIntent.getBooleanExtra("toRootUI", false);
      if ((bool) && ((!this.m_bIsLeafUI) || (!bool)))
        continue;
      this.m_recvActivity.finish();
    }
  }

  void unRegReceiver()
  {
    if (this.m_recvActivity != null)
    {
      this.m_recvActivity.unregisterReceiver(this);
      this.m_recvActivity = null;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.ByeByeReceiver
 * JD-Core Version:    0.6.0
 */