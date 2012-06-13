package com.clipcomm.WiFiRemocon;

import java.lang.reflect.Array;

public class ArrayUtils
{
  private static final int CACHE_SIZE = 73;
  private static Object[] EMPTY = new Object[0];
  private static Object[] sCache = new Object[73];

  public static <T> boolean contains(T[] paramArrayOfT, T paramT)
  {
    int i = paramArrayOfT.length;
    for (int j = 0; ; j++)
    {
      int k;
      if (j >= i)
        k = 0;
      while (true)
      {
        return k;
        T ? = paramArrayOfT[j];
        if (? == null)
        {
          if (paramT != null)
            break;
          k = 1;
          continue;
        }
        if ((paramT == null) || (!?.equals(paramT)))
          break;
        k = 1;
      }
    }
  }

  public static <T> T[] emptyArray(Class<T> paramClass)
  {
    if (paramClass == Object.class);
    Object localObject;
    for (Object[] arrayOfObject = EMPTY; ; arrayOfObject = (Object[])localObject)
    {
      return arrayOfObject;
      int i = (0x7FFFFFFF & System.identityHashCode(paramClass) / 8) % 73;
      localObject = sCache[i];
      if ((localObject != null) && (localObject.getClass().getComponentType() == paramClass))
        continue;
      localObject = Array.newInstance(paramClass, 0);
      sCache[i] = localObject;
    }
  }

  public static boolean equals(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    if (paramArrayOfByte1 == paramArrayOfByte2);
    for (int i = 1; ; i = 0)
    {
      return i;
      if ((paramArrayOfByte1 != null) && (paramArrayOfByte2 != null) && (paramArrayOfByte1.length >= paramInt) && (paramArrayOfByte2.length >= paramInt))
        break;
    }
    for (int j = 0; ; j++)
    {
      if (j >= paramInt)
      {
        i = 1;
        break;
      }
      if (paramArrayOfByte1[j] == paramArrayOfByte2[j])
        continue;
      i = 0;
      break;
    }
  }

  public static int idealBooleanArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt);
  }

  public static int idealByteArraySize(int paramInt)
  {
    for (int i = 4; ; i++)
    {
      if (i >= 32);
      for (int j = paramInt; ; j = (1 << i) - 12)
      {
        return j;
        if (paramInt > (1 << i) - 12)
          break;
      }
    }
  }

  public static int idealCharArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 2) / 2;
  }

  public static int idealFloatArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 4) / 4;
  }

  public static int idealIntArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 4) / 4;
  }

  public static int idealLongArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 8) / 8;
  }

  public static int idealObjectArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 4) / 4;
  }

  public static int idealShortArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 2) / 2;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.ArrayUtils
 * JD-Core Version:    0.6.0
 */