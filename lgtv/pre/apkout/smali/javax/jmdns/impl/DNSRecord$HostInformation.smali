.class public Ljavax/jmdns/impl/DNSRecord$HostInformation;
.super Ljavax/jmdns/impl/DNSRecord;
.source "DNSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostInformation"
.end annotation


# instance fields
.field _cpu:Ljava/lang/String;

.field _os:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "recordClass"
    .parameter "unique"
    .parameter "ttl"
    .parameter "cpu"
    .parameter "os"

    .prologue
    .line 938
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_HINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    #v2=(Reference,Ljavax/jmdns/impl/constants/DNSRecordType;);
    move-object v0, p0

    #v0=(UninitThis,Ljavax/jmdns/impl/DNSRecord$HostInformation;);
    move-object v1, p1

    #v1=(Reference,Ljava/lang/String;);
    move-object v3, p2

    #v3=(Reference,Ljavax/jmdns/impl/constants/DNSRecordClass;);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Integer);
    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)V

    .line 939
    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord$HostInformation;);p0=(Reference,Ljavax/jmdns/impl/DNSRecord$HostInformation;);
    iput-object p5, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    .line 940
    iput-object p6, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    .line 941
    return-void
.end method


# virtual methods
.method addAnswer(Ljavax/jmdns/impl/JmDNSImpl;Ljavax/jmdns/impl/DNSIncoming;Ljava/net/InetAddress;ILjavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 0
    .parameter "dns"
    .parameter "in"
    .parameter "addr"
    .parameter "port"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    return-object p5
.end method

.method public getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;
    .locals 5
    .parameter "dns"

    .prologue
    .line 1024
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSRecord$HostInformation;->getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    .line 1025
    .local v1, info:Ljavax/jmdns/ServiceInfo;
    #v1=(Reference,Ljavax/jmdns/ServiceInfo;);
    move-object v0, v1

    #v0=(Reference,Ljavax/jmdns/ServiceInfo;);
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    #v2=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {v2, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1026
    new-instance v2, Ljavax/jmdns/impl/ServiceEventImpl;

    #v2=(UninitRef,Ljavax/jmdns/impl/ServiceEventImpl;);
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getType()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v2, p1, v3, v4, v1}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    #v2=(Reference,Ljavax/jmdns/impl/ServiceEventImpl;);
    return-object v2
.end method

.method public getServiceInfo(Z)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .parameter "persistent"

    .prologue
    const/4 v2, 0x0

    .line 1010
    #v2=(Null);
    new-instance v6, Ljava/util/HashMap;

    #v6=(UninitRef,Ljava/util/HashMap;);
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1011
    .local v6, hinfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v6=(Reference,Ljava/util/HashMap;);
    const-string v0, "cpu"

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    const-string v0, "os"

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    #v0=(UninitRef,Ljavax/jmdns/impl/ServiceInfoImpl;);
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSRecord$HostInformation;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, p1

    #v5=(Boolean);
    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/util/Map;)V

    #v0=(Reference,Ljavax/jmdns/impl/ServiceInfoImpl;);
    return-object v0
.end method

.method handleQuery(Ljavax/jmdns/impl/JmDNSImpl;J)Z
    .locals 1
    .parameter "dns"
    .parameter "expirationTime"

    .prologue
    .line 963
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method handleResponse(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .parameter "dns"

    .prologue
    .line 975
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method sameValue(Ljavax/jmdns/impl/DNSRecord;)Z
    .locals 4
    .parameter "other"

    .prologue
    .line 986
    move-object v0, p1

    #v0=(Reference,Ljavax/jmdns/impl/DNSRecord;);
    check-cast v0, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    move-object v1, v0

    .line 987
    .local v1, hinfo:Ljavax/jmdns/impl/DNSRecord$HostInformation;
    #v1=(Reference,Ljavax/jmdns/impl/DNSRecord$HostInformation;);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    iget-object v3, v1, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    #v3=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    iget-object v3, v1, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "aLog"

    .prologue
    .line 1037
    invoke-super {p0, p1}, Ljavax/jmdns/impl/DNSRecord;->toString(Ljava/lang/StringBuilder;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v1, " cpu: \'"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' os: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    return-void
.end method

.method write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef,Ljava/lang/StringBuilder;);
    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_cpu:Ljava/lang/String;

    #v2=(Reference,Ljava/lang/String;);
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v1=(Reference,Ljava/lang/StringBuilder;);
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSRecord$HostInformation;->_os:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, hostInfo:Ljava/lang/String;
    #v0=(Reference,Ljava/lang/String;);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 1000
    return-void
.end method
