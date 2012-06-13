package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import java.io.PrintStream;

public class PreferenceManual extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903045);
    TextView localTextView = (TextView)findViewById(2131230738);
    Resources localResources = getResources();
    String str1 = getIntent().getStringExtra("manual");
    if (str1.equals("about"))
    {
      String str2 = localResources.getString(2131099752) + " " + localResources.getString(2131099649) + "\n\n" + localResources.getString(2131099753) + " " + localResources.getString(2131099648) + "\n\n" + localResources.getString(2131099754);
      localTextView.setText(str2);
      Log.i("String", str2);
      System.out.println("Preference String" + str2);
    }
    while (true)
    {
      return;
      if (str1.equals("models"))
      {
        setTitle(localResources.getString(2131099755));
        localTextView.setText(localResources.getString(2131099756));
        continue;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.PreferenceManual
 * JD-Core Version:    0.6.0
 */