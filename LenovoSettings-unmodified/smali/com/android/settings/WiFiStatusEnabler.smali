.class public final Lcom/android/settings/WiFiStatusEnabler;
.super Ljava/lang/Object;
.source "WiFiStatusEnabler.java"

# interfaces
.implements Lcom/lenovo/settings/LenovoStatusStateOperation;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:Landroid/widget/TextView;

.field private mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/WiFiStatusEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/WiFiStatusEnabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status_"    # Landroid/widget/TextView;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/WiFiStatusEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WiFiStatusEnabler$1;-><init>(Lcom/android/settings/WiFiStatusEnabler;)V

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/settings/WiFiStatusEnabler;->mStatus:Landroid/widget/TextView;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 56
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mConnManager:Landroid/net/ConnectivityManager;

    .line 57
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/WiFiStatusEnabler;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    return-object v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 92
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 94
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 96
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getRunningState()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v5, p0, Lcom/android/settings/WiFiStatusEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 71
    .local v3, "wifiState":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    move v1, v4

    .line 72
    .local v1, "isEnabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 73
    iget-object v5, p0, Lcom/android/settings/WiFiStatusEnabler;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    .local v0, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 75
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/WiFiStatusEnabler;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1
    return-object v4

    .line 71
    .end local v1    # "isEnabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v1    # "isEnabled":Z
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0259

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 81
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0a025a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WiFiStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/WiFiStatusEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/WiFiStatusEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/WiFiStatusEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .line 88
    return-void
.end method
