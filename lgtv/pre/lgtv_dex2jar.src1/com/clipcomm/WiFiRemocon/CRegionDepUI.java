package com.clipcomm.WiFiRemocon;

import android.content.Context;
import android.content.Intent;

public class CRegionDepUI
{
  static final int REGION_EU = 2;
  static final int REGION_FR = 3;
  static final int REGION_KR = 1;
  static final int REGION_US;

  public static Intent getFunctionIndent(Context paramContext)
  {
    return null;
  }

  public static int getRegionCode(String paramString)
  {
    int i;
    switch ($SWITCH_TABLE$com$clipcomm$WiFiRemocon$CRegionDepUI$region_state_token()[region_state_token.toStateToken(paramString).ordinal()])
    {
    default:
      i = 0;
    case 3:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      return i;
      i = 0;
      continue;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
    }
  }

  public static enum region_state_token
  {
    static
    {
      KR = new region_state_token("KR", 1);
      US = new region_state_token("US", 2);
      EU = new region_state_token("EU", 3);
      FR = new region_state_token("FR", 4);
      region_state_token[] arrayOfregion_state_token = new region_state_token[5];
      arrayOfregion_state_token[0] = NOVALUE;
      arrayOfregion_state_token[1] = KR;
      arrayOfregion_state_token[2] = US;
      arrayOfregion_state_token[3] = EU;
      arrayOfregion_state_token[4] = FR;
      ENUM$VALUES = arrayOfregion_state_token;
    }

    public static region_state_token toStateToken(String paramString)
    {
      try
      {
        region_state_token localregion_state_token2 = valueOf(paramString);
        localregion_state_token1 = localregion_state_token2;
        return localregion_state_token1;
      }
      catch (Exception localException)
      {
        while (true)
          region_state_token localregion_state_token1 = NOVALUE;
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.CRegionDepUI
 * JD-Core Version:    0.6.0
 */