.class public Lcom/clipcomm/WiFiRemocon/QueryRequest;
.super Ljava/lang/Object;
.source "QueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$QueryRequest$ui_state_token:[I = null

.field static final UIMODE_NAVIBTN:I = 0x2

.field static final UIMODE_TOUCHPAD:I = 0x1

.field static final UIMODE_VOLCH:I

.field private static m_strDNFAVChannel:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clipcomm$WiFiRemocon$QueryRequest$ui_state_token()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$QueryRequest$ui_state_token:[I

    #v0=(Reference,[I);
    if-eqz v0, :cond_0

    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->values()[Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    :try_start_0
    #v0=(Reference,[I);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NOVALUE:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->NavigationButton:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->TouchPad:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v1, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->VolCh:Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;);
    invoke-virtual {v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    #v1=(Conflicted);v2=(Conflicted);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$QueryRequest$ui_state_token:[I

    goto :goto_0

    :catch_0
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_4

    :catch_1
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_3

    :catch_2
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_2

    :catch_3
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference,Ljava/lang/NoSuchFieldError;);
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/clipcomm/WiFiRemocon/QueryRequest;);
    return-void
.end method

.method public static CheckVersion(Ljava/lang/String;)Z
    .locals 6
    .parameter "strTargetIP"

    .prologue
    .line 30
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPGet;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;-><init>()V

    .line 31
    .local v0, get:Lcom/clipcomm/WiFiRemocon/HTTPGet;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    const-string v5, "/hdcp/api/data?target=version_info"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, p0, v5}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->setURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->execute()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, strResponse:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v5, "HDCPError"

    invoke-static {v2, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, strHDCPErrorCode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v5, "200"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 40
    const-string v5, "hdcpVersion"

    #v5=(Reference,Ljava/lang/String;);
    invoke-static {v2, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, strVersion:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    const-string v5, "serviceVersion"

    invoke-static {v2, v5}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, strService:Ljava/lang/String;
    #v3=(Reference,Ljava/lang/String;);
    const-string v5, "1.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    const-string v5, "dtv_wifirc1.0"

    #v5=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 48
    const/4 v5, 0x1

    .line 51
    .end local v3           #strService:Ljava/lang/String;
    .end local v4           #strVersion:Ljava/lang/String;
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);
    return v5

    :cond_0
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_0
.end method

.method public static GetCurrentChannel(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z
    .locals 2
    .parameter "destInfo"
    .parameter "info"

    .prologue
    .line 179
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1, p1}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->GetCurrentChannel(Ljava/lang/String;Ljava/lang/String;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public static GetCurrentChannel(Ljava/lang/String;Ljava/lang/String;Lcom/clipcomm/WiFiRemocon/ChannelInfo;)Z
    .locals 6
    .parameter "strTargetIP"
    .parameter "strSession"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 193
    #v5=(Null);
    if-nez p2, :cond_0

    move v3, v5

    .line 203
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);
    return v3

    .line 194
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPGet;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;-><init>()V

    .line 195
    .local v0, get:Lcom/clipcomm/WiFiRemocon/HTTPGet;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/hdcp/api/data?target=cur_channel&session="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->setURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->execute()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, strResponse:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "HDCPError"

    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, strHDCPErrorCode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 201
    invoke-static {p2, v2}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->ParseChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v5

    .line 203
    #v3=(Null);
    goto :goto_0
.end method

.method public static GetFavoriteChannel(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "strGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clipcomm/WiFiRemocon/ChannelInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x20

    #v13=(PosByte);
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v11, 0x1

    .line 318
    #v11=(One);
    sget-object v9, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    #v9=(Reference,Ljava/lang/String;);
    if-nez v9, :cond_0

    move-object v9, v12

    .line 352
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    return-object v9

    .line 323
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, arChannelInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/clipcomm/WiFiRemocon/ChannelInfo;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v10, "<group><gname>"

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</gname>(.*?)</group>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, strReg1:Ljava/lang/String;
    #v7=(Reference,Ljava/lang/String;);
    const-string v8, "<data>(.*?)</data>"

    .line 328
    .local v8, strReg2:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    sget-object v9, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    const-string v10, "HDCPError"

    invoke-static {v9, v10}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, strHDCPErrorCode:Ljava/lang/String;
    #v6=(Reference,Ljava/lang/String;);
    const-string v9, "200"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_5

    .line 332
    invoke-static {v7, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 333
    .local v4, patGroup:Ljava/util/regex/Pattern;
    #v4=(Reference,Ljava/util/regex/Pattern;);
    sget-object v9, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 334
    .local v3, matchGrp:Ljava/util/regex/Matcher;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference,Ljava/util/regex/Matcher;);v5=(Conflicted);v9=(Conflicted);
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    #v9=(Boolean);
    if-nez v9, :cond_2

    move-object v9, v0

    .line 350
    #v9=(Reference,Ljava/util/ArrayList;);
    goto :goto_0

    .line 336
    :cond_2
    #v9=(Boolean);
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    #v9=(Integer);
    if-ge v9, v11, :cond_3

    move-object v9, v12

    #v9=(Null);
    goto :goto_0

    .line 337
    :cond_3
    #v9=(Integer);
    invoke-static {v8, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 338
    .local v5, pattern:Ljava/util/regex/Pattern;
    #v5=(Reference,Ljava/util/regex/Pattern;);
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 339
    .local v2, m:Ljava/util/regex/Matcher;
    :cond_4
    :goto_1
    #v2=(Reference,Ljava/util/regex/Matcher;);v9=(Conflicted);
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_1

    .line 341
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    #v9=(Integer);
    if-lt v9, v11, :cond_4

    .line 342
    new-instance v1, Lcom/clipcomm/WiFiRemocon/ChannelInfo;

    #v1=(UninitRef,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    invoke-direct {v1}, Lcom/clipcomm/WiFiRemocon/ChannelInfo;-><init>()V

    .line 344
    .local v1, info:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    #v1=(Reference,Lcom/clipcomm/WiFiRemocon/ChannelInfo;);
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    #v9=(Reference,Ljava/lang/String;);
    invoke-static {v1, v9}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->ParseChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;Ljava/lang/String;)Z

    move-result v9

    #v9=(Boolean);
    if-eqz v9, :cond_4

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #info:Lcom/clipcomm/WiFiRemocon/ChannelInfo;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #matchGrp:Ljava/util/regex/Matcher;
    .end local v4           #patGroup:Ljava/util/regex/Pattern;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    :cond_5
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-object v9, v12

    .line 352
    #v9=(Null);
    goto :goto_0
.end method

.method public static GetInitUIState(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)I
    .locals 2
    .parameter "destInfo"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->GetInitUIState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static GetInitUIState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "strTargetIP"
    .parameter "strSession"

    .prologue
    const/4 v5, 0x0

    .line 148
    #v5=(Null);
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPGet;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;-><init>()V

    .line 149
    .local v0, get:Lcom/clipcomm/WiFiRemocon/HTTPGet;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/hdcp/api/data?target=context_ui&session="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->setURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->execute()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, strResponse:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "HDCPError"

    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, strHDCPErrorCode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 155
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->$SWITCH_TABLE$com$clipcomm$WiFiRemocon$QueryRequest$ui_state_token()[I

    move-result-object v3

    #v3=(Reference,[I);
    const-string v4, "mode"

    invoke-static {v2, v4}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->toStateToken(Ljava/lang/String;)Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clipcomm/WiFiRemocon/QueryRequest$ui_state_token;->ordinal()I

    move-result v4

    #v4=(Integer);
    aget v3, v3, v4

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    :cond_0
    #v4=(Conflicted);
    move v3, v5

    .line 167
    :goto_0
    #v3=(PosByte);
    return v3

    :pswitch_0
    #v3=(Integer);v4=(Integer);
    move v3, v5

    .line 158
    #v3=(Null);
    goto :goto_0

    .line 160
    :pswitch_1
    #v3=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    goto :goto_0

    .line 162
    :pswitch_2
    #v3=(Integer);
    const/4 v3, 0x2

    #v3=(PosByte);
    goto :goto_0

    .line 155
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static GetModelInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strTargetIP"
    .parameter "strSession"

    .prologue
    .line 63
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPGet;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;-><init>()V

    .line 64
    .local v0, get:Lcom/clipcomm/WiFiRemocon/HTTPGet;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/hdcp/api/data?target=model_info&session="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->setURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->execute()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, strResponse:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "HDCPError"

    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, strHDCPErrorCode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    const-string v3, ""

    return-object v3
.end method

.method public static GetRegion(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)I
    .locals 2
    .parameter "destInfo"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->GetRegion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static GetRegion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "strTargetIP"
    .parameter "strSession"

    .prologue
    .line 96
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPGet;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;-><init>()V

    .line 97
    .local v0, get:Lcom/clipcomm/WiFiRemocon/HTTPGet;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/hdcp/api/data?target=model_region&session="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->setURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->execute()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, strResponse:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "HDCPError"

    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, strHDCPErrorCode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 103
    const-string v3, "region"

    #v3=(Reference,Ljava/lang/String;);
    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/clipcomm/WiFiRemocon/CRegionDepUI;->getRegionCode(Ljava/lang/String;)I

    move-result v3

    .line 105
    :goto_0
    #v3=(Integer);
    return v3

    :cond_0
    #v3=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method

.method public static ParseChInfo(Lcom/clipcomm/WiFiRemocon/ChannelInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "info"
    .parameter "strContents"

    .prologue
    .line 215
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    #v0=(Boolean);
    return v0

    .line 217
    :cond_1
    #v0=(Uninit);
    const-string v0, "major"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMajorCH:Ljava/lang/String;

    .line 218
    const-string v0, "minor"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strMinorCH:Ljava/lang/String;

    .line 219
    const-string v0, "sourceIndex"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strSrcIndex:Ljava/lang/String;

    .line 220
    const-string v0, "physicalNum"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strPhyNum:Ljava/lang/String;

    .line 221
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strCHType:Ljava/lang/String;

    .line 222
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strName:Ljava/lang/String;

    iput-object v0, p0, Lcom/clipcomm/WiFiRemocon/ChannelInfo;->m_strDispName:Ljava/lang/String;

    .line 225
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public static getFAVGroupList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 286
    #v7=(One);
    const/4 v2, 0x0

    .line 287
    .local v2, nCount:I
    #v2=(Null);
    sget-object v6, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    if-nez v6, :cond_0

    .line 289
    const/4 v6, 0x0

    .line 307
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v6

    .line 291
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, arGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v0=(Reference,Ljava/util/ArrayList;);
    const-string v5, "<gname>(.*?)</gname>"

    .line 294
    .local v5, strReg1:Ljava/lang/String;
    #v5=(Reference,Ljava/lang/String;);
    const/16 v6, 0x20

    #v6=(PosByte);
    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 295
    .local v3, patGroup:Ljava/util/regex/Pattern;
    #v3=(Reference,Ljava/util/regex/Pattern;);
    sget-object v6, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 296
    .local v1, matchGrp:Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    #v1=(Reference,Ljava/util/regex/Matcher;);v2=(Integer);v4=(Conflicted);v6=(Conflicted);
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_2

    move-object v6, v0

    .line 307
    #v6=(Reference,Ljava/util/ArrayList;);
    goto :goto_0

    .line 298
    :cond_2
    #v6=(Boolean);
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    #v6=(Integer);
    if-lt v6, v7, :cond_1

    .line 299
    new-instance v4, Ljava/lang/String;

    #v4=(UninitRef,Ljava/lang/String;);
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, strGroupName:Ljava/lang/String;
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-lez v6, :cond_1

    .line 302
    add-int/lit8 v2, v2, 0x1

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getFavoriteChannelPacket(Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;)Z
    .locals 2
    .parameter "destInfo"

    .prologue
    .line 238
    invoke-static {}, Lcom/clipcomm/WiFiRemocon/LifeTime;->getInstance()Lcom/clipcomm/WiFiRemocon/LifeTime;

    move-result-object v0

    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/LifeTime;);
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/LifeTime;->isDemoTVMode()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef,Ljava/lang/String;);
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?><envelope><HDCPError>200</HDCPError><HDCPErrorDetail>OK</HDCPErrorDetail><session>391820379</session><group><gname>Demo FAV A</gname><data><type>terrestrial</type><major>9</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>9</physicalNum><name>KBS-1</name></data><data><type>terrestrial</type><major>13</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>13</physicalNum><name>EBS</name></data><data><type>cable</type><major>55</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>55</physicalNum><name>LG TV</name></data><data><type>satellite</type><major>93</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>93</physicalNum><name>Arirang TV</name></data></group><group><gname>Demo FAV B</gname><data><type>cable</type><major>9</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>9</physicalNum><name>KBS-1 HD</name></data><data><type>cable</type><major>13</major><minor>0</minor><sourceIndex>0</sourceIndex><physicalNum>13</physicalNum><name>EBS HD</name></data></group><group><gname>Demo FAV C</gname><data><type>cable</type><major>511</major><minor>0</minor><sourceIndex>0</sourceIndex><physicalNum>511</physicalNum><name>UNDERGAMENET</name></data><data><type>terrestrial</type><major>6</major><minor>0</minor><sourceIndex>0</sourceIndex><physicalNum>6</physicalNum><name>SBS</name></data></group><group><gname>Demo FAV D</gname><data><type>cable</type><major>31</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>31</physicalNum><name>Shopping - HEALTH</name></data><data><type>cable</type><major>32</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>32</physicalNum><name>Shopping - FOOD</name></data><data><type>cable</type><major>33</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>33</physicalNum><name>Shopping - CAR</name></data><data><type>cable</type><major>34</major><minor>1</minor><sourceIndex>0</sourceIndex><physicalNum>34</physicalNum><name>Shopping - MISC</name></data></group></envelope>"

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    .line 242
    const/4 v0, 0x1

    .line 250
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .line 246
    :cond_0
    #v1=(Uninit);
    if-nez p0, :cond_1

    .line 248
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 250
    :cond_1
    #v0=(Boolean);
    iget-object v0, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strIP:Ljava/lang/String;

    #v0=(Reference,Ljava/lang/String;);
    iget-object v1, p0, Lcom/clipcomm/WiFiRemocon/LifeTime$DestInfo;->m_strSessionID:Ljava/lang/String;

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v0, v1}, Lcom/clipcomm/WiFiRemocon/QueryRequest;->getFavoriteChannelPacket(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public static getFavoriteChannelPacket(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "strTargetIP"
    .parameter "strSession"

    .prologue
    .line 264
    const/4 v3, 0x0

    #v3=(Null);
    sput-object v3, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    .line 266
    new-instance v0, Lcom/clipcomm/WiFiRemocon/HTTPGet;

    #v0=(UninitRef,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    invoke-direct {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;-><init>()V

    .line 267
    .local v0, get:Lcom/clipcomm/WiFiRemocon/HTTPGet;
    #v0=(Reference,Lcom/clipcomm/WiFiRemocon/HTTPGet;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/hdcp/api/data?target=fav_list&session="

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->setURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lcom/clipcomm/WiFiRemocon/HTTPGet;->execute()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, strResponse:Ljava/lang/String;
    #v2=(Reference,Ljava/lang/String;);
    const-string v3, "HDCPError"

    invoke-static {v2, v3}, Lcom/clipcomm/WiFiRemocon/HTTPPostRequest;->parseElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, strHDCPErrorCode:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 273
    new-instance v3, Ljava/lang/String;

    #v3=(UninitRef,Ljava/lang/String;);
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/String;);
    sput-object v3, Lcom/clipcomm/WiFiRemocon/QueryRequest;->m_strDNFAVChannel:Ljava/lang/String;

    .line 274
    const/4 v3, 0x1

    .line 276
    :goto_0
    #v3=(Boolean);
    return v3

    :cond_0
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_0
.end method
