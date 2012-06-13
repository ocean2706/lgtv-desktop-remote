package javax.jmdns.impl.tasks.state;

import java.util.Timer;
import java.util.logging.Logger;
import javax.jmdns.impl.JmDNSImpl;
import javax.jmdns.impl.constants.DNSState;

public class Canceler extends DNSStateTask
{
  static Logger logger = Logger.getLogger(Canceler.class.getName());
  DNSState taskState = DNSState.CANCELING_1;

  public Canceler(JmDNSImpl paramJmDNSImpl)
  {
    super(paramJmDNSImpl, 0);
    associate(DNSState.CANCELING_1);
  }

  public boolean cancel()
  {
    removeAssociation();
    return super.cancel();
  }

  public String getName()
  {
    StringBuilder localStringBuilder = new StringBuilder("Canceler(");
    if (getDns() != null);
    for (String str = getDns().getName(); ; str = "")
      return str + ")";
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: new 77	javax/jmdns/impl/DNSOutgoing
    //   3: dup
    //   4: ldc 78
    //   6: invokespecial 81	javax/jmdns/impl/DNSOutgoing:<init>	(I)V
    //   9: astore_1
    //   10: getstatic 24	javax/jmdns/impl/tasks/state/Canceler:logger	Ljava/util/logging/Logger;
    //   13: new 49	java/lang/StringBuilder
    //   16: dup
    //   17: aload_0
    //   18: invokevirtual 82	javax/jmdns/impl/tasks/state/Canceler:getName	()Ljava/lang/String;
    //   21: invokestatic 88	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   24: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: ldc 90
    //   29: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokevirtual 93	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   38: aload_0
    //   39: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   42: astore 4
    //   44: aload 4
    //   46: monitorenter
    //   47: aload_0
    //   48: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 36	javax/jmdns/impl/tasks/state/Canceler:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   56: invokevirtual 97	javax/jmdns/impl/JmDNSImpl:isAssociatedWithTask	(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    //   59: ifeq +81 -> 140
    //   62: getstatic 24	javax/jmdns/impl/tasks/state/Canceler:logger	Ljava/util/logging/Logger;
    //   65: new 49	java/lang/StringBuilder
    //   68: dup
    //   69: aload_0
    //   70: invokevirtual 82	javax/jmdns/impl/tasks/state/Canceler:getName	()Ljava/lang/String;
    //   73: invokestatic 88	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   76: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: ldc 99
    //   81: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_0
    //   85: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   88: invokevirtual 61	javax/jmdns/impl/JmDNSImpl:getName	()Ljava/lang/String;
    //   91: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokevirtual 93	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   100: aload_0
    //   101: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   104: invokevirtual 103	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   107: aload_0
    //   108: invokevirtual 107	javax/jmdns/impl/tasks/state/Canceler:getTTL	()I
    //   111: invokevirtual 113	javax/jmdns/impl/HostInfo:answers	(I)Ljava/util/Collection;
    //   114: invokeinterface 119 1 0
    //   119: astore 13
    //   121: aload 13
    //   123: invokeinterface 124 1 0
    //   128: ifne +121 -> 249
    //   131: aload_0
    //   132: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   135: aload_0
    //   136: invokevirtual 128	javax/jmdns/impl/JmDNSImpl:advanceState	(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    //   139: pop
    //   140: aload 4
    //   142: monitorexit
    //   143: aload_0
    //   144: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   147: invokevirtual 132	javax/jmdns/impl/JmDNSImpl:getServices	()Ljava/util/Map;
    //   150: invokeinterface 138 1 0
    //   155: invokeinterface 119 1 0
    //   160: astore 6
    //   162: aload 6
    //   164: invokeinterface 124 1 0
    //   169: ifne +151 -> 320
    //   172: aload_1
    //   173: invokevirtual 141	javax/jmdns/impl/DNSOutgoing:isEmpty	()Z
    //   176: ifne +289 -> 465
    //   179: getstatic 24	javax/jmdns/impl/tasks/state/Canceler:logger	Ljava/util/logging/Logger;
    //   182: new 49	java/lang/StringBuilder
    //   185: dup
    //   186: aload_0
    //   187: invokevirtual 82	javax/jmdns/impl/tasks/state/Canceler:getName	()Ljava/lang/String;
    //   190: invokestatic 88	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   193: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: ldc 143
    //   198: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_0
    //   202: getfield 36	javax/jmdns/impl/tasks/state/Canceler:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   205: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokevirtual 93	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   214: aload_0
    //   215: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   218: aload_1
    //   219: invokevirtual 150	javax/jmdns/impl/JmDNSImpl:send	(Ljavax/jmdns/impl/DNSOutgoing;)V
    //   222: aload_0
    //   223: aload_0
    //   224: getfield 36	javax/jmdns/impl/tasks/state/Canceler:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   227: invokevirtual 154	javax/jmdns/impl/constants/DNSState:advance	()Ljavax/jmdns/impl/constants/DNSState;
    //   230: putfield 36	javax/jmdns/impl/tasks/state/Canceler:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   233: aload_0
    //   234: getfield 36	javax/jmdns/impl/tasks/state/Canceler:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   237: invokevirtual 157	javax/jmdns/impl/constants/DNSState:isCanceling	()Z
    //   240: ifne +8 -> 248
    //   243: aload_0
    //   244: invokevirtual 158	javax/jmdns/impl/tasks/state/Canceler:cancel	()Z
    //   247: pop
    //   248: return
    //   249: aload_0
    //   250: aload_1
    //   251: aconst_null
    //   252: aload 13
    //   254: invokeinterface 162 1 0
    //   259: checkcast 164	javax/jmdns/impl/DNSRecord
    //   262: invokevirtual 168	javax/jmdns/impl/tasks/state/Canceler:addAnswer	(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    //   265: astore_1
    //   266: goto -145 -> 121
    //   269: astore 5
    //   271: aload 4
    //   273: monitorexit
    //   274: aload 5
    //   276: athrow
    //   277: astore_2
    //   278: getstatic 24	javax/jmdns/impl/tasks/state/Canceler:logger	Ljava/util/logging/Logger;
    //   281: getstatic 174	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   284: new 49	java/lang/StringBuilder
    //   287: dup
    //   288: aload_0
    //   289: invokevirtual 82	javax/jmdns/impl/tasks/state/Canceler:getName	()Ljava/lang/String;
    //   292: invokestatic 88	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   295: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   298: ldc 176
    //   300: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   306: aload_2
    //   307: invokevirtual 180	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   310: aload_0
    //   311: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   314: invokevirtual 183	javax/jmdns/impl/JmDNSImpl:recover	()V
    //   317: goto -95 -> 222
    //   320: aload 6
    //   322: invokeinterface 162 1 0
    //   327: checkcast 185	javax/jmdns/ServiceInfo
    //   330: checkcast 187	javax/jmdns/impl/ServiceInfoImpl
    //   333: astore 7
    //   335: aload 7
    //   337: monitorenter
    //   338: aload 7
    //   340: aload_0
    //   341: aload_0
    //   342: getfield 36	javax/jmdns/impl/tasks/state/Canceler:taskState	Ljavax/jmdns/impl/constants/DNSState;
    //   345: invokevirtual 188	javax/jmdns/impl/ServiceInfoImpl:isAssociatedWithTask	(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    //   348: ifeq +79 -> 427
    //   351: getstatic 24	javax/jmdns/impl/tasks/state/Canceler:logger	Ljava/util/logging/Logger;
    //   354: new 49	java/lang/StringBuilder
    //   357: dup
    //   358: aload_0
    //   359: invokevirtual 82	javax/jmdns/impl/tasks/state/Canceler:getName	()Ljava/lang/String;
    //   362: invokestatic 88	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   365: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   368: ldc 99
    //   370: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: aload 7
    //   375: invokevirtual 191	javax/jmdns/impl/ServiceInfoImpl:getQualifiedName	()Ljava/lang/String;
    //   378: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: invokevirtual 93	java/util/logging/Logger:finer	(Ljava/lang/String;)V
    //   387: aload 7
    //   389: aload_0
    //   390: invokevirtual 107	javax/jmdns/impl/tasks/state/Canceler:getTTL	()I
    //   393: aload_0
    //   394: invokevirtual 58	javax/jmdns/impl/tasks/state/Canceler:getDns	()Ljavax/jmdns/impl/JmDNSImpl;
    //   397: invokevirtual 103	javax/jmdns/impl/JmDNSImpl:getLocalHost	()Ljavax/jmdns/impl/HostInfo;
    //   400: invokevirtual 194	javax/jmdns/impl/ServiceInfoImpl:answers	(ILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    //   403: invokeinterface 119 1 0
    //   408: astore 9
    //   410: aload 9
    //   412: invokeinterface 124 1 0
    //   417: ifne +24 -> 441
    //   420: aload 7
    //   422: aload_0
    //   423: invokevirtual 195	javax/jmdns/impl/ServiceInfoImpl:advanceState	(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    //   426: pop
    //   427: aload 7
    //   429: monitorexit
    //   430: goto -268 -> 162
    //   433: astore 8
    //   435: aload 7
    //   437: monitorexit
    //   438: aload 8
    //   440: athrow
    //   441: aload_0
    //   442: aload_1
    //   443: aconst_null
    //   444: aload 9
    //   446: invokeinterface 162 1 0
    //   451: checkcast 164	javax/jmdns/impl/DNSRecord
    //   454: invokevirtual 168	javax/jmdns/impl/tasks/state/Canceler:addAnswer	(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    //   457: astore 10
    //   459: aload 10
    //   461: astore_1
    //   462: goto -52 -> 410
    //   465: aload_0
    //   466: invokevirtual 158	javax/jmdns/impl/tasks/state/Canceler:cancel	()Z
    //   469: pop
    //   470: goto -248 -> 222
    //
    // Exception table:
    //   from	to	target	type
    //   47	143	269	finally
    //   249	274	269	finally
    //   10	47	277	java/lang/Throwable
    //   143	222	277	java/lang/Throwable
    //   274	277	277	java/lang/Throwable
    //   320	338	277	java/lang/Throwable
    //   438	441	277	java/lang/Throwable
    //   465	470	277	java/lang/Throwable
    //   338	438	433	finally
    //   441	459	433	finally
  }

  public void start(Timer paramTimer)
  {
    paramTimer.schedule(this, 0L, 1000L);
  }

  public String toString()
  {
    return super.toString() + " state: " + this.taskState;
  }
}

/* Location:           C:\Users\george\Desktop\lgtv\work\lgtv_dex2jar.jar
 * Qualified Name:     javax.jmdns.impl.tasks.state.Canceler
 * JD-Core Version:    0.6.0
 */