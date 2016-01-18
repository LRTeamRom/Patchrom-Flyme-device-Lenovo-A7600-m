.class public Lcom/android/mistyrain/WifiOpen;
.super Ljava/lang/Object;
.source "WifiOpen.java"


# instance fields
.field m:Landroid/content/Context;

.field wifiisopen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "m"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/mistyrain/WifiOpen;->m:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private getMobileDataStatus()Z
    .registers 10

    .prologue
    .line 59
    iget-object v7, p0, Lcom/android/mistyrain/WifiOpen;->m:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 61
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const-string v6, "getMobileDataEnabled"

    .line 62
    .local v6, "methodName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 63
    .local v2, "cmClass":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 67
    .local v4, "isOpen":Ljava/lang/Boolean;
    const/4 v7, 0x0

    :try_start_12
    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 69
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_24

    .line 75
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 71
    :catch_24
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private setMobileDataStatus(Z)V
    .registers 13
    .param p1, "enabled"    # Z

    .prologue
    .line 83
    :try_start_0
    iget-object v7, p0, Lcom/android/mistyrain/WifiOpen;->m:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 85
    .local v5, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    .local v0, "conMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mService"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 88
    .local v4, "iConMgrField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, "iConMgr":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 97
    .local v3, "iConMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "setMobileDataEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 96
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 98
    .local v6, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 102
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4f} :catch_50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4f} :catch_55
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4f} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4f} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4f} :catch_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4f} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4f} :catch_6e

    .line 125
    .end local v0    # "conMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "iConMgr":Ljava/lang/Object;
    .end local v3    # "iConMgrClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "iConMgrField":Ljava/lang/reflect/Field;
    .end local v5    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v6    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :goto_4f
    return-void

    .line 103
    :catch_50
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_4f

    .line 106
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_55
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_4f

    .line 109
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_5a
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_4f

    .line 112
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_5f
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4f

    .line 115
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_64
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4f

    .line 118
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_69
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4f

    .line 121
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_6e
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4f
.end method


# virtual methods
.method public setMobileDataEnabled()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mistyrain/WifiOpen;->getMobileDataStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mistyrain/WifiOpen;->setMobileDataStatus(Z)V

    .line 53
    :goto_a
    return-void

    .line 49
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mistyrain/WifiOpen;->setMobileDataStatus(Z)V

    goto :goto_a
.end method

.method public setWifiEnabled()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 25
    iget-object v1, p0, Lcom/android/mistyrain/WifiOpen;->m:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 26
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 27
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 28
    iget-object v1, p0, Lcom/android/mistyrain/WifiOpen;->m:Landroid/content/Context;

    const-string v2, "\u5df2\u5173\u95edwifi"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 34
    :goto_1f
    return-void

    .line 31
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 32
    iget-object v1, p0, Lcom/android/mistyrain/WifiOpen;->m:Landroid/content/Context;

    const-string v2, "\u5df2\u6253\u5f00wifi"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1f
.end method
