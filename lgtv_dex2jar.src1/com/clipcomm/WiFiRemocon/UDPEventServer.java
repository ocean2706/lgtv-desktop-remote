package com.clipcomm.WiFiRemocon;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

public class UDPEventServer
{
  private static volatile UDPEventServer uniqueInstance;
  private RequestListenerThread m_thread = null;

  public static UDPEventServer getInstance()
  {
    if (uniqueInstance == null)
      monitorenter;
    try
    {
      if (uniqueInstance == null)
        uniqueInstance = new UDPEventServer();
      return uniqueInstance;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  static int retvalue()
  {
    return 1;
  }

  public boolean start()
  {
    if (this.m_thread != null)
      stop();
    this.m_thread = new RequestListenerThread(8080);
    if (this.m_thread != null)
    {
      this.m_thread.setName("UDPEventServer:RequestListenerThread");
      this.m_thread.setDaemon(false);
      this.m_thread.start();
    }
    for (int i = 1; ; i = 0)
      return i;
  }

  public void stop()
  {
    this.m_thread.Quit();
    this.m_thread.interrupt();
    this.m_thread = null;
  }

  static class RequestListenerThread extends Thread
  {
    private boolean m_bIsRunning = false;
    private final byte[] receiveData = new byte[1024];
    private DatagramSocket serversocket;

    public RequestListenerThread(int paramInt)
    {
      try
      {
        this.serversocket = new DatagramSocket(7070);
        label32: return;
      }
      catch (SocketException localSocketException)
      {
        break label32;
      }
    }

    public void Quit()
    {
      this.m_bIsRunning = false;
      if (this.serversocket != null)
        this.serversocket.close();
    }

    public void run()
    {
      this.m_bIsRunning = true;
      if ((Thread.interrupted()) || (!this.m_bIsRunning));
      while (true)
        while (true)
        {
          return;
          try
          {
            DatagramPacket localDatagramPacket = new DatagramPacket(this.receiveData, this.receiveData.length);
            if (this.serversocket == null)
              continue;
            this.serversocket.receive(localDatagramPacket);
            localDatagramPacket.getAddress();
            UDPEventServer.WorkerThread localWorkerThread = new UDPEventServer.WorkerThread(this.receiveData);
            localWorkerThread.setName("UDPEventServer:receiveData");
            localWorkerThread.setDaemon(true);
            localWorkerThread.start();
          }
          catch (InterruptedIOException localInterruptedIOException)
          {
            continue;
          }
          catch (IOException localIOException)
          {
          }
        }
    }
  }

  static class WorkerThread extends Thread
  {
    private byte[] receiveData = null;

    public WorkerThread(byte[] paramArrayOfByte)
    {
      this.receiveData = paramArrayOfByte;
    }

    void handleEvent(byte[] paramArrayOfByte)
      throws IOException
    {
      interrupt();
    }

    public void run()
    {
      try
      {
        while (!Thread.interrupted())
          handleEvent(this.receiveData);
      }
      catch (IOException localIOException)
      {
      }
    }
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     com.clipcomm.WiFiRemocon.UDPEventServer
 * JD-Core Version:    0.6.0
 */