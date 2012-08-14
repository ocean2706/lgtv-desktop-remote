package javax.jmdns.impl.tasks.state;

import java.util.Timer;
import java.util.logging.Logger;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.constants.DNSState;

public class Renewer extends DNSStateTask
{
  static Logger logger = Logger.getLogger(Renewer.class.getName());
  DNSState taskState = DNSState.ANNOUNCED;

  public Renewer(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl, defaultTTL());
    associate(DNSState.ANNOUNCED);
  }

  public boolean cancel()
  {
    removeAssociation();
    return super.cancel();
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("Renewer(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: new 81	javax/jmdns/impl/DNSOutgoing
    //   3: dup
    //   4: ldc 82
    //   6: invokespecial 85	javax/jmdns/impl/DNSOutgoing:<init>	(I)V
    //   9: astore_1
    //   10: aload_0
    //   11: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   14: invokevirtual 88	javax/jmdns/impl/JmDNSImpl:isCanceling	()Z
    //   17: ifne +13 -> 30
    //   20: aload_0
    //   21: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   24: invokevirtual 91	javax/jmdns/impl/JmDNSImpl:isCanceled	()Z
    //   27: ifeq +11 -> 38
    //   30: aload_0
    //   31: invokevirtual 92	javax/jmdns/impl/tasks/state/Renewer:cancel	()Z
    //   34: pop
    //   35: goto +440 -> 475
    //   38: aload_0
    //   39: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   42: astore 5
    //   44: aload 5
    //   46: monitorenter
    //   47: aload_0
    //   48: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 40	javax/jmdns/impl/tasks/state/Renewer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   56: invokevirtual 96	javax/jmdns/impl/JmDNSImpl:isAssociatedWithTask	(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    //   59: ifeq +81 -> 140
    //   62: getstatic 24	javax/jmdns/impl/tasks/state/Renewer:logger	Ljava/util/logging/Logger;
    //   65: new 53	java/lang/StringBuilder
    //   68: dup
    //   69: aload_0
    //   70: invokevirtual 97	javax/jmdns/impl/tasks/state/Renewer:getName	()Ljava/lang/String;
    //   73: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   76: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: ldc 105
    //   81: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_0
    //   85: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   88: invokevirtual 65	javax/jmdns/impl/JmDNSImpl:getName	()Ljava/lang/String;
    //   91: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokevirtual 108	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   100: aload_0
    //   101: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   104: invokevirtual 112	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   107: aload_0
    //   108: invokevirtual 115	javax/jmdns/impl/tasks/state/Renewer:getTTL	()I
    //   111: invokevirtual 121	javax/jmdns/impl/HostInfo:answers	(I)Ljava/util/Collection;
    //   114: invokeinterface 127 1 0
    //   119: astore 14
    //   121: aload 14
    //   123: invokeinterface 132 1 0
    //   128: ifne +123 -> 251
    //   131: aload_0
    //   132: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   135: aload_0
    //   136: invokevirtual 136	javax/jmdns/impl/JmDNSImpl:advanceState	(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    //   139: pop
    //   140: aload 5
    //   142: monitorexit
    //   143: aload_0
    //   144: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   147: invokevirtual 140	javax/jmdns/impl/JmDNSImpl:getServices	()Ljava/util/Map;
    //   150: invokeinterface 146 1 0
    //   155: invokeinterface 127 1 0
    //   160: astore 7
    //   162: aload 7
    //   164: invokeinterface 132 1 0
    //   169: ifne +153 -> 322
    //   172: aload_1
    //   173: invokevirtual 149	javax/jmdns/impl/DNSOutgoing:isEmpty	()Z
    //   176: ifne +291 -> 467
    //   179: getstatic 24	javax/jmdns/impl/tasks/state/Renewer:logger	Ljava/util/logging/Logger;
    //   182: new 53	java/lang/StringBuilder
    //   185: dup
    //   186: aload_0
    //   187: invokevirtual 97	javax/jmdns/impl/tasks/state/Renewer:getName	()Ljava/lang/String;
    //   190: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   193: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: ldc 151
    //   198: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_0
    //   202: getfield 40	javax/jmdns/impl/tasks/state/Renewer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   205: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokevirtual 108	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   214: aload_0
    //   215: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   218: aload_1
    //   219: invokevirtual 158	javax/jmdns/impl/JmDNSImpl:send	(Ljavax/jmdns/impl/DNSOutgoing;)V
    //   222: aload_0
    //   223: aload_0
    //   224: getfield 40	javax/jmdns/impl/tasks/state/Renewer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   227: invokevirtual 162	javax/jmdns/impl/constants/DNSState:advance	()Ljavax/jmdns/impl/constants/DNSState;
    //   230: putfield 40	javax/jmdns/impl/tasks/state/Renewer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   233: aload_0
    //   234: getfield 40	javax/jmdns/impl/tasks/state/Renewer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   237: invokevirtual 165	javax/jmdns/impl/constants/DNSState:isAnnounced	()Z
    //   240: ifne +235 -> 475
    //   243: aload_0
    //   244: invokevirtual 92	javax/jmdns/impl/tasks/state/Renewer:cancel	()Z
    //   247: pop
    //   248: goto +227 -> 475
    //   251: aload_0
    //   252: aload_1
    //   253: aconst_null
    //   254: aload 14
    //   256: invokeinterface 169 1 0
    //   261: checkcast 171	javax/jmdns/impl/DNSRecord
    //   264: invokevirtual 175	javax/jmdns/impl/tasks/state/Renewer:addAnswer	(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    //   267: astore_1
    //   268: goto -147 -> 121
    //   271: astore 6
    //   273: aload 5
    //   275: monitorexit
    //   276: aload 6
    //   278: athrow
    //   279: astore_2
    //   280: getstatic 24	javax/jmdns/impl/tasks/state/Renewer:logger	Ljava/util/logging/Logger;
    //   283: getstatic 181	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   286: new 53	java/lang/StringBuilder
    //   289: dup
    //   290: aload_0
    //   291: invokevirtual 97	javax/jmdns/impl/tasks/state/Renewer:getName	()Ljava/lang/String;
    //   294: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   297: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   300: ldc 183
    //   302: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   308: aload_2
    //   309: invokevirtual 187	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   312: aload_0
    //   313: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   316: invokevirtual 190	javax/jmdns/impl/JmDNSImpl:recover	()V
    //   319: goto -97 -> 222
    //   322: aload 7
    //   324: invokeinterface 169 1 0
    //   329: checkcast 192	javax/jmdns/ServiceInfo
    //   332: checkcast 194	javax/jmdns/impl/ServiceInfoImpl
    //   335: astore 8
    //   337: aload 8
    //   339: monitorenter
    //   340: aload 8
    //   342: aload_0
    //   343: aload_0
    //   344: getfield 40	javax/jmdns/impl/tasks/state/Renewer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   347: invokevirtual 195	javax/jmdns/impl/ServiceInfoImpl:isAssociatedWithTask	(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    //   350: ifeq +79 -> 429
    //   353: getstatic 24	javax/jmdns/impl/tasks/state/Renewer:logger	Ljava/util/logging/Logger;
    //   356: new 53	java/lang/StringBuilder
    //   359: dup
    //   360: aload_0
    //   361: invokevirtual 97	javax/jmdns/impl/tasks/state/Renewer:getName	()Ljava/lang/String;
    //   364: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   367: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   370: ldc 105
    //   372: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: aload 8
    //   377: invokevirtual 198	javax/jmdns/impl/ServiceInfoImpl:getQualifiedName	()Ljava/lang/String;
    //   380: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   386: invokevirtual 108	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   389: aload 8
    //   391: aload_0
    //   392: invokevirtual 115	javax/jmdns/impl/tasks/state/Renewer:getTTL	()I
    //   395: aload_0
    //   396: invokevirtual 62	javax/jmdns/impl/tasks/state/Renewer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   399: invokevirtual 112	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   402: invokevirtual 201	javax/jmdns/impl/ServiceInfoImpl:answers	(ILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    //   405: invokeinterface 127 1 0
    //   410: astore 10
    //   412: aload 10
    //   414: invokeinterface 132 1 0
    //   419: ifne +24 -> 443
    //   422: aload 8
    //   424: aload_0
    //   425: invokevirtual 202	javax/jmdns/impl/ServiceInfoImpl:advanceState	(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    //   428: pop
    //   429: aload 8
    //   431: monitorexit
    //   432: goto -270 -> 162
    //   435: astore 9
    //   437: aload 8
    //   439: monitorexit
    //   440: aload 9
    //   442: athrow
    //   443: aload_0
    //   444: aload_1
    //   445: aconst_null
    //   446: aload 10
    //   448: invokeinterface 169 1 0
    //   453: checkcast 171	javax/jmdns/impl/DNSRecord
    //   456: invokevirtual 175	javax/jmdns/impl/tasks/state/Renewer:addAnswer	(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    //   459: astore 11
    //   461: aload 11
    //   463: astore_1
    //   464: goto -52 -> 412
    //   467: aload_0
    //   468: invokevirtual 92	javax/jmdns/impl/tasks/state/Renewer:cancel	()Z
    //   471: pop
    //   472: goto -250 -> 222
    //   475: return
    //
    // Exception table:
    //   from	to	target	type
    //   47	143	271	finally
    //   251	276	271	finally
    //   10	47	279	java/lang/Throwable
    //   143	222	279	java/lang/Throwable
    //   276	279	279	java/lang/Throwable
    //   322	340	279	java/lang/Throwable
    //   440	443	279	java/lang/Throwable
    //   467	472	279	java/lang/Throwable
    //   340	440	435	finally
    //   443	461	435	finally
  }

  public void start(Timer paramTimer)
  {
    if ((!getDns().isCanceling()) && (!getDns().isCanceled()))
      paramTimer.schedule(this, 1800000L, 1800000L);
  }

  public String toString()
  {
    return super.toString() + " state: " + this.taskState;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.state.Renewer
 * JD-Core Version:    0.6.0
 */