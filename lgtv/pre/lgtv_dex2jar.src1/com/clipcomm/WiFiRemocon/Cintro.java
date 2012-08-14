package com.clipcomm.WiFiRemocon;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Cintro extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    ((Button)findViewById(2131230735)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        if (LifeTime.getInstance().m_bSoundEffect)
          CGlobalResources.getInstance().PlaySoundTap();
        Intent localIntent = new Intent(Cintro.this, CDeviceSearch.class);
        Cintro.this.startActivity(localIntent);
        Cintro.this.finish();
      }
    });
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.Cintro
 * JD-Core Version:    0.6.0
 */