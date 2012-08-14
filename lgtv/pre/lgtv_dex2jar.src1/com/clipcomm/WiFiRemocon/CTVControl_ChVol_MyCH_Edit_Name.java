package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public class CTVControl_ChVol_MyCH_Edit_Name extends Activity
{
  ByeByeReceiver m_ReceiverByeBye;
  boolean m_bChangedMyChInfo = false;
  CMainMenu m_ctlMenu;
  ChannelInfo m_curCHInfo;
  CDBAdapter_MyCh m_dbAdapter;
  DynamicLinearLayout m_layout;
  TextView.OnEditorActionListener m_mEditDispnameActListener = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 6)
      {
        CTVControl_ChVol_MyCH_Edit_Name.this.m_curCHInfo.m_strDispName = paramTextView.getText().toString();
        if (CTVControl_ChVol_MyCH_Edit_Name.this.m_dbAdapter.updateChInfo(CTVControl_ChVol_MyCH_Edit_Name.this.m_curCHInfo))
        {
          Intent localIntent = new Intent();
          CTVControl_ChVol_MyCH_Edit_Name.this.setResult(-1, localIntent);
          CTVControl_ChVol_MyCH_Edit_Name.this.finish();
        }
      }
      return false;
    }
  };
  InputMethodManager m_mIMM = null;
  TextView m_vCHHyphen;
  TextView m_vCHMajor;
  TextView m_vCHMinor;
  EditText m_vEditDispname;

  void DispCurChInfo()
  {
    this.m_vCHMajor.setText(this.m_curCHInfo.m_strMajorCH);
    this.m_vCHMinor.setText(this.m_curCHInfo.m_strMinorCH);
    if ((this.m_curCHInfo.m_strMajorCH.length() >= 1) && (this.m_curCHInfo.m_strMinorCH.equals("65535")))
    {
      this.m_vCHMajor.setVisibility(0);
      this.m_vCHHyphen.setVisibility(8);
      this.m_vCHMinor.setVisibility(8);
    }
    while (true)
    {
      return;
      this.m_vCHMajor.setVisibility(0);
      this.m_vCHMinor.setVisibility(0);
      this.m_vCHHyphen.setVisibility(0);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_ReceiverByeBye = new ByeByeReceiver(this, true);
    this.m_layout = ((DynamicLinearLayout)View.inflate(this, 2130903059, null));
    this.m_layout.setOnHideSoftkeyEventListener(new DynamicLinearLayout.onHideSoftkeyEventListener()
    {
      public void onHideSoftkeyEvent()
      {
        CTVControl_ChVol_MyCH_Edit_Name.this.setResult(0);
        CTVControl_ChVol_MyCH_Edit_Name.this.finish();
      }
    });
    setContentView(this.m_layout);
    this.m_curCHInfo = ((ChannelInfo)getIntent().getParcelableExtra("cur_ch"));
    this.m_mIMM = ((InputMethodManager)getSystemService("input_method"));
    this.m_vCHMajor = ((TextView)findViewById(2131230803));
    this.m_vCHMinor = ((TextView)findViewById(2131230805));
    this.m_vCHHyphen = ((TextView)findViewById(2131230804));
    this.m_vEditDispname = ((EditText)findViewById(2131230806));
    this.m_vEditDispname.setOnEditorActionListener(this.m_mEditDispnameActListener);
    this.m_vEditDispname.setText(this.m_curCHInfo.m_strDispName);
    this.m_mIMM.showSoftInput(this.m_vEditDispname, 1);
    if (LifeTime.getInstance().isDemoTVMode());
    for (this.m_dbAdapter = new CDBAdapter_MyCh(this, "demo_mychList.db"); ; this.m_dbAdapter = new CDBAdapter_MyCh(this, null))
    {
      this.m_dbAdapter.open();
      DispCurChInfo();
      registerForContextMenu(this.m_layout);
      return;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    this.m_ctlMenu = new CMainMenu(paramMenu);
    this.m_ctlMenu.SetMainMenu();
    return true;
  }

  protected void onDestroy()
  {
    if (this.m_ReceiverByeBye != null)
    {
      this.m_ReceiverByeBye.unRegReceiver();
      this.m_ReceiverByeBye = null;
    }
    this.m_dbAdapter.close();
    super.onDestroy();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    super.onOptionsItemSelected(paramMenuItem);
    return this.m_ctlMenu.onOptionsItemSelected_2depth(paramMenuItem, this);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_ChVol_MyCH_Edit_Name
 * JD-Core Version:    0.6.0
 */