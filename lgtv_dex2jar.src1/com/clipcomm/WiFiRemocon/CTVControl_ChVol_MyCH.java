package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import java.util.ArrayList;

public class CTVControl_ChVol_MyCH extends Activity
{
  AdapterView.OnItemClickListener mItemClickListener = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      ChannelInfo localChannelInfo = (ChannelInfo)CTVControl_ChVol_MyCH.this.m_arMyChList.get(paramInt);
      if (localChannelInfo != null)
        paramView.post(new Runnable(localChannelInfo)
        {
          public void run()
          {
            commandRequest.requestHandleChannelChange(LifeTime.getInstance().GetDestInfo(), this.val$selectedChInfo);
            if (LifeTime.getInstance().m_bVibrateMode)
              CTVControl_ChVol_MyCH.this.m_vVibrate.vibrate(CGlobalResources.VIBRATE_LEVEL_HARD);
          }
        });
    }
  };
  ChInfoAdapter m_aaMyChAdapter;
  ArrayList<ChannelInfo> m_arMyChList;
  boolean m_bNeedToUpdate = false;
  Button m_btnImportTVCh;
  CMainMenu m_ctlMenu;
  ChannelInfo m_curChInfo;
  Cursor m_cursorDBMyChInfo = null;
  CDBAdapter_MyCh m_dbAdapter;
  private CWaitMessagebox m_msgboxWaitForSearch = null;
  Button m_vBtnAddCh;
  CHListView m_vMyChList;
  Vibrator m_vVibrate;

  private void getFAVCH(String paramString)
  {
    ArrayList localArrayList = QueryRequest.GetFavoriteChannel(paramString);
    for (int i = 0; ; i++)
    {
      if (i >= localArrayList.size())
      {
        updateMyChList();
        return;
      }
      ChannelInfo localChannelInfo = (ChannelInfo)localArrayList.get(i);
      if (this.m_dbAdapter.isExistCH(localChannelInfo))
        continue;
      this.m_dbAdapter.insertChInfo(localChannelInfo);
    }
  }

  private void updateMyChList()
  {
    this.m_cursorDBMyChInfo.requery();
    this.m_arMyChList.clear();
    if (this.m_cursorDBMyChInfo.moveToFirst())
      do
      {
        ChannelInfo localChannelInfo = new ChannelInfo(this.m_cursorDBMyChInfo.getString(1), this.m_cursorDBMyChInfo.getString(2), this.m_cursorDBMyChInfo.getString(3), this.m_cursorDBMyChInfo.getString(4), this.m_cursorDBMyChInfo.getString(5), this.m_cursorDBMyChInfo.getString(6), this.m_cursorDBMyChInfo.getString(7));
        localChannelInfo.SetDBIndex(this.m_cursorDBMyChInfo.getInt(0));
        this.m_arMyChList.add(0, localChannelInfo);
      }
      while (this.m_cursorDBMyChInfo.moveToNext());
    this.m_vMyChList.clearChoices();
    this.m_aaMyChAdapter.notifyDataSetChanged();
  }

  void LoadMyChList()
  {
    if (this.m_cursorDBMyChInfo == null)
    {
      this.m_cursorDBMyChInfo = this.m_dbAdapter.getAllMyChInfoCursor();
      startManagingCursor(this.m_cursorDBMyChInfo);
    }
    updateMyChList();
  }

  void deleteCheckedItem()
  {
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1)
      updateMyChList();
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onBackPressed()
  {
    new AlertDialog.Builder(LifeTime.getInstance().getCurRootActivity()).setTitle(2131099705).setMessage(2131099706).setPositiveButton(2131099707, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        CTVControl_ChVol_MyCH.this.procBackPressed();
      }
    }).setNegativeButton(2131099708, null).show();
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    ChannelInfo localChannelInfo = (ChannelInfo)this.m_arMyChList.get(localAdapterContextMenuInfo.position);
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2:
    case 3:
    }
    while (true)
    {
      return true;
      Intent localIntent = new Intent(this, CTVControl_ChVol_MyCH_Edit_Name.class);
      localIntent.putExtra("cur_ch", localChannelInfo);
      startActivityForResult(localIntent, 0);
      this.m_bNeedToUpdate = true;
      continue;
      new AlertDialog.Builder(CTVControl_RootUI.getActivity()).setTitle(getResources().getString(2131099720)).setIcon(17301568).setMessage(localChannelInfo.toString()).setPositiveButton(getResources().getString(2131099721), new DialogInterface.OnClickListener(localAdapterContextMenuInfo)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          CTVControl_ChVol_MyCH.this.removeChInfo(this.val$info.position);
        }
      }).setNegativeButton(getResources().getString(2131099722), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
        }
      }).show();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_curChInfo = new ChannelInfo();
    setContentView(2130903054);
    this.m_msgboxWaitForSearch = new CWaitMessagebox();
    this.m_vVibrate = ((Vibrator)getSystemService("vibrator"));
    this.m_vBtnAddCh = ((Button)findViewById(2131230770));
    this.m_vBtnAddCh.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(CTVControl_ChVol_MyCH.this, CTVControl_ChVol_MyCH_Add.class);
        if (LifeTime.getInstance().isDemoTVMode())
        {
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strMajorCH = "777";
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strMinorCH = "777";
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strSrcIndex = "1";
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strPhyNum = "0";
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strName = "Demo TV-0";
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strDispName = "Demo TV-0";
          CTVControl_ChVol_MyCH.this.m_curChInfo.m_strCHType = "cable";
          localIntent.putExtra("cur_ch", CTVControl_ChVol_MyCH.this.m_curChInfo);
          CTVControl_ChVol_MyCH.this.startActivityForResult(localIntent, 0);
          CTVControl_ChVol_MyCH.this.m_bNeedToUpdate = true;
        }
        while (true)
        {
          return;
          if (QueryRequest.GetCurrentChannel(LifeTime.getInstance().GetDestInfo(), CTVControl_ChVol_MyCH.this.m_curChInfo))
          {
            localIntent.putExtra("cur_ch", CTVControl_ChVol_MyCH.this.m_curChInfo);
            CTVControl_ChVol_MyCH.this.startActivityForResult(localIntent, 0);
            CTVControl_ChVol_MyCH.this.m_bNeedToUpdate = true;
            continue;
          }
        }
      }
    });
    this.m_btnImportTVCh = ((Button)findViewById(2131230771));
    this.m_btnImportTVCh.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        CTVControl_ChVol_MyCH.this.m_msgboxWaitForSearch.show(CTVControl_ChVol_MyCH.this, 2131099692);
        ArrayList localArrayList;
        String[] arrayOfString;
        if (QueryRequest.getFavoriteChannelPacket(LifeTime.getInstance().GetDestInfo()))
        {
          localArrayList = QueryRequest.getFAVGroupList();
          if ((localArrayList != null) && (localArrayList.size() > 0))
            arrayOfString = new String[localArrayList.size()];
        }
        for (int i = 0; ; i++)
        {
          if (i >= localArrayList.size())
          {
            paramView.postDelayed(new Runnable(arrayOfString)
            {
              public void run()
              {
                new AlertDialog.Builder(CTVControl_RootUI.getActivity()).setTitle(2131099693).setIcon(2130837580).setItems(this.val$strGroupList, new DialogInterface.OnClickListener(this.val$strGroupList)
                {
                  public void onClick(DialogInterface paramDialogInterface, int paramInt)
                  {
                    CTVControl_ChVol_MyCH.this.getFAVCH(this.val$strGroupList[paramInt]);
                  }
                }).setNegativeButton(2131099695, null).show();
                if (LifeTime.getInstance().m_bSoundEffect)
                  CGlobalResources.getInstance().PlaySoundPopup();
              }
            }
            , 500L);
            CTVControl_ChVol_MyCH.this.m_msgboxWaitForSearch.cancel();
            return;
          }
          arrayOfString[i] = new String((String)localArrayList.get(i));
        }
      }
    });
    this.m_arMyChList = new ArrayList();
    this.m_aaMyChAdapter = new ChInfoAdapter(this, 2130903046, this.m_arMyChList);
    this.m_vMyChList = ((CHListView)findViewById(2131230772));
    this.m_vMyChList.setAdapter(this.m_aaMyChAdapter);
    this.m_vMyChList.setChoiceMode(0);
    this.m_vMyChList.setOnItemClickListener(this.mItemClickListener);
    registerForContextMenu(this.m_vMyChList);
    if (LifeTime.getInstance().isDemoTVMode());
    for (this.m_dbAdapter = new CDBAdapter_MyCh(this, "demo_mychList.db"); ; this.m_dbAdapter = new CDBAdapter_MyCh(this, null))
    {
      this.m_dbAdapter.open();
      LoadMyChList();
      return;
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if ((paramView == this.m_vMyChList) && (this.m_vMyChList.getCheckedItemNum() == 0))
    {
      int i = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
      if (i > -1)
      {
        ChannelInfo localChannelInfo = (ChannelInfo)this.m_arMyChList.get(i);
        if (localChannelInfo != null)
        {
          paramContextMenu.setHeaderTitle(localChannelInfo.toString());
          paramContextMenu.add(0, 2, 0, 2131099718);
          paramContextMenu.add(0, 3, 0, 2131099719);
        }
      }
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.m_ctlMenu = new CMainMenu(paramMenu);
    this.m_ctlMenu.SetMainMenuForSelectCH();
    super.onCreateOptionsMenu(paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    this.m_dbAdapter.close();
    this.m_msgboxWaitForSearch.exit();
    super.onDestroy();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    super.onOptionsItemSelected(paramMenuItem);
    switch (paramMenuItem.getItemId())
    {
    default:
    case 5:
      while (true)
      {
        return true;
        ChannelInfo localChannelInfo2 = (ChannelInfo)this.m_arMyChList.get(this.m_vMyChList.getFirstCheckedItem());
        Intent localIntent = new Intent(this, CTVControl_ChVol_MyCH_Edit_Name.class);
        localIntent.putExtra("cur_ch", localChannelInfo2);
        startActivityForResult(localIntent, 0);
        this.m_bNeedToUpdate = true;
      }
    case 4:
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.m_aaMyChAdapter.getCount())
      {
        updateMyChList();
        break;
      }
      if (!this.m_aaMyChAdapter.getChecked(i))
        continue;
      ChannelInfo localChannelInfo1 = (ChannelInfo)this.m_arMyChList.get(i);
      if (localChannelInfo1 == null)
        continue;
      this.m_dbAdapter.removeChInfo(localChannelInfo1.GetDBIndex());
    }
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    switch (this.m_vMyChList.getCheckedItemNum())
    {
    default:
      paramMenu.findItem(5).setVisible(false);
      paramMenu.findItem(4).setVisible(true);
    case 0:
    case 1:
    }
    while (true)
    {
      return super.onPrepareOptionsMenu(paramMenu);
      paramMenu.findItem(5).setVisible(false);
      paramMenu.findItem(4).setVisible(false);
      continue;
      paramMenu.findItem(5).setVisible(true);
      paramMenu.findItem(4).setVisible(true);
    }
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
  }

  protected void onResume()
  {
    super.onResume();
    if (this.m_bNeedToUpdate)
    {
      this.m_bNeedToUpdate = false;
      updateMyChList();
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }

  public void procBackPressed()
  {
    super.onBackPressed();
  }

  void removeChInfo(int paramInt)
  {
    ChannelInfo localChannelInfo = (ChannelInfo)this.m_arMyChList.get(paramInt);
    if (localChannelInfo != null)
    {
      this.m_dbAdapter.removeChInfo(localChannelInfo.GetDBIndex());
      updateMyChList();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_ChVol_MyCH
 * JD-Core Version:    0.6.0
 */