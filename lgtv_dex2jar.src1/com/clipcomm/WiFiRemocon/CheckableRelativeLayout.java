package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;

public class CheckableRelativeLayout extends RelativeLayout
  implements Checkable
{
  final String ATTR = "checkable";
  final String NS = "http://schemas.android.com/apk/res/com.clipcomm.WiFiRemocon";
  Checkable checkable;
  int checkableId;

  public CheckableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.checkableId = paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/com.clipcomm.WiFiRemocon", "checkable", 0);
  }

  public boolean isChecked()
  {
    this.checkable = ((Checkable)findViewById(this.checkableId));
    if (this.checkable == null);
    for (boolean bool = false; ; bool = this.checkable.isChecked())
      return bool;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.checkable = ((Checkable)findViewById(this.checkableId));
    if (this.checkable == null);
    while (true)
    {
      return;
      this.checkable.setChecked(paramBoolean);
    }
  }

  public void toggle()
  {
    this.checkable = ((Checkable)findViewById(this.checkableId));
    if (this.checkable == null);
    while (true)
    {
      return;
      this.checkable.toggle();
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CheckableRelativeLayout
 * JD-Core Version:    0.6.0
 */