package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public class CTVControl_ChVol_MyCH_Add extends Activity
{
  ByeByeReceiver m_ReceiverByeBye;
  boolean m_bChangedMyChInfo = false;
  CMainMenu m_ctlMenu;
  ChannelInfo m_curCHInfo;
  CDBAdapter_MyCh m_dbAdapter;
  Handler m_hEvtChInfo;
  Handler m_hEvtInputTimeout;
  DynamicLinearLayout m_layout;
  TextView.OnEditorActionListener m_mEditDispnameActListener = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 6)
      {
        CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strDispName = paramTextView.getText().toString();
        CTVControl_ChVol_MyCH_Add.this.m_vPikerChannel.setVisibility(0);
        CTVControl_ChVol_MyCH_Add.this.m_vBtnChName.setVisibility(0);
        CTVControl_ChVol_MyCH_Add.this.m_vEditDispname.setVisibility(4);
        CTVControl_ChVol_MyCH_Add.this.DispCurChInfo();
      }
      return false;
    }
  };
  InputMethodManager m_mIMM = null;
  int m_nDemoIndex;
  Activity m_pParentActivity;
  private CInputTimer m_thInputTimer = null;
  Button m_vBtnAddCh;
  Button m_vBtnChName;
  TextView m_vCHHyphen;
  TextView m_vCHMajor;
  TextView m_vCHMinor;
  EditText m_vEditDispname;
  TextView m_vGuideText;
  PikerCtlView m_vPikerChannel;

  void DispCurChInfo()
  {
    this.m_vBtnChName.setText(this.m_curCHInfo.m_strDispName);
    this.m_vCHMajor.setText(this.m_curCHInfo.m_strMajorCH);
    this.m_vCHMinor.setText(this.m_curCHInfo.m_strMinorCH);
    if ((this.m_curCHInfo.m_strMajorCH.length() >= 1) && (this.m_curCHInfo.m_strMinorCH.equals("65535")))
    {
      this.m_vCHMajor.setVisibility(0);
      this.m_vBtnChName.setVisibility(0);
      this.m_vCHHyphen.setVisibility(8);
      this.m_vCHMinor.setVisibility(8);
    }
    while (true)
    {
      this.m_vGuideText.setText(2131099689);
      return;
      this.m_vBtnChName.setVisibility(0);
      this.m_vCHMajor.setVisibility(0);
      this.m_vCHMinor.setVisibility(0);
      this.m_vCHHyphen.setVisibility(0);
    }
  }

  void GetCurChInfo()
  {
    if (LifeTime.getInstance().isDemoTVMode())
    {
      this.m_curCHInfo.m_strMajorCH = Integer.toString(1 + Integer.parseInt(this.m_curCHInfo.m_strMajorCH));
      ChannelInfo localChannelInfo = this.m_curCHInfo;
      StringBuilder localStringBuilder = new StringBuilder("Demo TV-");
      int i = 1 + this.m_nDemoIndex;
      this.m_nDemoIndex = i;
      localChannelInfo.m_strDispName = Integer.toString(i);
      DispCurChInfo();
    }
  }

  public void onBackPressed()
  {
    Intent localIntent = new Intent();
    if (this.m_bChangedMyChInfo)
      setResult(-1, localIntent);
    while (true)
    {
      finish();
      return;
      setResult(0);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_ReceiverByeBye = new ByeByeReceiver(this, true);
    this.m_hEvtInputTimeout = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        CTVControl_ChVol_MyCH_Add.this.GetCurChInfo();
        super.handleMessage(paramMessage);
      }
    };
    this.m_thInputTimer = new CInputTimer(this.m_hEvtInputTimeout, 300);
    this.m_hEvtChInfo = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        if ((paramMessage.arg1 == 10) && (paramMessage.obj != null))
        {
          HTTPPostServer.ParseChInfo(CTVControl_ChVol_MyCH_Add.this.m_curCHInfo, (String)paramMessage.obj);
          CTVControl_ChVol_MyCH_Add.this.DispCurChInfo();
        }
        super.handleMessage(paramMessage);
      }
    };
    LifeTime.getInstance().setRecvCHInfoHandler(this.m_hEvtChInfo);
    this.m_layout = ((DynamicLinearLayout)View.inflate(this, 2130903058, null));
    this.m_layout.setOnHideSoftkeyEventListener(new DynamicLinearLayout.onHideSoftkeyEventListener()
    {
      public void onHideSoftkeyEvent()
      {
        CTVControl_ChVol_MyCH_Add.this.m_vPikerChannel.setVisibility(0);
        CTVControl_ChVol_MyCH_Add.this.m_vBtnChName.setVisibility(0);
        CTVControl_ChVol_MyCH_Add.this.m_vEditDispname.setVisibility(4);
      }
    });
    setContentView(this.m_layout);
    this.m_curCHInfo = ((ChannelInfo)getIntent().getParcelableExtra("cur_ch"));
    this.m_mIMM = ((InputMethodManager)getSystemService("input_method"));
    this.m_vCHMajor = ((TextView)findViewById(2131230796));
    this.m_vCHMinor = ((TextView)findViewById(2131230798));
    this.m_vCHHyphen = ((TextView)findViewById(2131230797));
    this.m_vGuideText = ((TextView)findViewById(2131230802));
    this.m_vPikerChannel = ((PikerCtlView)findViewById(2131230791));
    this.m_vPikerChannel.setOnWheelEventListener(new PikerCtlView.OnWheelEventListener()
    {
      public void onWheelEvent(PikerCtlView paramPikerCtlView, PikerCtlView.Event paramEvent)
      {
        switch (paramEvent.getAction())
        {
        default:
        case 2:
        case 1:
        }
        while (true)
        {
          return;
          paramPikerCtlView.postDelayed(new Runnable()
          {
            public void run()
            {
              CTVControl_ChVol_MyCH_Add.this.m_thInputTimer.Input();
              LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(CTVControl_ChVol_MyCH_Add.this.getResources().getString(2131099779)));
            }
          }
          , 10L);
          continue;
          paramPikerCtlView.postDelayed(new Runnable()
          {
            public void run()
            {
              CTVControl_ChVol_MyCH_Add.this.m_thInputTimer.Input();
              LifeTime.getInstance().getUDPRequest().HandlekeyInput(Integer.parseInt(CTVControl_ChVol_MyCH_Add.this.getResources().getString(2131099778)));
            }
          }
          , 10L);
        }
      }
    });
    this.m_vBtnChName = ((Button)findViewById(2131230799));
    this.m_vBtnAddCh = ((Button)findViewById(2131230801));
    this.m_vEditDispname = ((EditText)findViewById(2131230800));
    this.m_vEditDispname.setOnEditorActionListener(this.m_mEditDispnameActListener);
    this.m_vBtnChName.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        CTVControl_ChVol_MyCH_Add.this.m_vPikerChannel.setVisibility(8);
        CTVControl_ChVol_MyCH_Add.this.m_vBtnChName.setVisibility(4);
        CTVControl_ChVol_MyCH_Add.this.m_vEditDispname.setText(CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strDispName);
        CTVControl_ChVol_MyCH_Add.this.m_vEditDispname.setVisibility(0);
        CTVControl_ChVol_MyCH_Add.this.m_mIMM.showSoftInput(CTVControl_ChVol_MyCH_Add.this.m_vEditDispname, 1);
      }
    });
    this.m_vBtnAddCh.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        if (CTVControl_ChVol_MyCH_Add.this.m_dbAdapter.isExistCH(CTVControl_ChVol_MyCH_Add.this.m_curCHInfo))
        {
          String str = CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMajorCH;
          if ((str.length() >= 1) && (CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMinorCH.equals("65535")))
            CTVControl_ChVol_MyCH_Add.this.m_vGuideText.setText("'" + str + " " + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strName + "'" + " is duplicated ");
          while (true)
          {
            return;
            CTVControl_ChVol_MyCH_Add.this.m_vGuideText.setText("'" + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMajorCH + "-" + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMinorCH + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strName + "'" + " is duplicated ");
          }
        }
        CTVControl_ChVol_MyCH_Add.this.m_dbAdapter.insertChInfo(CTVControl_ChVol_MyCH_Add.this.m_curCHInfo);
        if ((CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMajorCH.length() >= 1) && (CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMinorCH.equals("65535")))
          CTVControl_ChVol_MyCH_Add.this.m_vGuideText.setText("'" + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMajorCH + " " + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strName + "'" + " is added ");
        while (true)
        {
          CTVControl_ChVol_MyCH_Add.this.m_bChangedMyChInfo = true;
          break;
          CTVControl_ChVol_MyCH_Add.this.m_vGuideText.setText("'" + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMajorCH + "-" + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strMinorCH + CTVControl_ChVol_MyCH_Add.this.m_curCHInfo.m_strName + "'" + " is added ");
        }
      }
    });
    if (LifeTime.getInstance().isDemoTVMode());
    for (this.m_dbAdapter = new CDBAdapter_MyCh(this, "demo_mychList.db"); ; this.m_dbAdapter = new CDBAdapter_MyCh(this, null))
    {
      this.m_dbAdapter.open();
      DispCurChInfo();
      this.m_thInputTimer.start();
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
    LifeTime.getInstance().setRecvCHInfoHandler(null);
    this.m_thInputTimer.destroy();
    this.m_vPikerChannel.pause();
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
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_ChVol_MyCH_Add
 * JD-Core Version:    0.6.0
 */