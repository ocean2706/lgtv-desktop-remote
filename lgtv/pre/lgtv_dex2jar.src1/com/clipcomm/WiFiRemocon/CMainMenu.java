package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;

public class CMainMenu
{
  public static final int DEF_MENU_NUM_NORMAL_MODE = 2;
  public static final int MENU_DELETE = 4;
  public static final int MENU_RENAME = 5;
  public static final int MENU_SETTINGS_NORMAL = 2;
  public static final int MENU_SETTINGS_ON_SEARCH_TV_UI = 6;
  public static final int MENU_TVOFF = 3;
  Menu m_vMenuContext;
  ItemInfo[] tblMainMenu;

  CMainMenu(Menu paramMenu)
  {
    ItemInfo[] arrayOfItemInfo = new ItemInfo[2];
    arrayOfItemInfo[0] = new ItemInfo(2, 2131099716, 2130837595);
    arrayOfItemInfo[1] = new ItemInfo(3, 2131099717, 2130837597);
    this.tblMainMenu = arrayOfItemInfo;
    this.m_vMenuContext = paramMenu;
  }

  public void ClearMenu()
  {
    this.m_vMenuContext.clear();
  }

  public void SetMainMenu()
  {
    MenuItem[] arrayOfMenuItem = new MenuItem[2];
    for (int i = 0; ; i++)
    {
      if (i >= 2)
        return;
      arrayOfMenuItem[i] = this.m_vMenuContext.add(0, this.tblMainMenu[i].m_nID, 0, this.tblMainMenu[i].m_nTextResID);
      arrayOfMenuItem[i].setEnabled(true);
      if (this.tblMainMenu[i].m_nIconResID == 0)
        continue;
      arrayOfMenuItem[i].setIcon(this.tblMainMenu[i].m_nIconResID);
    }
  }

  public void SetMainMenuForSearchTVUI()
  {
    MenuItem localMenuItem = this.m_vMenuContext.add(0, 6, 0, 2131099716);
    localMenuItem.setEnabled(true);
    localMenuItem.setIcon(2130837595);
  }

  public void SetMainMenuForSelectCH()
  {
    int[][] arrayOfInt = new int[2][];
    int[] arrayOfInt1 = new int[3];
    arrayOfInt1[0] = 5;
    arrayOfInt1[1] = 2131099714;
    arrayOfInt1[2] = 2130837627;
    arrayOfInt[0] = arrayOfInt1;
    int[] arrayOfInt2 = new int[3];
    arrayOfInt2[0] = 4;
    arrayOfInt2[1] = 2131099715;
    arrayOfInt2[2] = 2130837626;
    arrayOfInt[1] = arrayOfInt2;
    for (int i = 0; ; i++)
    {
      if (i >= 2)
        return;
      MenuItem localMenuItem = this.m_vMenuContext.add(0, arrayOfInt[i][0], 0, arrayOfInt[i][1]);
      localMenuItem.setEnabled(true);
      localMenuItem.setIcon(arrayOfInt[i][2]);
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem, Activity paramActivity)
  {
    int i;
    if ((paramMenuItem == null) || (paramActivity == null))
      i = 0;
    while (true)
    {
      return i;
      switch (paramMenuItem.getItemId())
      {
      case 4:
      case 5:
      default:
        i = 0;
        break;
      case 2:
      case 6:
        Intent localIntent = new Intent(paramActivity, Preference_Settings.class);
        localIntent.putExtra("mode", paramMenuItem.getItemId());
        paramActivity.startActivity(localIntent);
        i = 1;
        break;
      case 3:
        onTurnoffTV(paramActivity);
        i = 1;
      }
    }
  }

  public boolean onOptionsItemSelected_2depth(MenuItem paramMenuItem, Activity paramActivity)
  {
    int i;
    if ((paramMenuItem == null) || (paramActivity == null))
      i = 0;
    while (true)
    {
      return i;
      switch (paramMenuItem.getItemId())
      {
      case 4:
      case 5:
      default:
        i = 0;
        break;
      case 2:
      case 6:
        Intent localIntent = new Intent(paramActivity, Preference_Settings.class);
        localIntent.putExtra("mode", paramMenuItem.getItemId());
        paramActivity.startActivity(localIntent);
        i = 1;
        break;
      case 3:
        onTurnoffTV(paramActivity);
        i = 1;
      }
    }
  }

  public void onTurnoffTV(Activity paramActivity)
  {
    new AlertDialog.Builder(LifeTime.getInstance().getCurRootActivity()).setTitle(2131099709).setMessage(2131099710).setPositiveButton(2131099711, new DialogInterface.OnClickListener(paramActivity)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        CMainMenu.this.procTurnoffTV(this.val$cxtFrom);
      }
    }).setNegativeButton(2131099712, null).show();
  }

  public void procTurnoffTV(Activity paramActivity)
  {
    new Handler().postDelayed(new Runnable(paramActivity)
    {
      public void run()
      {
        LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(this.val$cxtFrom.getResources().getString(2131099761)));
        ByeByeReceiver.sendBroadcastByeBye(false);
      }
    }
    , 10L);
  }

  public class ItemInfo
  {
    int m_nID;
    int m_nIconResID;
    int m_nTextResID;

    ItemInfo(int paramInt1, int paramInt2, int arg4)
    {
      this.m_nID = paramInt1;
      this.m_nTextResID = paramInt2;
      int i;
      this.m_nIconResID = i;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CMainMenu
 * JD-Core Version:    0.6.0
 */