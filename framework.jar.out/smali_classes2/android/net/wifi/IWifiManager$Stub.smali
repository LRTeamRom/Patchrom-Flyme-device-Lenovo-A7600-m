.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1f

.field static final TRANSACTION_acquireWifiLock:I = 0x1a

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x5

.field static final TRANSACTION_addToBlacklist:I = 0x27

.field static final TRANSACTION_blockClient:I = 0x43

.field static final TRANSACTION_clearBlacklist:I = 0x28

.field static final TRANSACTION_disableNetwork:I = 0x8

.field static final TRANSACTION_disconnect:I = 0xd

.field static final TRANSACTION_doCtiaTestOff:I = 0x3c

.field static final TRANSACTION_doCtiaTestOn:I = 0x3b

.field static final TRANSACTION_doCtiaTestRate:I = 0x3d

.field static final TRANSACTION_enableAggressiveHandover:I = 0x36

.field static final TRANSACTION_enableNetwork:I = 0x7

.field static final TRANSACTION_enableTdls:I = 0x2b

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2c

.field static final TRANSACTION_enableVerboseLogging:I = 0x33

.field static final TRANSACTION_getAccessPointPreferredChannels:I = 0x3a

.field static final TRANSACTION_getAggressiveHandover:I = 0x35

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x37

.field static final TRANSACTION_getBatchedScanResults:I = 0x2f

.field static final TRANSACTION_getChannelList:I = 0xa

.field static final TRANSACTION_getClientIp:I = 0x42

.field static final TRANSACTION_getConfigFile:I = 0x2a

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x10

.field static final TRANSACTION_getConnectionStatistics:I = 0x39

.field static final TRANSACTION_getDhcpInfo:I = 0x18

.field static final TRANSACTION_getFrequencyBand:I = 0x15

.field static final TRANSACTION_getHotspotClients:I = 0x41

.field static final TRANSACTION_getNetworkAutoConnectable:I = 0x56

.field static final TRANSACTION_getPPPOEInfo:I = 0x4f

.field static final TRANSACTION_getPoorLinkThreshold:I = 0x4a

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xc

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x34

.field static final TRANSACTION_getWifiApConfiguration:I = 0x23

.field static final TRANSACTION_getWifiApEnabledState:I = 0x22

.field static final TRANSACTION_getWifiEnabledState:I = 0x12

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x29

.field static final TRANSACTION_getWifiStatus:I = 0x4d

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x32

.field static final TRANSACTION_hasConnectableAp:I = 0x48

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1d

.field static final TRANSACTION_is5gBandSupported:I = 0x52

.field static final TRANSACTION_isBatchedScanSupported:I = 0x30

.field static final TRANSACTION_isDualBandSupported:I = 0x16

.field static final TRANSACTION_isMulticastEnabled:I = 0x1e

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x19

.field static final TRANSACTION_pingSupplicant:I = 0x9

.field static final TRANSACTION_pollBatchedScan:I = 0x31

.field static final TRANSACTION_reassociate:I = 0xf

.field static final TRANSACTION_reconnect:I = 0xe

.field static final TRANSACTION_releaseMulticastLock:I = 0x20

.field static final TRANSACTION_releaseWifiLock:I = 0x1c

.field static final TRANSACTION_removeNetwork:I = 0x6

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x2d

.field static final TRANSACTION_saveConfiguration:I = 0x17

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x38

.field static final TRANSACTION_setApProbeRequestEnabled:I = 0x45

.field static final TRANSACTION_setAutoJoinScanWhenConnected:I = 0x54

.field static final TRANSACTION_setCountryCode:I = 0x13

.field static final TRANSACTION_setFrequencyBand:I = 0x14

.field static final TRANSACTION_setHotspotOptimization:I = 0x53

.field static final TRANSACTION_setNetworkAutoConnectable:I = 0x55

.field static final TRANSACTION_setPoorLinkProfilingOn:I = 0x4c

.field static final TRANSACTION_setPoorLinkThreshold:I = 0x4b

.field static final TRANSACTION_setPowerSavingMode:I = 0x4e

.field static final TRANSACTION_setTxPower:I = 0x3f

.field static final TRANSACTION_setTxPowerEnabled:I = 0x3e

.field static final TRANSACTION_setWifiApConfiguration:I = 0x24

.field static final TRANSACTION_setWifiApEnabled:I = 0x21

.field static final TRANSACTION_setWifiEnabled:I = 0x11

.field static final TRANSACTION_setWifiEnabledForIPO:I = 0x46

.field static final TRANSACTION_setWoWlanMagicMode:I = 0x51

.field static final TRANSACTION_setWoWlanNormalMode:I = 0x50

.field static final TRANSACTION_startApWps:I = 0x40

.field static final TRANSACTION_startScan:I = 0xb

.field static final TRANSACTION_startWifi:I = 0x25

.field static final TRANSACTION_stopBatchedScan:I = 0x2e

.field static final TRANSACTION_stopWifi:I = 0x26

.field static final TRANSACTION_suspendNotification:I = 0x47

.field static final TRANSACTION_syncGetConnectingNetworkId:I = 0x49

.field static final TRANSACTION_unblockClient:I = 0x44

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 938
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    :goto_0
    return v14

    .line 48
    :sswitch_0
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v14, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v8

    .line 55
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v14, 0x1

    goto :goto_0

    .line 61
    .end local v8    # "_result":I
    :sswitch_2
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v8

    .line 63
    .local v8, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v8, :cond_0

    .line 65
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_1
    const/4 v14, 0x1

    goto :goto_0

    .line 69
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v8    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    .line 77
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v14, 0x1

    goto :goto_0

    .line 83
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    .line 85
    .restart local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/4 v14, 0x1

    goto :goto_0

    .line 91
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    .line 94
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 99
    .local v2, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 100
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 97
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "_result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 106
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v8

    .line 110
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v8, :cond_2

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 111
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .line 116
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_7
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 121
    .local v4, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v8

    .line 122
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v8, :cond_4

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 120
    .end local v4    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 123
    .restart local v4    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    .line 128
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_8
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v8

    .line 132
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v8, :cond_5

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 133
    :cond_5
    const/4 v14, 0x0

    goto :goto_6

    .line 138
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_9
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v8

    .line 140
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v8, :cond_6

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 141
    :cond_6
    const/4 v14, 0x0

    goto :goto_7

    .line 146
    .end local v8    # "_result":Z
    :sswitch_a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v12

    .line 148
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 154
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    .line 157
    sget-object v14, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanSettings;

    .line 163
    .local v2, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    .line 164
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 169
    .local v4, "_arg1":Landroid/os/WorkSource;
    :goto_9
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 160
    .end local v2    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_8

    .line 167
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/WorkSource;
    goto :goto_9

    .line 175
    .end local v2    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :sswitch_c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 179
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 181
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 192
    :sswitch_e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 199
    :sswitch_f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 206
    :sswitch_10
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 208
    .local v8, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v8, :cond_9

    .line 210
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 216
    :goto_a
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 214
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 220
    .end local v8    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_11
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_a

    const/4 v2, 0x1

    .line 223
    .local v2, "_arg0":Z
    :goto_b
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v8

    .line 224
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v8, :cond_b

    const/4 v14, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 222
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 225
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_c

    .line 230
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_12
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v8

    .line 232
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 238
    .end local v8    # "_result":I
    :sswitch_13
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_c

    const/4 v4, 0x1

    .line 243
    .local v4, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 242
    .end local v4    # "_arg1":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 249
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_d

    const/4 v4, 0x1

    .line 254
    .restart local v4    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 253
    .end local v4    # "_arg1":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 260
    .end local v2    # "_arg0":I
    :sswitch_15
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v8

    .line 262
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 268
    .end local v8    # "_result":I
    :sswitch_16
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v8

    .line 270
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v8, :cond_e

    const/4 v14, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 271
    :cond_e
    const/4 v14, 0x0

    goto :goto_f

    .line 276
    .end local v8    # "_result":Z
    :sswitch_17
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v8

    .line 278
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v8, :cond_f

    const/4 v14, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 279
    :cond_f
    const/4 v14, 0x0

    goto :goto_10

    .line 284
    .end local v8    # "_result":Z
    :sswitch_18
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v8

    .line 286
    .local v8, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v8, :cond_10

    .line 288
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    :goto_11
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 292
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 298
    .end local v8    # "_result":Landroid/net/DhcpInfo;
    :sswitch_19
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v8

    .line 300
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v8, :cond_11

    const/4 v14, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 301
    :cond_11
    const/4 v14, 0x0

    goto :goto_12

    .line 306
    .end local v8    # "_result":Z
    :sswitch_1a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 310
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_12

    .line 315
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 320
    .local v6, "_arg3":Landroid/os/WorkSource;
    :goto_13
    invoke-virtual {p0, v2, v4, v3, v6}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v8

    .line 321
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v8, :cond_13

    const/4 v14, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 318
    .end local v6    # "_arg3":Landroid/os/WorkSource;
    .end local v8    # "_result":Z
    :cond_12
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/WorkSource;
    goto :goto_13

    .line 322
    .restart local v8    # "_result":Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_14

    .line 327
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":Landroid/os/WorkSource;
    .end local v8    # "_result":Z
    :sswitch_1b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 331
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_14

    .line 332
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 337
    .local v4, "_arg1":Landroid/os/WorkSource;
    :goto_15
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 335
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/WorkSource;
    goto :goto_15

    .line 343
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 346
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v8

    .line 347
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v8, :cond_15

    const/4 v14, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 348
    :cond_15
    const/4 v14, 0x0

    goto :goto_16

    .line 353
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_1d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 360
    :sswitch_1e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v8

    .line 362
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    if-eqz v8, :cond_16

    const/4 v14, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 363
    :cond_16
    const/4 v14, 0x0

    goto :goto_17

    .line 368
    .end local v8    # "_result":Z
    :sswitch_1f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 372
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 379
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 386
    :sswitch_21
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_17

    .line 389
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 395
    .local v2, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_18

    const/4 v4, 0x1

    .line 396
    .local v4, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 392
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_arg1":Z
    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_18

    .line 395
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 402
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_22
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v8

    .line 404
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 410
    .end local v8    # "_result":I
    :sswitch_23
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 412
    .local v8, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v8, :cond_19

    .line 414
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 420
    :goto_1a
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 418
    :cond_19
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 424
    .end local v8    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_24
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1a

    .line 427
    sget-object v14, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 432
    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1b
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 430
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .line 438
    .end local v2    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 445
    :sswitch_26
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 452
    :sswitch_27
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 461
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 468
    :sswitch_29
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v8

    .line 470
    .local v8, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v8, :cond_1b

    .line 472
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 478
    :goto_1c
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 476
    :cond_1b
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 482
    .end local v8    # "_result":Landroid/os/Messenger;
    :sswitch_2a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 490
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 494
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v4, 0x1

    .line 495
    .restart local v4    # "_arg1":Z
    :goto_1d
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 494
    .end local v4    # "_arg1":Z
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 501
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v4, 0x1

    .line 506
    .restart local v4    # "_arg1":Z
    :goto_1e
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 505
    .end local v4    # "_arg1":Z
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 512
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1e

    .line 515
    sget-object v14, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanSettings;

    .line 521
    .local v2, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 523
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1f

    .line 524
    sget-object v14, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 529
    .local v3, "_arg2":Landroid/os/WorkSource;
    :goto_20
    invoke-virtual {p0, v2, v4, v3}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v8

    .line 530
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v8, :cond_20

    const/4 v14, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 518
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :cond_1e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_1f

    .line 527
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    :cond_1f
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/WorkSource;
    goto :goto_20

    .line 531
    .restart local v8    # "_result":Z
    :cond_20
    const/4 v14, 0x0

    goto :goto_21

    .line 536
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v3    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_result":Z
    :sswitch_2e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_21

    .line 539
    sget-object v14, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanSettings;

    .line 544
    .restart local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_22
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 542
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_22

    .line 550
    .end local v2    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_2f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 554
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 556
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 560
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_30
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v8

    .line 562
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v8, :cond_22

    const/4 v14, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 563
    :cond_22
    const/4 v14, 0x0

    goto :goto_23

    .line 568
    .end local v8    # "_result":Z
    :sswitch_31
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 575
    :sswitch_32
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 578
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 585
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 588
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 594
    .end local v2    # "_arg0":I
    :sswitch_34
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v8

    .line 596
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 602
    .end local v8    # "_result":I
    :sswitch_35
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v8

    .line 604
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 610
    .end local v8    # "_result":I
    :sswitch_36
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 613
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 619
    .end local v2    # "_arg0":I
    :sswitch_37
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v8

    .line 621
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 627
    .end local v8    # "_result":I
    :sswitch_38
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 630
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 636
    .end local v2    # "_arg0":I
    :sswitch_39
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v8

    .line 638
    .local v8, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v8, :cond_23

    .line 640
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 646
    :goto_24
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 644
    :cond_23
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 650
    .end local v8    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAccessPointPreferredChannels()[Ljava/lang/String;

    move-result-object v8

    .line 652
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 654
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 658
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_3b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOn()Z

    move-result v8

    .line 660
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v8, :cond_24

    const/4 v14, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 661
    :cond_24
    const/4 v14, 0x0

    goto :goto_25

    .line 666
    .end local v8    # "_result":Z
    :sswitch_3c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOff()Z

    move-result v8

    .line 668
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v8, :cond_25

    const/4 v14, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 669
    :cond_25
    const/4 v14, 0x0

    goto :goto_26

    .line 674
    .end local v8    # "_result":Z
    :sswitch_3d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 677
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestRate(I)Z

    move-result v8

    .line 678
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v8, :cond_26

    const/4 v14, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 679
    :cond_26
    const/4 v14, 0x0

    goto :goto_27

    .line 684
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_3e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_27

    const/4 v2, 0x1

    .line 687
    .local v2, "_arg0":Z
    :goto_28
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setTxPowerEnabled(Z)Z

    move-result v8

    .line 688
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v8, :cond_28

    const/4 v14, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 686
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_27
    const/4 v2, 0x0

    goto :goto_28

    .line 689
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_28
    const/4 v14, 0x0

    goto :goto_29

    .line 694
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_3f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 697
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setTxPower(I)Z

    move-result v8

    .line 698
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    if-eqz v8, :cond_29

    const/4 v14, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 699
    :cond_29
    const/4 v14, 0x0

    goto :goto_2a

    .line 704
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_40
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2a

    .line 707
    sget-object v14, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WpsInfo;

    .line 712
    .local v2, "_arg0":Landroid/net/wifi/WpsInfo;
    :goto_2b
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->startApWps(Landroid/net/wifi/WpsInfo;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 710
    .end local v2    # "_arg0":Landroid/net/wifi/WpsInfo;
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/WpsInfo;
    goto :goto_2b

    .line 718
    .end local v2    # "_arg0":Landroid/net/wifi/WpsInfo;
    :sswitch_41
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotClients()Ljava/util/List;

    move-result-object v10

    .line 720
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 722
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 726
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    :sswitch_42
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 736
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2b

    .line 739
    sget-object v14, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 744
    .local v2, "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_2c
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v8

    .line 745
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    if-eqz v8, :cond_2c

    const/4 v14, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 742
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_2c

    .line 746
    .restart local v8    # "_result":Z
    :cond_2c
    const/4 v14, 0x0

    goto :goto_2d

    .line 751
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :sswitch_44
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2d

    .line 754
    sget-object v14, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/HotspotClient;

    .line 759
    .restart local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_2e
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v8

    .line 760
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v8, :cond_2e

    const/4 v14, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 757
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_2e

    .line 761
    .restart local v8    # "_result":Z
    :cond_2e
    const/4 v14, 0x0

    goto :goto_2f

    .line 766
    .end local v2    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v8    # "_result":Z
    :sswitch_45
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2f

    const/4 v2, 0x1

    .line 769
    .local v2, "_arg0":Z
    :goto_30
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setApProbeRequestEnabled(Z)Z

    move-result v8

    .line 770
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    if-eqz v8, :cond_30

    const/4 v14, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 768
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2f
    const/4 v2, 0x0

    goto :goto_30

    .line 771
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_30
    const/4 v14, 0x0

    goto :goto_31

    .line 776
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_46
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_31

    const/4 v2, 0x1

    .line 779
    .restart local v2    # "_arg0":Z
    :goto_32
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledForIPO(Z)Z

    move-result v8

    .line 780
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    if-eqz v8, :cond_32

    const/4 v14, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 778
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_31
    const/4 v2, 0x0

    goto :goto_32

    .line 781
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_32
    const/4 v14, 0x0

    goto :goto_33

    .line 786
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_47
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 789
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->suspendNotification(I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 795
    .end local v2    # "_arg0":I
    :sswitch_48
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->hasConnectableAp()Z

    move-result v8

    .line 797
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    if-eqz v8, :cond_33

    const/4 v14, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 798
    :cond_33
    const/4 v14, 0x0

    goto :goto_34

    .line 803
    .end local v8    # "_result":Z
    :sswitch_49
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->syncGetConnectingNetworkId()I

    move-result v8

    .line 805
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 811
    .end local v8    # "_result":I
    :sswitch_4a
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_34

    const/4 v2, 0x1

    .line 814
    .local v2, "_arg0":Z
    :goto_35
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getPoorLinkThreshold(Z)D

    move-result-wide v8

    .line 815
    .local v8, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v9}, Landroid/os/Parcel;->writeDouble(D)V

    .line 817
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 813
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":D
    :cond_34
    const/4 v2, 0x0

    goto :goto_35

    .line 821
    :sswitch_4b
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 826
    .local v4, "_arg1":D
    invoke-virtual {p0, v2, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkThreshold(Ljava/lang/String;D)Z

    move-result v8

    .line 827
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    if-eqz v8, :cond_35

    const/4 v14, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 828
    :cond_35
    const/4 v14, 0x0

    goto :goto_36

    .line 833
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":D
    .end local v8    # "_result":Z
    :sswitch_4c
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_36

    const/4 v2, 0x1

    .line 836
    .local v2, "_arg0":Z
    :goto_37
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkProfilingOn(Z)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 835
    .end local v2    # "_arg0":Z
    :cond_36
    const/4 v2, 0x0

    goto :goto_37

    .line 842
    :sswitch_4d
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStatus()Ljava/lang/String;

    move-result-object v8

    .line 844
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 850
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_37

    const/4 v2, 0x1

    .line 853
    .restart local v2    # "_arg0":Z
    :goto_38
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPowerSavingMode(Z)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 852
    .end local v2    # "_arg0":Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_38

    .line 859
    :sswitch_4f
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v8

    .line 861
    .local v8, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v8, :cond_38

    .line 863
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v14}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 869
    :goto_39
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 867
    :cond_38
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 873
    .end local v8    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_50
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanNormalMode()Z

    move-result v8

    .line 875
    .local v8, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    if-eqz v8, :cond_39

    const/4 v14, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 876
    :cond_39
    const/4 v14, 0x0

    goto :goto_3a

    .line 881
    .end local v8    # "_result":Z
    :sswitch_51
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanMagicMode()Z

    move-result v8

    .line 883
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    if-eqz v8, :cond_3a

    const/4 v14, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 884
    :cond_3a
    const/4 v14, 0x0

    goto :goto_3b

    .line 889
    .end local v8    # "_result":Z
    :sswitch_52
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->is5gBandSupported()Z

    move-result v8

    .line 891
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    if-eqz v8, :cond_3b

    const/4 v14, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 892
    :cond_3b
    const/4 v14, 0x0

    goto :goto_3c

    .line 897
    .end local v8    # "_result":Z
    :sswitch_53
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3c

    const/4 v2, 0x1

    .line 900
    .restart local v2    # "_arg0":Z
    :goto_3d
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotOptimization(Z)Z

    move-result v8

    .line 901
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    if-eqz v8, :cond_3d

    const/4 v14, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 899
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_3c
    const/4 v2, 0x0

    goto :goto_3d

    .line 902
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_3d
    const/4 v14, 0x0

    goto :goto_3e

    .line 907
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_54
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3e

    const/4 v2, 0x1

    .line 910
    .restart local v2    # "_arg0":Z
    :goto_3f
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->setAutoJoinScanWhenConnected(Z)Z

    move-result v8

    .line 911
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v8, :cond_3f

    const/4 v14, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 909
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_3f

    .line 912
    .restart local v2    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_3f
    const/4 v14, 0x0

    goto :goto_40

    .line 917
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_55
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_40

    const/4 v4, 0x1

    .line 922
    .local v4, "_arg1":Z
    :goto_41
    invoke-virtual {p0, v2, v4}, Landroid/net/wifi/IWifiManager$Stub;->setNetworkAutoConnectable(IZ)Z

    move-result v8

    .line 923
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    if-eqz v8, :cond_41

    const/4 v14, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 921
    .end local v4    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_40
    const/4 v4, 0x0

    goto :goto_41

    .line 924
    .restart local v4    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_41
    const/4 v14, 0x0

    goto :goto_42

    .line 929
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_56
    const-string v14, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 932
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkAutoConnectable(I)Z

    move-result v8

    .line 933
    .restart local v8    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    if-eqz v8, :cond_42

    const/4 v14, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 934
    :cond_42
    const/4 v14, 0x0

    goto :goto_43

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
