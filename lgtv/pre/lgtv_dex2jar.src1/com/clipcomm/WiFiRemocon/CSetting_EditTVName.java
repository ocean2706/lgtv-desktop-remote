package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public class CSetting_EditTVName extends Activity
{
  CMainMenu m_ctlMenu;
  DynamicLinearLayout m_layout;
  InputMethodManager m_mIMM;
  TextView.OnEditorActionListener m_mInputTextActListener = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 6)
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("text", CSetting_EditTVName.this.m_vInputText.getText().toString());
        CSetting_EditTVName.this.setResult(-1, localIntent);
        CSetting_EditTVName.this.finish();
        CSetting_EditTVName.this.overridePendingTransition(0, 0);
      }
      while (true)
        return false;
    }
  };
  EditText m_vInputText;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_layout = ((DynamicLinearLayout)View.inflate(this, 2130903049, null));
    this.m_layout.setOnHideSoftkeyEventListener(new DynamicLinearLayout.onHideSoftkeyEventListener()
    {
      public void onHideSoftkeyEvent()
      {
        CSetting_EditTVName.this.setResult(0, null);
        CSetting_EditTVName.this.finish();
        CSetting_EditTVName.this.overridePendingTransition(0, 0);
      }
    });
    Intent localIntent = getIntent();
    setContentView(this.m_layout);
    overridePendingTransition(0, 0);
    this.m_vInputText = ((EditText)findViewById(2131230745));
    this.m_mIMM = ((InputMethodManager)getSystemService("input_method"));
    String str = localIntent.getStringExtra("text");
    if (str != null)
      this.m_vInputText.setText(str);
    this.m_vInputText.setOnEditorActionListener(this.m_mInputTextActListener);
    this.m_mIMM.showSoftInput(this.m_vInputText, 1);
    registerForContextMenu(this.m_layout);
  }

  protected void onDestroy()
  {
    this.m_mIMM.hideSoftInputFromWindow(this.m_vInputText.getWindowToken(), 0);
    super.onDestroy();
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CSetting_EditTVName
 * JD-Core Version:    0.6.0
 */