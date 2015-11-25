.class public Lcom/mediatek/gba/GbaCredentials;
.super Ljava/lang/Object;
.source "GbaCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# static fields
.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field private static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field protected static final HEX_ARRAY:[C

.field private static final TAG:Ljava/lang/String; = "GbaCredentials"

.field private static sSyncObject:Ljava/lang/Object;


# instance fields
.field private mCachedSessionKeyUsed:Z

.field private final mContext:Landroid/content/Context;

.field private mIsTlsEnabled:Z

.field private mNafAddress:Ljava/lang/String;

.field private mPasswd:Ljava/lang/String;

.field mService:Lcom/mediatek/gba/IGbaService;

.field private mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 29
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 33
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->HEX_ARRAY:[C

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->sSyncObject:Ljava/lang/Object;

    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    .line 31
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    .line 47
    iput-object p1, p0, Lcom/mediatek/gba/GbaCredentials;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 53
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    .line 54
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 58
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    .line 65
    :cond_1
    :goto_0
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nafAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 67
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 61
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 62
    iput-boolean v4, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasswd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/GbaCredentials;->mPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 71
    const-string v8, "GbaCredentials"

    const-string v9, "getUserPrincipal"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    if-ne v8, v10, :cond_6

    .line 74
    :cond_0
    const-string v8, "GbaCredentials"

    const-string v9, "Run GBA procedure"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    const-string v8, "GbaService"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 80
    const-string v8, "debug"

    const-string v9, "The binder is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v8, 0x0

    .line 130
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-object v8

    .line 84
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    invoke-static {v0}, Lcom/mediatek/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_1
    const/4 v5, 0x0

    .line 91
    .local v5, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :try_start_1
    sget-object v7, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 93
    .local v7, "uaId":[B
    iget-boolean v8, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    if-eqz v8, :cond_4

    .line 94
    const-string v8, "gba.ciper.suite"

    const-string v9, ""

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "gbaStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 96
    invoke-static {v4}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v1

    .line 97
    .local v1, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v1}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v2

    .line 99
    .local v2, "cipherSuiteCode":[B
    const/4 v8, 0x3

    const/4 v9, 0x0

    aget-byte v9, v2, v9

    aput-byte v9, v7, v8

    .line 100
    const/4 v8, 0x4

    const/4 v9, 0x1

    aget-byte v9, v2, v9

    aput-byte v9, v7, v8

    .line 107
    .end local v1    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    .end local v2    # "cipherSuiteCode":[B
    .end local v4    # "gbaStr":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    if-eqz v8, :cond_5

    .line 108
    iget-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;

    iget-object v9, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-interface {v8, v9, v7, v10}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v5

    .line 115
    :goto_3
    if-eqz v5, :cond_3

    .line 116
    const-string v8, "GbaCredentials"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GBA Session Key:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v8, Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v5}, Lcom/mediatek/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 118
    invoke-virtual {v5}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mPasswd:Ljava/lang/String;

    .line 119
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v5    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v7    # "uaId":[B
    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .restart local v7    # "uaId":[B
    :cond_4
    :try_start_2
    sget-object v7, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    goto :goto_2

    .line 111
    :cond_5
    iget-object v8, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;

    iget-object v9, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v7, v10}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_3

    .line 121
    .end local v7    # "uaId":[B
    :catch_1
    move-exception v6

    .line 122
    .local v6, "re":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 125
    .end local v5    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_6
    iget-boolean v8, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    if-nez v8, :cond_3

    .line 126
    iput-boolean v10, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    goto :goto_4
.end method

.method public setTlsEnabled(Z)V
    .locals 0
    .param p1, "tlsEnabled"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    .line 147
    return-void
.end method
