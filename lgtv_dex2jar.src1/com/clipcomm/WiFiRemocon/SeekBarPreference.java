package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class SeekBarPreference extends Preference
  implements SeekBar.OnSeekBarChangeListener
{
  public static float MOTION_SENSITIVITY;
  public static int interval;
  public static int maximum = 5;
  private float oldValue = 3.0F;

  static
  {
    interval = 1;
    MOTION_SENSITIVITY = 0.1F;
  }

  public SeekBarPreference(Context paramContext)
  {
    super(paramContext);
  }

  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public static void changeSensitivity(float paramFloat)
  {
    MOTION_SENSITIVITY = paramFloat;
  }

  private void updatePreference(int paramInt)
  {
    SharedPreferences.Editor localEditor = getEditor();
    localEditor.putInt(getKey(), paramInt);
    localEditor.commit();
  }

  private int validateValue(int paramInt)
  {
    if (paramInt > maximum)
      paramInt = maximum;
    while (true)
    {
      return paramInt;
      if (paramInt < 0)
      {
        paramInt = 0;
        continue;
      }
      if (paramInt % interval == 0)
        continue;
      paramInt = Math.round(paramInt / interval) * interval;
    }
  }

  public float getValue()
  {
    return this.oldValue;
  }

  protected View onCreateView(ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams1.gravity = 3;
    localLayoutParams1.weight = 1.0F;
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(100, -2);
    localLayoutParams2.gravity = 5;
    localLinearLayout.setPadding(20, 15, 20, 15);
    localLinearLayout.setOrientation(0);
    TextView localTextView = new TextView(getContext());
    localTextView.setText(getTitle());
    localTextView.setTextSize(22.0F);
    localTextView.setGravity(3);
    localTextView.setLayoutParams(localLayoutParams1);
    SeekBar localSeekBar = new SeekBar(getContext());
    localSeekBar.setMax(maximum);
    localSeekBar.setProgress((int)this.oldValue);
    localSeekBar.setLayoutParams(localLayoutParams2);
    localSeekBar.setOnSeekBarChangeListener(this);
    localLinearLayout.addView(localTextView);
    localLinearLayout.addView(localSeekBar);
    localLinearLayout.setId(16908312);
    return localLinearLayout;
  }

  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return Integer.valueOf(validateValue(paramTypedArray.getInt(paramInt, 50)));
  }

  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    Log.i("SEEKBAR PROGRESS", Integer.toString(paramInt));
    int i = Math.round(paramInt / interval) * interval;
    if (!callChangeListener(Integer.valueOf(i)))
      paramSeekBar.setProgress((int)this.oldValue);
    while (true)
    {
      return;
      paramSeekBar.setProgress(i);
      this.oldValue = i;
      updatePreference(i);
      notifyChanged();
    }
  }

  protected void onSetInitialValue(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean);
    for (int i = getPersistedInt(50); ; i = ((Integer)paramObject).intValue())
    {
      if (!paramBoolean)
        persistInt(i);
      this.oldValue = i;
      return;
    }
  }

  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.SeekBarPreference
 * JD-Core Version:    0.6.0
 */