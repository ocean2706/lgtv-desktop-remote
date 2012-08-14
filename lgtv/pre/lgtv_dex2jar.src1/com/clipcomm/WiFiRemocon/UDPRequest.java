package com.clipcomm.WiFiRemocon;

public class UDPRequest
{
  private static final int TIME_GAP = 250;
  protected static long prev_click_time = -1L;
  UDPSocket m_socket;
  String m_strSession;

  public boolean HandleChannelChange(int paramInt1, int paramInt2)
  {
    boolean bool;
    if (this.m_socket == null)
    {
      bool = false;
      return bool;
    }
    byte[] arrayOfByte = new byte[8];
    int i = 0;
    label21: if (i >= 4);
    for (int j = 0; ; j++)
    {
      if (j >= 4)
      {
        this.m_socket.makePacket(this.m_strSession, 7, 8, arrayOfByte);
        bool = this.m_socket.sendData();
        break;
        arrayOfByte[i] = (byte)(paramInt1 >>> i * 8);
        i++;
        break label21;
      }
      arrayOfByte[(j + 4)] = (byte)(paramInt2 >>> j * 8);
    }
  }

  public boolean HandleTextInput(String paramString)
  {
    if ((this.m_socket == null) || (paramString == null));
    for (boolean bool = false; ; bool = this.m_socket.sendData())
    {
      return bool;
      new byte[2 + paramString.getBytes().length];
      byte[] arrayOfByte = paramString.getBytes();
      this.m_socket.makePacket(this.m_strSession, 9, 1, 2 + arrayOfByte.length, arrayOfByte);
    }
  }

  public boolean HandleTouchClick(int paramInt)
  {
    if (this.m_socket == null);
    long l;
    for (boolean bool = false; ; bool = false)
    {
      return bool;
      l = System.currentTimeMillis();
      if (l - prev_click_time >= 250L)
        break;
    }
    prev_click_time = l;
    byte[] arrayOfByte = new byte[4];
    for (int i = 0; ; i++)
    {
      if (i >= 4)
      {
        this.m_socket.makePacket(this.m_strSession, 3, 4, arrayOfByte);
        bool = this.m_socket.sendData();
        break;
      }
      arrayOfByte[i] = (byte)(paramInt >>> i * 8);
    }
  }

  public boolean HandleTouchMove(int paramInt1, int paramInt2)
  {
    boolean bool;
    if (this.m_socket == null)
    {
      bool = false;
      return bool;
    }
    byte[] arrayOfByte = new byte[8];
    int i = 0;
    label21: if (i >= 4);
    for (int j = 0; ; j++)
    {
      if (j >= 4)
      {
        this.m_socket.makePacket(this.m_strSession, 2, 8, arrayOfByte);
        bool = this.m_socket.sendData();
        break;
        arrayOfByte[i] = (byte)(paramInt1 >>> i * 8);
        i++;
        break label21;
      }
      arrayOfByte[(j + 4)] = (byte)(paramInt2 >>> j * 8);
    }
  }

  public boolean HandlekeyInput(int paramInt)
  {
    boolean bool;
    if (this.m_socket == null)
    {
      bool = false;
      return bool;
    }
    byte[] arrayOfByte = new byte[4];
    for (int i = 0; ; i++)
    {
      if (i >= 4)
      {
        this.m_socket.makePacket(this.m_strSession, 1, 4, arrayOfByte);
        bool = this.m_socket.sendData();
        break;
      }
      arrayOfByte[i] = (byte)(paramInt >>> i * 8);
    }
  }

  public boolean SetFavoriteChannel(int paramInt1, int paramInt2)
  {
    boolean bool;
    if (this.m_socket == null)
    {
      bool = false;
      return bool;
    }
    byte[] arrayOfByte = new byte[8];
    int i = 0;
    label21: if (i >= 4);
    for (int j = 0; ; j++)
    {
      if (j >= 4)
      {
        this.m_socket.makePacket(this.m_strSession, 5, 8, arrayOfByte);
        bool = this.m_socket.sendData();
        break;
        arrayOfByte[i] = (byte)(paramInt1 >>> i * 8);
        i++;
        break label21;
      }
      arrayOfByte[(j + 4)] = (byte)(paramInt2 >>> j * 8);
    }
  }

  public void close()
  {
    if (this.m_socket != null)
    {
      this.m_socket.close();
      this.m_socket = null;
    }
  }

  public boolean create(LifeTime.DestInfo paramDestInfo)
  {
    if (paramDestInfo == null);
    for (boolean bool = false; ; bool = create(paramDestInfo.m_strIP, 7070, paramDestInfo.m_strSessionID))
      return bool;
  }

  public boolean create(String paramString1, int paramInt, String paramString2)
  {
    this.m_strSession = paramString2;
    this.m_socket = new UDPSocket();
    prev_click_time = System.currentTimeMillis();
    return this.m_socket.create(paramString1, paramInt);
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.UDPRequest
 * JD-Core Version:    0.6.0
 */