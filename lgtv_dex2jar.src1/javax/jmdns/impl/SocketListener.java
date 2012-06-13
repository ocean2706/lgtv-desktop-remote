package javax.jmdns.impl;

import java.util.logging.Logger;

class SocketListener
  implements Runnable
{
  static Logger logger = Logger.getLogger(SocketListener.class.getName());
  private final JmDNSImpl _jmDNSImpl;

  SocketListener(JmDNSImpl paramJmDNSImpl)
  {
    this._jmDNSImpl = paramJmDNSImpl;
  }

  public JmDNSImpl getDns()
  {
    return this._jmDNSImpl;
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("SocketListener(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: sipush 8972
    //   3: newarray byte
    //   5: astore 4
    //   7: new 62	java/net/DatagramPacket
    //   10: dup
    //   11: aload 4
    //   13: aload 4
    //   15: arraylength
    //   16: invokespecial 65	java/net/DatagramPacket:<init>	([BI)V
    //   19: astore 5
    //   21: aload_0
    //   22: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   25: invokevirtual 69	javax/jmdns/impl/JmDNSImpl:isCanceling	()Z
    //   28: ifne +17 -> 45
    //   31: aload_0
    //   32: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   35: invokevirtual 72	javax/jmdns/impl/JmDNSImpl:isCanceled	()Z
    //   38: istore 6
    //   40: iload 6
    //   42: ifeq +20 -> 62
    //   45: aload_0
    //   46: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   49: astore_2
    //   50: aload_2
    //   51: monitorenter
    //   52: aload_0
    //   53: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   56: invokevirtual 75	java/lang/Object:notifyAll	()V
    //   59: aload_2
    //   60: monitorexit
    //   61: return
    //   62: aload 5
    //   64: aload 4
    //   66: arraylength
    //   67: invokevirtual 79	java/net/DatagramPacket:setLength	(I)V
    //   70: aload_0
    //   71: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   74: invokevirtual 83	javax/jmdns/impl/JmDNSImpl:getSocket	()Ljava/net/MulticastSocket;
    //   77: aload 5
    //   79: invokevirtual 89	java/net/MulticastSocket:receive	(Ljava/net/DatagramPacket;)V
    //   82: aload_0
    //   83: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   86: invokevirtual 69	javax/jmdns/impl/JmDNSImpl:isCanceling	()Z
    //   89: ifne -44 -> 45
    //   92: aload_0
    //   93: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   96: invokevirtual 72	javax/jmdns/impl/JmDNSImpl:isCanceled	()Z
    //   99: istore 7
    //   101: iload 7
    //   103: ifne -58 -> 45
    //   106: aload_0
    //   107: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   110: invokevirtual 93	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   113: aload 5
    //   115: invokevirtual 99	javax/jmdns/impl/HostInfo:shouldIgnorePacket	(Ljava/net/DatagramPacket;)Z
    //   118: ifne -97 -> 21
    //   121: new 101	javax/jmdns/impl/DNSIncoming
    //   124: dup
    //   125: aload 5
    //   127: invokespecial 103	javax/jmdns/impl/DNSIncoming:<init>	(Ljava/net/DatagramPacket;)V
    //   130: astore 9
    //   132: getstatic 26	javax/jmdns/impl/SocketListener:logger	Ljava/util/logging/Logger;
    //   135: getstatic 109	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   138: invokevirtual 113	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   141: ifeq +40 -> 181
    //   144: getstatic 26	javax/jmdns/impl/SocketListener:logger	Ljava/util/logging/Logger;
    //   147: new 36	java/lang/StringBuilder
    //   150: dup
    //   151: aload_0
    //   152: invokevirtual 114	javax/jmdns/impl/SocketListener:getName	()Ljava/lang/String;
    //   155: invokestatic 120	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   158: invokespecial 41	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: ldc 122
    //   163: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: aload 9
    //   168: iconst_1
    //   169: invokevirtual 126	javax/jmdns/impl/DNSIncoming:print	(Z)Ljava/lang/String;
    //   172: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokevirtual 129	java/util/logging/Logger:finest	(Ljava/lang/String;)V
    //   181: aload_0
    //   182: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   185: invokevirtual 132	javax/jmdns/impl/JmDNSImpl:ioLock	()V
    //   188: aload 9
    //   190: invokevirtual 135	javax/jmdns/impl/DNSIncoming:isQuery	()Z
    //   193: ifeq +163 -> 356
    //   196: aload 5
    //   198: invokevirtual 139	java/net/DatagramPacket:getPort	()I
    //   201: getstatic 145	javax/jmdns/impl/constants/DNSConstants:MDNS_PORT	I
    //   204: if_icmpeq +22 -> 226
    //   207: aload_0
    //   208: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   211: aload 9
    //   213: aload 5
    //   215: invokevirtual 149	java/net/DatagramPacket:getAddress	()Ljava/net/InetAddress;
    //   218: aload 5
    //   220: invokevirtual 139	java/net/DatagramPacket:getPort	()I
    //   223: invokevirtual 153	javax/jmdns/impl/JmDNSImpl:handleQuery	(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    //   226: aload_0
    //   227: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   230: aload 9
    //   232: aload_0
    //   233: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   236: invokevirtual 156	javax/jmdns/impl/JmDNSImpl:getGroup	()Ljava/net/InetAddress;
    //   239: getstatic 145	javax/jmdns/impl/constants/DNSConstants:MDNS_PORT	I
    //   242: invokevirtual 153	javax/jmdns/impl/JmDNSImpl:handleQuery	(Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;I)V
    //   245: aload_0
    //   246: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   249: invokevirtual 159	javax/jmdns/impl/JmDNSImpl:ioUnlock	()V
    //   252: goto -231 -> 21
    //   255: astore 8
    //   257: getstatic 26	javax/jmdns/impl/SocketListener:logger	Ljava/util/logging/Logger;
    //   260: getstatic 162	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   263: new 36	java/lang/StringBuilder
    //   266: dup
    //   267: aload_0
    //   268: invokevirtual 114	javax/jmdns/impl/SocketListener:getName	()Ljava/lang/String;
    //   271: invokestatic 120	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   274: invokespecial 41	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   277: ldc 164
    //   279: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: aload 8
    //   287: invokevirtual 168	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   290: goto -269 -> 21
    //   293: astore_1
    //   294: aload_0
    //   295: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   298: invokevirtual 69	javax/jmdns/impl/JmDNSImpl:isCanceling	()Z
    //   301: ifne -256 -> 45
    //   304: aload_0
    //   305: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   308: invokevirtual 72	javax/jmdns/impl/JmDNSImpl:isCanceled	()Z
    //   311: ifne -266 -> 45
    //   314: getstatic 26	javax/jmdns/impl/SocketListener:logger	Ljava/util/logging/Logger;
    //   317: getstatic 162	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   320: new 36	java/lang/StringBuilder
    //   323: dup
    //   324: aload_0
    //   325: invokevirtual 114	javax/jmdns/impl/SocketListener:getName	()Ljava/lang/String;
    //   328: invokestatic 120	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   331: invokespecial 41	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   334: ldc 164
    //   336: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   339: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: aload_1
    //   343: invokevirtual 168	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   346: aload_0
    //   347: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   350: invokevirtual 171	javax/jmdns/impl/JmDNSImpl:recover	()V
    //   353: goto -308 -> 45
    //   356: aload_0
    //   357: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   360: aload 9
    //   362: invokevirtual 175	javax/jmdns/impl/JmDNSImpl:handleResponse	(Ljavax/jmdns/impl/DNSIncoming;)V
    //   365: goto -120 -> 245
    //   368: astore 10
    //   370: aload_0
    //   371: getfield 32	javax/jmdns/impl/SocketListener:_jmDNSImpl	Ljavax/jmdns/impl/JmDNSImpl;
    //   374: invokevirtual 159	javax/jmdns/impl/JmDNSImpl:ioUnlock	()V
    //   377: aload 10
    //   379: athrow
    //   380: astore_3
    //   381: aload_2
    //   382: monitorexit
    //   383: aload_3
    //   384: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   106	188	255	java/io/IOException
    //   245	252	255	java/io/IOException
    //   370	380	255	java/io/IOException
    //   0	40	293	java/io/IOException
    //   62	101	293	java/io/IOException
    //   257	290	293	java/io/IOException
    //   188	245	368	finally
    //   356	365	368	finally
    //   52	61	380	finally
    //   381	383	380	finally
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.SocketListener
 * JD-Core Version:    0.6.0
 */