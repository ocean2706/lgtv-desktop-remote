package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.MulticastLock;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;

public class CDeviceSearch extends Activity
{
  static final String DEF_DEMO_TV_MAC = "DEMODEMODEMO";
  static final int PAIRING_DEVICE = 1;
  private Runnable doListUpdate = new Runnable()
  {
    public void run()
    {
      CDeviceSearch.this.ListUpdate();
    }
  };
  private Runnable doResponseReqAuthSession = new Runnable()
  {
    public void run()
    {
      CDeviceSearch.this.m_msgboxWaitForConnect.cancel();
      if (CDeviceSearch.this.m_strAuthSessionResult.length() > 0)
        switch (Integer.parseInt(CDeviceSearch.this.m_strAuthSessionResult))
        {
        case 400:
        default:
        case 200:
        case 401:
        }
      while (true)
      {
        CDeviceSearch.this.m_bTryToConneting = false;
        while (true)
        {
          return;
          ByeByeReceiver.sendBroadcastByeBye(false);
          if (!LifeTime.getInstance().isDemoTVMode())
          {
            LifeTime.getInstance().setTargetTVInfo(CDeviceSearch.this.m_connectTVInfo);
            LifeTime.getInstance().Start(CDeviceSearch.this.m_connectTVInfo.m_strIP, AuthRequest.getSession());
            Intent localIntent3 = new Intent(CDeviceSearch.this, CTVControl_RootUI.class);
            if (!LifeTime.getInstance().GetIntentContextUIState(localIntent3))
              continue;
            CDeviceSearch.this.startActivity(localIntent3);
            Intent localIntent4 = new Intent();
            CDeviceSearch.this.setResult(-1, localIntent4);
            if (CDeviceSearch.this.m_vChkboxDefaultTV.isChecked())
              LifeTime.getInstance().setDefaultTV(CDeviceSearch.this, CDeviceSearch.this.m_connectTVInfo);
            CDeviceSearch.this.finish();
            continue;
          }
          LifeTime.getInstance().setTargetTVInfo(CDeviceSearch.this.m_connectTVInfo);
          LifeTime.getInstance().Start(null, null);
          Intent localIntent1 = new Intent(CDeviceSearch.this, CTVControl_RootUI.class);
          CDeviceSearch.this.startActivity(localIntent1);
          CDeviceSearch.this.overridePendingTransition(0, 0);
          Intent localIntent2 = new Intent();
          CDeviceSearch.this.setResult(-1, localIntent2);
          CDeviceSearch.this.finish();
        }
        new AlertDialog.Builder(CDeviceSearch.this).setTitle(CDeviceSearch.this.getResources().getString(2131099672)).setMessage(CDeviceSearch.this.getResources().getString(2131099673)).setIcon(17301659).setPositiveButton(CDeviceSearch.this.getResources().getString(2131099674), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            CDeviceSearch.this.m_dbAdapterTVInfo.removeTVInfoFromMACAddr(CDeviceSearch.this.m_connectTVInfo.m_strMACAddr);
          }
        }).show();
      }
    }
  };
  private Runnable doSearchDevice = new Runnable()
  {
    public void run()
    {
      CDeviceSearch.this.SearchDevice();
    }
  };
  View.OnClickListener mClickConnectTVListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      if (CDeviceSearch.this.m_bTryToConneting);
      while (true)
      {
        return;
        if (LifeTime.getInstance().m_bSoundEffect)
          CGlobalResources.getInstance().PlaySoundTap();
        Intent localIntent = new Intent(CDeviceSearch.this, CPairingDevice_Main.class);
        localIntent.putExtra("isReconnectMode", CDeviceSearch.this.m_bReconnectMode);
        int i = CDeviceSearch.this.m_vDeviceList.getCheckedItemPosition();
        if (i == -1)
          continue;
        CDeviceSearch.this.m_connectTVInfo = ((TVInfo)CDeviceSearch.this.m_arDeviceList.get(i));
        Resources localResources = CDeviceSearch.this.getResources();
        String str = "[" + CDeviceSearch.this.m_connectTVInfo.m_strName + "]\n" + localResources.getString(2131099668);
        if (CDeviceSearch.this.isDemoTVItem(CDeviceSearch.this.m_connectTVInfo))
        {
          LifeTime.getInstance().setDemoTVMode(true);
          label170: if (!LifeTime.getInstance().isDemoTVMode())
            break label249;
          CDeviceSearch.this.m_bTryToConneting = true;
          CDeviceSearch.this.m_msgboxWaitForConnect.show(CDeviceSearch.this, str);
        }
        try
        {
          Thread.sleep(800L);
          label209: CDeviceSearch.this.m_strAuthSessionResult = "200";
          CDeviceSearch.this.m_hReqAuthSession.post(CDeviceSearch.this.doResponseReqAuthSession);
          continue;
          LifeTime.getInstance().setDemoTVMode(false);
          break label170;
          label249: Cursor localCursor = CDeviceSearch.this.m_dbAdapterTVInfo.getCursorFromMACAddr(CDeviceSearch.this.m_connectTVInfo.m_strMACAddr);
          if (localCursor != null)
          {
            CDeviceSearch.this.m_bTryToConneting = true;
            CDeviceSearch.this.m_msgboxWaitForConnect.show(CDeviceSearch.this, str);
            CDeviceSearch.this.m_connectTVInfo.m_strAuthKey = localCursor.getString(5);
            CDeviceSearch.this.m_strAuthSessionResult = AuthRequest.requestAuthSession(CDeviceSearch.this.m_connectTVInfo);
            CDeviceSearch.this.m_hReqAuthSession.post(CDeviceSearch.this.doResponseReqAuthSession);
            localCursor.close();
            continue;
          }
          localIntent.putExtra("set_default_tv", CDeviceSearch.this.m_vChkboxDefaultTV.isChecked());
          localIntent.putExtra("TVInfo", (TVInfo)CDeviceSearch.this.m_arDeviceList.get(i));
          CDeviceSearch.this.startActivityForResult(localIntent, 1);
        }
        catch (InterruptedException localInterruptedException)
        {
          break label209;
        }
      }
    }
  };
  View.OnClickListener mClickRescanTVListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      if (LifeTime.getInstance().m_bSoundEffect)
        CGlobalResources.getInstance().PlaySoundTap();
      CDeviceSearch.this.m_vTextMsg.setVisibility(4);
      CDeviceSearch.this.m_vImageRescan.setVisibility(4);
      CDeviceSearch.this.m_vButtonRescanTV.setVisibility(4);
      CDeviceSearch.this.m_msgboxWaitForSearch.show(CDeviceSearch.this, 2131099657);
      new Thread(null, CDeviceSearch.this.doSearchDevice, "CDeviceSearch:SearchDevice").start();
    }
  };
  AdapterView.OnItemClickListener mItemClickListener = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      if (LifeTime.getInstance().m_bSoundEffect)
        CGlobalResources.getInstance().PlaySoundTap();
      CDeviceSearch.this.SelectItem(paramInt);
    }
  };
  private TVInfoAdapter m_aaAdapter;
  private ArrayList<TVInfo> m_arDeviceList;
  private boolean m_bReconnectMode = false;
  boolean m_bTryToConneting = false;
  TVInfo m_connectTVInfo;
  private CMainMenu m_ctlMenu;
  CDBAdapter_TVInfo m_dbAdapterTVInfo;
  private Handler m_hReqAuthSession = new Handler();
  private Handler m_hThreadHandler = new Handler();
  private WifiManager.MulticastLock m_lock;
  private HDCPMgr m_mgrHDCP;
  private CWaitMessagebox m_msgboxWaitForConnect = null;
  private CWaitMessagebox m_msgboxWaitForSearch = null;
  String m_strAuthSessionResult;
  private Button m_vButtonConnectTV;
  private Button m_vButtonRescanTV;
  private CheckBox m_vChkboxDefaultTV;
  private ListView m_vDeviceList;
  private ImageView m_vImageRescan;
  private TextView m_vTextMsg;

  private void ListUpdate()
  {
    this.m_aaAdapter.notifyDataSetChanged();
    this.m_msgboxWaitForSearch.cancel();
    int i;
    if (this.m_bReconnectMode)
    {
      i = this.m_aaAdapter.getItemPosFromMAC(LifeTime.getInstance().getTargetTVInfo().m_strMACAddr);
      if (i == -1)
        this.m_vButtonRescanTV.setVisibility(0);
    }
    else if ((this.m_vDeviceList.getCount() == 0) || ((LifeTime.getInstance().isShowDemoTV()) && (this.m_vDeviceList.getCount() == 1)))
    {
      if (!this.m_bReconnectMode)
      {
        this.m_vTextMsg.setVisibility(0);
        if (!LifeTime.getInstance().isShowDemoTV())
          break label141;
        this.m_vImageRescan.setVisibility(8);
      }
    }
    while (true)
    {
      this.m_vButtonRescanTV.setVisibility(0);
      return;
      this.m_vDeviceList.setItemChecked(i, true);
      SelectItem(i);
      break;
      label141: this.m_vImageRescan.setVisibility(0);
    }
  }

  private void SearchDevice()
  {
    this.m_arDeviceList.clear();
    this.m_lock.acquire();
    this.m_mgrHDCP.FindTV(this.m_arDeviceList, this.m_dbAdapterTVInfo);
    this.m_lock.release();
    if (LifeTime.getInstance().isShowDemoTV())
    {
      TVInfo localTVInfo = new TVInfo();
      localTVInfo.m_strName = getResources().getString(2131099661);
      localTVInfo.m_strDispname = getResources().getString(2131099662);
      localTVInfo.m_strIP = "0.0.0.0";
      localTVInfo.m_strPort = "8080";
      localTVInfo.m_strMACAddr = "DEMODEMODEMO";
      this.m_arDeviceList.add(localTVInfo);
    }
    this.m_hThreadHandler.post(this.doListUpdate);
  }

  void SelectItem(int paramInt)
  {
    String str = ((TVInfo)this.m_arDeviceList.get(paramInt)).m_strMACAddr;
    if ((this.m_bReconnectMode) && (LifeTime.getInstance().getTargetTVInfo().m_strMACAddr.equals(str)))
    {
      this.m_vButtonConnectTV.setEnabled(false);
      if (isDemoTVItem((TVInfo)this.m_arDeviceList.get(paramInt)))
        break label126;
      this.m_vChkboxDefaultTV.setEnabled(true);
      TVInfo localTVInfo = LifeTime.getInstance().getDefaultTV(this);
      if ((localTVInfo == null) || (!localTVInfo.m_strMACAddr.equals(str)))
        break label115;
      this.m_vChkboxDefaultTV.setChecked(true);
    }
    while (true)
    {
      return;
      this.m_vButtonConnectTV.setEnabled(true);
      break;
      label115: this.m_vChkboxDefaultTV.setChecked(false);
      continue;
      label126: this.m_vChkboxDefaultTV.setEnabled(false);
    }
  }

  boolean isDemoTVItem(TVInfo paramTVInfo)
  {
    if (paramTVInfo.m_strMACAddr.equals("DEMODEMODEMO"));
    for (int i = 1; ; i = 0)
      return i;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt2)
    {
    default:
    case -1:
    }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      finish();
    }
  }

  public void onBackPressed()
  {
    if (this.m_bReconnectMode)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("DefaultTV", "");
      if (this.m_vChkboxDefaultTV.isChecked())
      {
        int i = this.m_vDeviceList.getCheckedItemPosition();
        if (i != -1)
        {
          this.m_connectTVInfo = ((TVInfo)this.m_arDeviceList.get(i));
          localIntent.putExtra("DefaultTV", this.m_connectTVInfo.m_strMACAddr);
        }
      }
      setResult(0, localIntent);
    }
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    this.m_bReconnectMode = getIntent().getBooleanExtra("isReconnectMode", false);
    this.m_vTextMsg = ((TextView)findViewById(2131230727));
    this.m_vImageRescan = ((ImageView)findViewById(2131230728));
    this.m_dbAdapterTVInfo = new CDBAdapter_TVInfo(this);
    this.m_dbAdapterTVInfo.open();
    this.m_arDeviceList = new ArrayList();
    this.m_mgrHDCP = new HDCPMgr();
    this.m_aaAdapter = new TVInfoAdapter(this, 2130903047, this.m_arDeviceList);
    this.m_vDeviceList = ((ListView)findViewById(2131230726));
    this.m_vDeviceList.setAdapter(this.m_aaAdapter);
    this.m_vDeviceList.setItemsCanFocus(false);
    this.m_vDeviceList.setChoiceMode(1);
    this.m_vDeviceList.setOnItemClickListener(this.mItemClickListener);
    this.m_vButtonConnectTV = ((Button)findViewById(2131230731));
    this.m_vButtonConnectTV.setOnClickListener(this.mClickConnectTVListener);
    this.m_vButtonRescanTV = ((Button)findViewById(2131230729));
    this.m_vButtonRescanTV.setOnClickListener(this.mClickRescanTVListener);
    this.m_vChkboxDefaultTV = ((CheckBox)findViewById(2131230730));
    this.m_lock = ((WifiManager)getSystemService("wifi")).createMulticastLock("multicastLock");
    this.m_msgboxWaitForConnect = new CWaitMessagebox();
    this.m_msgboxWaitForSearch = new CWaitMessagebox();
    this.m_msgboxWaitForSearch.show(this, 2131099657);
    new Thread(null, this.doSearchDevice, "CDeviceSearch:SearchDevice").start();
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    this.m_ctlMenu = new CMainMenu(paramMenu);
    this.m_ctlMenu.SetMainMenuForSearchTVUI();
    return true;
  }

  protected void onDestroy()
  {
    this.m_dbAdapterTVInfo.close();
    this.m_msgboxWaitForSearch.exit();
    this.m_msgboxWaitForConnect.exit();
    super.onDestroy();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    super.onOptionsItemSelected(paramMenuItem);
    if (LifeTime.getInstance().m_bSoundEffect)
      CGlobalResources.getInstance().PlaySoundTap();
    return this.m_ctlMenu.onOptionsItemSelected(paramMenuItem, this);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CDeviceSearch
 * JD-Core Version:    0.6.0
 */