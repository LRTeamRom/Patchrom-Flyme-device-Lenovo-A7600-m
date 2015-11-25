.class public Lcom/mediatek/rns/RnsService;
.super Lcom/mediatek/rns/IRnsManager$Stub;
.source "RnsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rns/RnsService$WifiRssiMonitor;,
        Lcom/mediatek/rns/RnsService$InternalHandler;,
        Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_WIFI_CALL_SETTINGS:I = 0xa

.field private static final EVENT_REGISTER_RNS_AGENT:I = 0x1

.field private static final EVENT_WIFI_RSSI_UPDATE:I

.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAllowedRadio:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWfcEnabled:Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLtePhoneState:Landroid/telephony/ServiceState;

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/rns/RnsPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mState:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;

.field private mWfcSettingsObserver:Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mWifiTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/mediatek/rns/RnsService;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Lcom/mediatek/rns/IRnsManager$Stub;-><init>()V

    .line 55
    const-string v3, "RnsService"

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v5, p0, Lcom/mediatek/rns/RnsService;->DEBUG:Z

    .line 63
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsService;->mIsWifiConnected:Z

    .line 64
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsService;->mIsWifiEnabled:Z

    .line 66
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    .line 67
    iput v4, p0, Lcom/mediatek/rns/RnsService;->mState:I

    .line 69
    iput-boolean v4, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    .line 120
    new-instance v3, Lcom/mediatek/rns/RnsService$1;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsService$1;-><init>(Lcom/mediatek/rns/RnsService;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v3, Lcom/mediatek/rns/RnsService$2;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsService$2;-><init>(Lcom/mediatek/rns/RnsService;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 519
    new-instance v3, Lcom/mediatek/rns/RnsService$3;

    invoke-direct {v3, p0}, Lcom/mediatek/rns/RnsService$3;-><init>(Lcom/mediatek/rns/RnsService;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 87
    const-string v3, "missing Context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    .line 88
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 90
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    .line 91
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "RnsServiceThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v3, Lcom/mediatek/rns/RnsService$InternalHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/mediatek/rns/RnsService$InternalHandler;-><init>(Lcom/mediatek/rns/RnsService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/rns/RnsService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 103
    .local v2, "mTeleMgr":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 105
    new-instance v3, Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsService;->mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/mediatek/rns/RnsService;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;

    .line 107
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mWfcSettingsObserver:Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;

    iget-object v4, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsService$WifiCallingSettingsObserver;->observe(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->createDefaultPolicies()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/rns/RnsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsService;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/rns/RnsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsService;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/rns/RnsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsService;->mIsWifiEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/rns/RnsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/rns/RnsService;->mIsWifiEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/rns/RnsService;)Lcom/mediatek/rns/RnsService$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/rns/RnsService;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/rns/RnsService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/rns/RnsService;->mLtePhoneState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/rns/RnsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isHandoverInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/rns/RnsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/rns/RnsService;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/rns/RnsService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsService;->toTexted(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/rns/RnsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/rns/RnsService;->handleEventWifiRssiUpdate(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/rns/RnsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/rns/RnsService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->handleEventApplyWifiCallSettings()V

    return-void
.end method

.method private addRadio(I)V
    .locals 2
    .param p1, "connectionType"    # I

    .prologue
    .line 383
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 384
    iget v0, p0, Lcom/mediatek/rns/RnsService;->mAllowedRadio:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/rns/RnsService;->mAllowedRadio:I

    .line 388
    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDefaultPolicies()V
    .locals 5

    .prologue
    .line 191
    new-instance v1, Lcom/mediatek/rns/RnsPolicy$UserPreference;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;-><init>(I)V

    .line 193
    .local v1, "preference":Lcom/mediatek/rns/RnsPolicy$UserPreference;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    invoke-direct {v0, v1}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$UserPreference;)V

    .line 194
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v2, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    const/16 v3, -0x4b

    const/16 v4, -0x55

    invoke-direct {v2, v3, v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;-><init>(II)V

    .line 198
    .local v2, "threshold":Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
    new-instance v0, Lcom/mediatek/rns/RnsPolicy;

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-direct {v0, v2}, Lcom/mediatek/rns/RnsPolicy;-><init>(Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;)V

    .line 199
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method private decideHandover()V
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isHandoverInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "RnsService"

    const-string v1, "decideHandover - handover in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isMatchRoveIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    const-string v0, "startRoveIn"

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsService;->showToast(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->startRoveIn()V

    goto :goto_0

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isMatchRoveOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    const-string v0, "startRoveOut"

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsService;->showToast(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->startRoveOut()V

    goto :goto_0

    .line 478
    :cond_2
    const-string v0, "RnsService"

    const-string v1, "decideHandover - no change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 675
    const-string v2, "RnsService"

    const-string v3, "--- dump ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 677
    .local v1, "key":Ljava/lang/String;
    const-string v2, "RnsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "RnsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v2, "RnsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v2, "RnsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteNetworkReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v2, "RnsService"

    const-string v3, "--- end ---"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 354
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 355
    .local v4, "size":I
    new-array v3, v4, [I

    .line 356
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 357
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 358
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 359
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 360
    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 361
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 363
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private handleEventApplyWifiCallSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v1, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "when_to_make_wifi_calls"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    .line 592
    const-string v1, "RnsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEventApplyWifiCallSettings, mIsWfcEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 594
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rns_user_preference"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->setMode(I)V

    .line 598
    const-string v1, "RnsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Preference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v3, "WifiRoveThreshold"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 602
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rns_wifi_rove_in_rssi"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveIn(I)V

    .line 607
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rns_wifi_rove_out_rssi"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->setRssiRoveOut(I)V

    .line 610
    const-string v1, "RnsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RoveIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoveOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->decideHandover()V

    .line 615
    return-void

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    :cond_2
    move v1, v2

    .line 589
    goto/16 :goto_0
.end method

.method private handleEventWifiRssiUpdate(I)V
    .locals 4
    .param p1, "newRssi"    # I

    .prologue
    .line 575
    const-string v1, "persist.net.test.rssi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 576
    .local v0, "testRssi":I
    if-eqz v0, :cond_0

    .line 577
    move p1, v0

    .line 581
    :cond_0
    iget v1, p0, Lcom/mediatek/rns/RnsService;->mLastRssi:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 582
    iput p1, p0, Lcom/mediatek/rns/RnsService;->mLastRssi:I

    .line 583
    const-string v1, "RnsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventWifiRssiUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/rns/RnsService;->mLastRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->decideHandover()V

    .line 586
    :cond_1
    return-void
.end method

.method private isHandoverInProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 511
    monitor-enter p0

    .line 512
    :try_start_0
    iget v1, p0, Lcom/mediatek/rns/RnsService;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mediatek/rns/RnsService;->mState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLteNetworkReady()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mLtePhoneState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mLtePhoneState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMatchRoveIn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 391
    const/4 v1, -0x1

    .line 392
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 394
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 400
    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 401
    :cond_1
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveIn = false, profile issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return v2

    .line 406
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 407
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 409
    iget v3, p0, Lcom/mediatek/rns/RnsService;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 410
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveOut signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/mediatek/rns/RnsService;->isPreferredMode(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 418
    const/4 v2, 0x1

    goto :goto_0

    .line 412
    :cond_4
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveIn = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_5
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveIn = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMatchRoveOut()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 426
    const/4 v1, -0x1

    .line 427
    .local v1, "profile":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 429
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 435
    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 436
    :cond_1
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveOut = false, profile issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    return v2

    .line 441
    :cond_2
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "WifiRoveThreshold"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 442
    .restart local v0    # "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 443
    iget v3, p0, Lcom/mediatek/rns/RnsService;->mLastRssi:I

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 444
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveOut signal strength criteria met"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/mediatek/rns/RnsService;->isPreferredMode(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 452
    const/4 v2, 0x1

    goto :goto_0

    .line 446
    :cond_4
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveOut = false, rssi issue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_5
    const-string v3, "RnsService"

    const-string v4, "isMatchRoveOut = false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPreferredMode(I)Z
    .locals 2
    .param p1, "profile"    # I

    .prologue
    const/4 v0, 0x1

    .line 460
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/mediatek/rns/RnsService;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/rns/RnsService;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeImsRadio()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    iput v4, p0, Lcom/mediatek/rns/RnsService;->mAllowedRadio:I

    .line 285
    iget-object v2, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v3, "UserPreference"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/RnsPolicy;

    .line 286
    .local v0, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    .line 290
    .local v1, "profile":I
    packed-switch v1, :pswitch_data_0

    .line 337
    .end local v1    # "profile":I
    :cond_0
    :goto_0
    iget v2, p0, Lcom/mediatek/rns/RnsService;->mAllowedRadio:I

    invoke-direct {p0, v2}, Lcom/mediatek/rns/RnsService;->transToReadableType(I)I

    move-result v2

    return v2

    .line 292
    .restart local v1    # "profile":I
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v2, :cond_0

    .line 293
    invoke-direct {p0, v4}, Lcom/mediatek/rns/RnsService;->addRadio(I)V

    goto :goto_0

    .line 297
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v2, :cond_1

    .line 298
    invoke-direct {p0, v4}, Lcom/mediatek/rns/RnsService;->addRadio(I)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsService;->addRadio(I)V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsService;->addRadio(I)V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-direct {p0, v5}, Lcom/mediatek/rns/RnsService;->addRadio(I)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v2, :cond_0

    .line 312
    invoke-direct {p0, v4}, Lcom/mediatek/rns/RnsService;->addRadio(I)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v1, p0, Lcom/mediatek/rns/RnsService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 727
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 728
    return-void
.end method

.method private startRoveIn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    const-string v0, "RnsService"

    const-string v1, "startRoveIn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsService;->mStartTime:J

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsService;->mState:I

    if-ne v0, v2, :cond_0

    .line 488
    const-string v0, "RnsService"

    const-string v1, "RoveIn is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    monitor-exit p0

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/rns/RnsService;->mState:I

    .line 492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsService;->tryConnectToRadio(I)V

    .line 493
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startRoveOut()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 498
    const-string v0, "RnsService"

    const-string v1, "startRoveOut"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/rns/RnsService;->mStartTime:J

    .line 500
    monitor-enter p0

    .line 501
    :try_start_0
    iget v0, p0, Lcom/mediatek/rns/RnsService;->mState:I

    if-ne v0, v2, :cond_0

    .line 502
    const-string v0, "RnsService"

    const-string v1, "RoveOut is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-exit p0

    .line 508
    :goto_0
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/rns/RnsService;->mState:I

    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/rns/RnsService;->tryConnectToRadio(I)V

    .line 507
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private toTexted(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 686
    sparse-switch p1, :sswitch_data_0

    .line 700
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 688
    :sswitch_0
    const-string v0, "EVENT_WIFI_RSSI_UPDATE"

    goto :goto_0

    .line 690
    :sswitch_1
    const-string v0, "EVENT_REGISTER_RNS_AGENT"

    goto :goto_0

    .line 692
    :sswitch_2
    const-string v0, "EVENT_APPLY_WIFI_CALL_SETTINGS"

    goto :goto_0

    .line 694
    :sswitch_3
    const-string v0, "CMD_CHANNEL_HALF_CONNECTED"

    goto :goto_0

    .line 696
    :sswitch_4
    const-string v0, "CMD_CHANNEL_DISCONNECT"

    goto :goto_0

    .line 698
    :sswitch_5
    const-string v0, "CMD_CHANNEL_DISCONNECTED"

    goto :goto_0

    .line 686
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0x11000 -> :sswitch_3
        0x11003 -> :sswitch_4
        0x11004 -> :sswitch_5
    .end sparse-switch
.end method

.method private toTexted(II)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v2, 0x1

    .line 705
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 706
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    if-nez p1, :cond_2

    .line 708
    const-string v1, "MOBILE(IMS), status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 714
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 709
    :cond_2
    if-ne p1, v2, :cond_0

    .line 710
    const-string v1, "WIFI(EPDG), status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 715
    :cond_3
    if-ne p2, v2, :cond_4

    .line 716
    const-string v1, "CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 717
    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 718
    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 719
    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 720
    const-string v1, "UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private transToReadableType(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 368
    if-ne p1, v0, :cond_0

    .line 369
    const-string v0, "RnsService"

    const-string v1, "makeImsRadio = ALLOWED_RADIO_WIFI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    .line 371
    :cond_0
    if-ne p1, v1, :cond_1

    .line 372
    const-string v1, "RnsService"

    const-string v2, "makeImsRadio = ALLOWED_RADIO_MOBILE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 375
    const-string v0, "RnsService"

    const-string v2, "makeImsRadio = ALLOWED_RADIO_MAX"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 376
    goto :goto_0

    .line 378
    :cond_2
    const-string v0, "RnsService"

    const-string v1, "makeImsRadio = ALLOWED_RADIO_NONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private tryConnectToRadio(I)V
    .locals 3
    .param p1, "radio"    # I

    .prologue
    .line 211
    const-string v0, "RnsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryConnectToRadio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->connectToRadio(I)V

    .line 213
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 648
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 650
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .line 651
    .local v0, "i":I
    const-string v4, "Policies:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 653
    iget-object v4, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 654
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  policy["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 655
    add-int/lit8 v0, v0, 0x1

    .line 656
    goto :goto_0

    .line 657
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "(none(-1)|wifi_only(0)|wifi_preferred(1)|cellular_only(2)|cellular_preferred(3))"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 661
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 662
    const-string v4, "Status:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWfcEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandoverInProgress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isHandoverInProgress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLteNetworkReady = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 669
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Radio Selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->makeImsRadio()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-string v4, "none(-1)|wifi(0)|moible(1)|all(2)"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public getAllowedRadioList(I)I
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->makeImsRadio()I

    move-result v0

    return v0
.end method

.method public getRnsState()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/mediatek/rns/RnsService;->mState:I

    return v0
.end method

.method public getTryAnotherRadioType(I)I
    .locals 10
    .param p1, "failedNetType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 229
    const/4 v2, -0x1

    .line 230
    .local v2, "profile":I
    const/4 v0, -0x1

    .line 231
    .local v0, "netType":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsService;->mPolicies:Ljava/util/HashMap;

    const-string v4, "UserPreference"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/rns/RnsPolicy;

    .line 232
    .local v1, "policy":Lcom/mediatek/rns/RnsPolicy;
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy;->getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v2

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isHandoverInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    iget v3, p0, Lcom/mediatek/rns/RnsService;->mState:I

    if-ne v3, v5, :cond_2

    if-ne p1, v5, :cond_2

    .line 239
    const-string v3, "RnsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveIn failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsService;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/rns/RnsService;->mState:I

    .line 247
    const-string v3, "RnsService"

    const-string v4, "needTryAnotherRadio = TYPE_NONE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v3, -0x1

    .line 275
    :goto_1
    return v3

    .line 241
    :cond_2
    iget v3, p0, Lcom/mediatek/rns/RnsService;->mState:I

    if-ne v3, v6, :cond_1

    if-nez p1, :cond_1

    .line 243
    const-string v3, "RnsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoveOut failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/rns/RnsService;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 274
    :cond_4
    :goto_2
    const-string v3, "RnsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needTryAnotherRadio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    .line 275
    goto :goto_1

    .line 254
    :pswitch_0
    if-nez v2, :cond_5

    .line 255
    const-string v3, "RnsService"

    const-string v4, "PREFERENCE_WIFI_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 256
    :cond_5
    if-ne v2, v5, :cond_4

    .line 257
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isLteNetworkReady()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v3, :cond_4

    .line 258
    const/4 v0, 0x0

    goto :goto_2

    .line 263
    :pswitch_1
    if-ne v2, v6, :cond_6

    .line 264
    const-string v3, "RnsService"

    const-string v4, "PREFERENCE_CELLULAR_ONLY - no need try another"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 265
    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 266
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mediatek/rns/RnsService;->mIsWfcEnabled:Z

    if-eqz v3, :cond_4

    .line 267
    const/4 v0, 0x1

    goto :goto_2

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerRnsAgent(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 620
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mediatek/rns/RnsService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/mediatek/rns/RnsService;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/mediatek/rns/RnsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 118
    return-void
.end method
