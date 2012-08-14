package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public class CPairingDevice_InputPincode extends Activity
{
  DynamicLinearLayout m_layout;
  InputMethodManager m_mIMM = null;
  TextView.OnEditorActionListener m_mPincodeEditTextActListener = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
    {
      if (paramInt == 6);
      for (boolean bool = CPairingDevice_InputPincode.this.OnPincodeInputDone(); ; bool = false)
        return bool;
    }
  };
  View.OnClickListener m_mPincodeOKBtnListener = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      CPairingDevice_InputPincode.this.OnPincodeInputDone();
    }
  };
  Button m_vButtonOK;
  EditText m_vEditPincode;

  boolean OnPincodeInputDone()
  {
    if (this.m_vEditPincode.getText().length() == 6)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("pincode", this.m_vEditPincode.getText().toString().toUpperCase());
      setResult(-1, localIntent);
      finish();
      overridePendingTransition(0, 0);
    }
    for (int i = 0; ; i = 1)
      return i;
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    overridePendingTransition(0, 0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.m_layout = ((DynamicLinearLayout)View.inflate(this, 2130903041, null));
    this.m_layout.setOnHideSoftkeyEventListener(new DynamicLinearLayout.onHideSoftkeyEventListener()
    {
      public void onHideSoftkeyEvent()
      {
        CPairingDevice_InputPincode.this.setResult(0, null);
        CPairingDevice_InputPincode.this.finish();
        CPairingDevice_InputPincode.this.overridePendingTransition(0, 0);
      }
    });
    setContentView(this.m_layout);
    this.m_vButtonOK = ((Button)findViewById(2131230725));
    this.m_vButtonOK.setOnClickListener(this.m_mPincodeOKBtnListener);
    this.m_vEditPincode = ((EditText)findViewById(2131230724));
    this.m_vEditPincode.setOnEditorActionListener(this.m_mPincodeEditTextActListener);
    this.m_mIMM = ((InputMethodManager)getSystemService("input_method"));
    this.m_mIMM.showSoftInput(this.m_vEditPincode, 1);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CPairingDevice_InputPincode
 * JD-Core Version:    0.6.0
 */