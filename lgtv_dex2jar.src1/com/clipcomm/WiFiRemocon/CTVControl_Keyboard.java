package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
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
import java.util.ArrayList;
import java.util.List;

public class CTVControl_Keyboard extends Activity
{
  static final int DEF_RESULT_FILTER_GET_CONTEXT_UI = 2;
  static final int DEF_RESULT_FILTER_TV_EVENT = 1;
  private static final int REQUEST_CODE = 1234;
  ByeByeReceiver m_ReceiverByeBye;
  boolean m_bExit = false;
  boolean m_bUnderVR = false;
  Button m_btnVR;
  CMainMenu m_ctlMenu;
  Handler m_hEventHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      Intent localIntent = new Intent();
      switch (paramMessage.arg1)
      {
      case 4:
      default:
      case 8:
      case 3:
      case 6:
      case 7:
      case 9:
      case 5:
      }
      while (true)
      {
        super.handleMessage(paramMessage);
        return;
        String str = (String)paramMessage.obj;
        if ((str == null) || (CTVControl_Keyboard.this.m_vInputText == null))
          continue;
        CTVControl_Keyboard.this.m_vInputText.append(str);
        continue;
        CTVControl_Keyboard.this.m_bExit = true;
        CTVControl_Keyboard.this.m_mIMM.hideSoftInputFromWindow(CTVControl_Keyboard.this.m_vInputText.getWindowToken(), 0);
        localIntent.putExtra("result_filter", 1);
        localIntent.putExtra("reason", paramMessage.arg1);
        CTVControl_Keyboard.this.setResult(0, localIntent);
        CTVControl_Keyboard.this.finish();
        continue;
        CTVControl_Keyboard.this.m_bExit = true;
        CTVControl_Keyboard.this.m_mIMM.hideSoftInputFromWindow(CTVControl_Keyboard.this.m_vInputText.getWindowToken(), 0);
        localIntent.putExtra("result_filter", 2);
        localIntent.putExtra("tabindex", 0);
        localIntent.putExtra("reason", paramMessage.arg1);
        CTVControl_Keyboard.this.setResult(0, localIntent);
        CTVControl_Keyboard.this.finish();
      }
    }
  };
  DynamicLinearLayout m_layout;
  InputMethodManager m_mIMM;
  TextView.OnEditorActionListener m_mInputTextActListener = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 6)
      {
        CTVControl_Keyboard.this.m_bExit = true;
        Intent localIntent = new Intent();
        localIntent.putExtra("result_filter", 2);
        localIntent.putExtra("tabindex", 1);
        CTVControl_Keyboard.this.setResult(-1, localIntent);
        CTVControl_Keyboard.this.finish();
        CTVControl_Keyboard.this.overridePendingTransition(0, 0);
      }
      while (true)
        return false;
    }
  };
  EditText m_vInputText;

  private void startVoiceRecognitionActivity()
  {
    try
    {
      Intent localIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
      localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
      this.m_bUnderVR = true;
      startActivityForResult(localIntent, 1234);
      label32: return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      break label32;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1234)
    {
      if (paramInt2 == -1)
      {
        ArrayList localArrayList = paramIntent.getStringArrayListExtra("android.speech.extra.RESULTS");
        if ((localArrayList != null) && (localArrayList.size() > 0))
          this.m_vInputText.setText((CharSequence)localArrayList.get(0));
      }
      this.m_mIMM.showSoftInput(this.m_vInputText, 1);
      this.m_bUnderVR = false;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_ReceiverByeBye = new ByeByeReceiver(this);
    this.m_layout = ((DynamicLinearLayout)View.inflate(this, 2130903049, null));
    this.m_layout.setOnHideSoftkeyEventListener(new DynamicLinearLayout.onHideSoftkeyEventListener()
    {
      public void onHideSoftkeyEvent()
      {
        if (!CTVControl_Keyboard.this.m_bUnderVR)
        {
          CTVControl_Keyboard.this.m_bExit = true;
          Intent localIntent = new Intent();
          localIntent.putExtra("result_filter", 2);
          localIntent.putExtra("tabindex", 1);
          CTVControl_Keyboard.this.setResult(0, localIntent);
          CTVControl_Keyboard.this.finish();
          CTVControl_Keyboard.this.overridePendingTransition(0, 0);
        }
      }
    });
    setContentView(this.m_layout);
    overridePendingTransition(0, 0);
    this.m_mIMM = ((InputMethodManager)getSystemService("input_method"));
    this.m_vInputText = ((EditText)findViewById(2131230745));
    this.m_vInputText.setOnEditorActionListener(this.m_mInputTextActListener);
    this.m_vInputText.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramEditable)
      {
        LifeTime.getInstance().getUDPRequest().HandleTextInput(paramEditable.toString());
      }

      public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }

      public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
      {
      }
    });
    this.m_mIMM.showSoftInput(this.m_vInputText, 1);
    this.m_btnVR = ((Button)findViewById(2131230746));
    if (this.m_btnVR != null)
    {
      if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0)
        break label220;
      this.m_btnVR.setVisibility(0);
    }
    while (true)
    {
      this.m_btnVR.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          CTVControl_Keyboard.this.startVoiceRecognitionActivity();
        }
      });
      LifeTime.getInstance().AddRef(this.m_hEventHandler, this);
      LifeTime.getInstance().setKBDActive(true);
      registerForContextMenu(this.m_layout);
      return;
      label220: this.m_btnVR.setVisibility(4);
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
    if (this.m_bExit)
      this.m_mIMM.hideSoftInputFromWindow(this.m_vInputText.getWindowToken(), 0);
    super.onDestroy();
    LifeTime.getInstance().ReleaseRef(this.m_hEventHandler);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    super.onOptionsItemSelected(paramMenuItem);
    return this.m_ctlMenu.onOptionsItemSelected_2depth(paramMenuItem, this);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CTVControl_Keyboard
 * JD-Core Version:    0.6.0
 */