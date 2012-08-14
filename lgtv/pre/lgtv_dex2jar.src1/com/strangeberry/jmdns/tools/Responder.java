package com.strangeberry.jmdns.tools;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.jmdns.JmDNS;
import javax.jmdns.ServiceInfo;

public class Responder
{
  public Responder(JmDNS paramJmDNS, String paramString)
    throws IOException
  {
    BufferedReader localBufferedReader = new BufferedReader(new FileReader(paramString));
    try
    {
      while (true)
      {
        for (String str1 = localBufferedReader.readLine(); ; str1 = localBufferedReader.readLine())
        {
          if (str1 != null)
          {
            if (str1.startsWith("#"))
              continue;
            int j = str1.trim().length();
            if (j == 0)
              continue;
          }
          if (str1 != null)
            break;
          return;
        }
        String str2 = str1;
        String str3 = localBufferedReader.readLine();
        String str4 = localBufferedReader.readLine();
        int i = Integer.parseInt(localBufferedReader.readLine());
        if (!str3.endsWith("."))
          str3 = str3 + ".";
        if (!str3.endsWith(".local."))
          str3 = str3 + "local.";
        paramJmDNS.registerService(ServiceInfo.create(str3, str2, i, str4));
      }
    }
    finally
    {
      localBufferedReader.close();
    }
    throw localObject;
  }

  public static void main(String[] paramArrayOfString)
    throws IOException
  {
    JmDNS localJmDNS = JmDNS.create();
    if (paramArrayOfString.length > 0);
    for (String str = paramArrayOfString[0]; ; str = "services.txt")
    {
      new Responder(localJmDNS, str);
      return;
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.strangeberry.jmdns.tools.Responder
 * JD-Core Version:    0.6.0
 */