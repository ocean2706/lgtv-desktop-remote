package javax.jmdns.impl.tasks.state;

import java.util.Timer;
import java.util.logging.Logger;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.constants.DNSState;

public class Announcer extends DNSStateTask
{
  static Logger logger = Logger.getLogger(Announcer.class.getName());
  DNSState taskState = DNSState.ANNOUNCING_1;

  public Announcer(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl, defaultTTL());
    associate(DNSState.ANNOUNCING_1);
  }

  public boolean cancel()
  {
    removeAssociation();
    return super.cancel();
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("Announcer(");
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
    //   11: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   14: invokevirtual 88	javax/jmdns/impl/JmDNSImpl:isCanceling	()Z
    //   17: ifne +13 -> 30
    //   20: aload_0
    //   21: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   24: invokevirtual 91	javax/jmdns/impl/JmDNSImpl:isCanceled	()Z
    //   27: ifeq +11 -> 38
    //   30: aload_0
    //   31: invokevirtual 92	javax/jmdns/impl/tasks/state/Announcer:cancel	()Z
    //   34: pop
    //   35: goto +437 -> 472
    //   38: aload_0
    //   39: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   42: astore 5
    //   44: aload 5
    //   46: monitorenter
    //   47: aload_0
    //   48: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 40	javax/jmdns/impl/tasks/state/Announcer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   56: invokevirtual 96	javax/jmdns/impl/JmDNSImpl:isAssociatedWithTask	(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    //   59: ifeq +71 -> 130
    //   62: getstatic 24	javax/jmdns/impl/tasks/state/Announcer:logger	Ljava/util/logging/Logger;
    //   65: new 53	java/lang/StringBuilder
    //   68: dup
    //   69: aload_0
    //   70: invokevirtual 97	javax/jmdns/impl/tasks/state/Announcer:getName	()Ljava/lang/String;
    //   73: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   76: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: ldc 105
    //   81: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokevirtual 108	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   90: aload_0
    //   91: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   94: invokevirtual 112	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   97: aload_0
    //   98: invokevirtual 115	javax/jmdns/impl/tasks/state/Announcer:getTTL	()I
    //   101: invokevirtual 121	javax/jmdns/impl/HostInfo:answers	(I)Ljava/util/Collection;
    //   104: invokeinterface 127 1 0
    //   109: astore 14
    //   111: aload 14
    //   113: invokeinterface 132 1 0
    //   118: ifne +130 -> 248
    //   121: aload_0
    //   122: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   125: aload_0
    //   126: invokevirtual 136	javax/jmdns/impl/JmDNSImpl:advanceState	(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    //   129: pop
    //   130: aload 5
    //   132: monitorexit
    //   133: aload_0
    //   134: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   137: invokevirtual 140	javax/jmdns/impl/JmDNSImpl:getServices	()Ljava/util/Map;
    //   140: invokeinterface 146 1 0
    //   145: invokeinterface 127 1 0
    //   150: astore 7
    //   152: aload 7
    //   154: invokeinterface 132 1 0
    //   159: ifne +160 -> 319
    //   162: aload_1
    //   163: invokevirtual 149	javax/jmdns/impl/DNSOutgoing:isEmpty	()Z
    //   166: ifne +298 -> 464
    //   169: getstatic 24	javax/jmdns/impl/tasks/state/Announcer:logger	Ljava/util/logging/Logger;
    //   172: new 53	java/lang/StringBuilder
    //   175: dup
    //   176: aload_0
    //   177: invokevirtual 97	javax/jmdns/impl/tasks/state/Announcer:getName	()Ljava/lang/String;
    //   180: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   183: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   186: ldc 151
    //   188: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload_0
    //   192: getfield 40	javax/jmdns/impl/tasks/state/Announcer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   195: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   198: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokevirtual 108	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   204: aload_0
    //   205: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   208: aload_1
    //   209: invokevirtual 158	javax/jmdns/impl/JmDNSImpl:send	(Ljavax/jmdns/impl/DNSOutgoing;)V
    //   212: aload_0
    //   213: aload_0
    //   214: getfield 40	javax/jmdns/impl/tasks/state/Announcer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   217: invokevirtual 162	javax/jmdns/impl/constants/DNSState:advance	()Ljavax/jmdns/impl/constants/DNSState;
    //   220: putfield 40	javax/jmdns/impl/tasks/state/Announcer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   223: aload_0
    //   224: getfield 40	javax/jmdns/impl/tasks/state/Announcer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   227: invokevirtual 165	javax/jmdns/impl/constants/DNSState:isAnnouncing	()Z
    //   230: ifne +242 -> 472
    //   233: aload_0
    //   234: invokevirtual 92	javax/jmdns/impl/tasks/state/Announcer:cancel	()Z
    //   237: pop
    //   238: aload_0
    //   239: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   242: invokevirtual 168	javax/jmdns/impl/JmDNSImpl:startRenewer	()V
    //   245: goto +227 -> 472
    //   248: aload_0
    //   249: aload_1
    //   250: aconst_null
    //   251: aload 14
    //   253: invokeinterface 172 1 0
    //   258: checkcast 174	javax/jmdns/impl/DNSRecord
    //   261: invokevirtual 178	javax/jmdns/impl/tasks/state/Announcer:addAnswer	(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    //   264: astore_1
    //   265: goto -154 -> 111
    //   268: astore 6
    //   270: aload 5
    //   272: monitorexit
    //   273: aload 6
    //   275: athrow
    //   276: astore_2
    //   277: getstatic 24	javax/jmdns/impl/tasks/state/Announcer:logger	Ljava/util/logging/Logger;
    //   280: getstatic 184	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   283: new 53	java/lang/StringBuilder
    //   286: dup
    //   287: aload_0
    //   288: invokevirtual 97	javax/jmdns/impl/tasks/state/Announcer:getName	()Ljava/lang/String;
    //   291: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   294: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   297: ldc 186
    //   299: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: aload_2
    //   306: invokevirtual 190	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   309: aload_0
    //   310: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   313: invokevirtual 193	javax/jmdns/impl/JmDNSImpl:recover	()V
    //   316: goto -104 -> 212
    //   319: aload 7
    //   321: invokeinterface 172 1 0
    //   326: checkcast 195	javax/jmdns/ServiceInfo
    //   329: checkcast 197	javax/jmdns/impl/ServiceInfoImpl
    //   332: astore 8
    //   334: aload 8
    //   336: monitorenter
    //   337: aload 8
    //   339: aload_0
    //   340: aload_0
    //   341: getfield 40	javax/jmdns/impl/tasks/state/Announcer:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   344: invokevirtual 198	javax/jmdns/impl/ServiceInfoImpl:isAssociatedWithTask	(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    //   347: ifeq +79 -> 426
    //   350: getstatic 24	javax/jmdns/impl/tasks/state/Announcer:logger	Ljava/util/logging/Logger;
    //   353: new 53	java/lang/StringBuilder
    //   356: dup
    //   357: aload_0
    //   358: invokevirtual 97	javax/jmdns/impl/tasks/state/Announcer:getName	()Ljava/lang/String;
    //   361: invokestatic 103	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   364: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   367: ldc 200
    //   369: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: aload 8
    //   374: invokevirtual 203	javax/jmdns/impl/ServiceInfoImpl:getQualifiedName	()Ljava/lang/String;
    //   377: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: invokevirtual 108	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   386: aload 8
    //   388: aload_0
    //   389: invokevirtual 115	javax/jmdns/impl/tasks/state/Announcer:getTTL	()I
    //   392: aload_0
    //   393: invokevirtual 62	javax/jmdns/impl/tasks/state/Announcer:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   396: invokevirtual 112	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   399: invokevirtual 206	javax/jmdns/impl/ServiceInfoImpl:answers	(ILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    //   402: invokeinterface 127 1 0
    //   407: astore 10
    //   409: aload 10
    //   411: invokeinterface 132 1 0
    //   416: ifne +24 -> 440
    //   419: aload 8
    //   421: aload_0
    //   422: invokevirtual 207	javax/jmdns/impl/ServiceInfoImpl:advanceState	(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    //   425: pop
    //   426: aload 8
    //   428: monitorexit
    //   429: goto -277 -> 152
    //   432: astore 9
    //   434: aload 8
    //   436: monitorexit
    //   437: aload 9
    //   439: athrow
    //   440: aload_0
    //   441: aload_1
    //   442: aconst_null
    //   443: aload 10
    //   445: invokeinterface 172 1 0
    //   450: checkcast 174	javax/jmdns/impl/DNSRecord
    //   453: invokevirtual 178	javax/jmdns/impl/tasks/state/Announcer:addAnswer	(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    //   456: astore 11
    //   458: aload 11
    //   460: astore_1
    //   461: goto -52 -> 409
    //   464: aload_0
    //   465: invokevirtual 92	javax/jmdns/impl/tasks/state/Announcer:cancel	()Z
    //   468: pop
    //   469: goto -257 -> 212
    //   472: return
    //
    // Exception table:
    //   from	to	target	type
    //   47	133	268	finally
    //   248	273	268	finally
    //   10	47	276	java/lang/Throwable
    //   133	212	276	java/lang/Throwable
    //   273	276	276	java/lang/Throwable
    //   319	337	276	java/lang/Throwable
    //   437	440	276	java/lang/Throwable
    //   464	469	276	java/lang/Throwable
    //   337	437	432	finally
    //   440	458	432	finally
  }

  public void start(Timer paramTimer)
  {
    if ((!getDns().isCanceling()) && (!getDns().isCanceled()))
      paramTimer.schedule(this, 1000L, 1000L);
  }

  public String toString()
  {
    return super.toString() + " state: " + this.taskState;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.state.Announcer
 * JD-Core Version:    0.6.0
 */