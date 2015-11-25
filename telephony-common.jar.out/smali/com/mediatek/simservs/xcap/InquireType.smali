.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v8}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .line 49
    .local v8, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v6, 0x0

    .line 50
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v7, 0x0

    .line 52
    .local v7, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 56
    const/4 v9, 0x1

    new-array v3, v9, [Lorg/apache/http/Header;

    .line 57
    const/4 v9, 0x0

    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v3, v9

    .line 59
    :cond_0
    iget-object v9, p0, Lcom/mediatek/simservs/xcap/InquireType;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v8, v9}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    .line 64
    .local v0, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    const/4 v9, 0x0

    const-string v10, "simservs"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "simservs"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 69
    :cond_1
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v3}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    .line 73
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 74
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 76
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 90
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 92
    .end local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v5    # "nodeUri":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 78
    .restart local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v5    # "nodeUri":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 79
    :try_start_1
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v0    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v5    # "nodeUri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    new-instance v9, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v9, v1}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v9

    .line 87
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    invoke-virtual {v8}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_0
.end method
