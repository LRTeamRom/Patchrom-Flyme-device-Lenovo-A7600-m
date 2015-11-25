.class public abstract Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.ITelephonyEx"

.field static final TRANSACTION_abortEnableDedicateBearer:I = 0x38

.field static final TRANSACTION_broadcastIccUnlockIntent:I = 0x21

.field static final TRANSACTION_btSimapApduRequest:I = 0x1a

.field static final TRANSACTION_btSimapConnectSIM:I = 0x18

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x19

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x1d

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x1c

.field static final TRANSACTION_btSimapResetSIM:I = 0x1b

.field static final TRANSACTION_configSimSwap:I = 0x25

.field static final TRANSACTION_disableDedicateBearer:I = 0x36

.field static final TRANSACTION_enableDedicateBearer:I = 0x37

.field static final TRANSACTION_getAdnStorageInfo:I = 0x2e

.field static final TRANSACTION_getCapSwitchManualList:I = 0x28

.field static final TRANSACTION_getDeactivateCidArray:I = 0x3d

.field static final TRANSACTION_getDefaultBearerProperties:I = 0x3b

.field static final TRANSACTION_getIccCardType:I = 0x6

.field static final TRANSACTION_getImsState:I = 0x2c

.field static final TRANSACTION_getLastDataConnectionFailCause:I = 0x3c

.field static final TRANSACTION_getLine1AlphaTag:I = 0xe

.field static final TRANSACTION_getLinkProperties:I = 0x3e

.field static final TRANSACTION_getLocatedPlmn:I = 0x29

.field static final TRANSACTION_getMvnoMatchType:I = 0x12

.field static final TRANSACTION_getMvnoPattern:I = 0x13

.field static final TRANSACTION_getNetworkHideState:I = 0x2a

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0x16

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0x14

.field static final TRANSACTION_getNetworkOperatorNameUsingSub:I = 0x15

.field static final TRANSACTION_getNetworkOperatorUsingSub:I = 0x17

.field static final TRANSACTION_getPhoneCapability:I = 0x23

.field static final TRANSACTION_getScAddressUsingSubId:I = 0x30

.field static final TRANSACTION_getServiceState:I = 0x2d

.field static final TRANSACTION_getSimCountryIso:I = 0x8

.field static final TRANSACTION_getSimOperator:I = 0xb

.field static final TRANSACTION_getSimOperatorName:I = 0xc

.field static final TRANSACTION_getSimSerialNumber:I = 0xd

.field static final TRANSACTION_getSimState:I = 0xa

.field static final TRANSACTION_getSubscriberId:I = 0x9

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x10

.field static final TRANSACTION_getVoiceMailNumber:I = 0xf

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x11

.field static final TRANSACTION_isAirplanemodeAvailableNow:I = 0x32

.field static final TRANSACTION_isCapSwitchManualEnabled:I = 0x27

.field static final TRANSACTION_isDedicateBearer:I = 0x35

.field static final TRANSACTION_isFdnEnabled:I = 0x5

.field static final TRANSACTION_isPhbReady:I = 0x2f

.field static final TRANSACTION_isRadioOffBySimManagement:I = 0x22

.field static final TRANSACTION_isSimSwapped:I = 0x26

.field static final TRANSACTION_isTestIccCard:I = 0x7

.field static final TRANSACTION_modifyDedicateBearer:I = 0x39

.field static final TRANSACTION_pcscfDiscovery:I = 0x3f

.field static final TRANSACTION_queryNetworkLock:I = 0x1

.field static final TRANSACTION_registerForImsDisableDone:I = 0x33

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0x3

.field static final TRANSACTION_setDefaultBearerConfig:I = 0x3a

.field static final TRANSACTION_setImsEnable:I = 0x2b

.field static final TRANSACTION_setLine1Number:I = 0x4

.field static final TRANSACTION_setPhoneCapability:I = 0x24

.field static final TRANSACTION_setScAddressUsingSubId:I = 0x31

.field static final TRANSACTION_simAkaAuthentication:I = 0x1e

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x1f

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x20

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2

.field static final TRANSACTION_unregisterForImsDisableDone:I = 0x34


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 819
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 49
    :sswitch_0
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 58
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->queryNetworkLock(JI)Landroid/os/Bundle;

    move-result-object v5

    .line 60
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v5, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 76
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(JLjava/lang/String;)I

    move-result v5

    .line 78
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_3
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 88
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v2, v6

    .line 89
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->repollIccStateForNetworkLock(JZ)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg1":Z
    :cond_1
    move v2, v7

    .line 88
    goto :goto_1

    .line 95
    .end local v0    # "_arg0":J
    :sswitch_4
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 99
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLine1Number(JLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 103
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 109
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_5
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 112
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isFdnEnabled(J)Z

    move-result v5

    .line 113
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v5, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Z
    :sswitch_6
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 122
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getIccCardType(J)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v5

    .line 133
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v5, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_8
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 142
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSimCountryIso(J)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 152
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSimState(I)I

    move-result v5

    .line 163
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_b
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 172
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSimOperator(J)Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 182
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 192
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v5

    .line 193
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 202
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLine1AlphaTag(J)Ljava/lang/String;

    move-result-object v5

    .line 203
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 212
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v5

    .line 213
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 222
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getVoiceMailAlphaTag(J)Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getVoiceMessageCountGemini(I)I

    move-result v5

    .line 233
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_12
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 242
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoMatchType(J)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 253
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoPattern(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 274
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameUsingSub(J)Ljava/lang/String;

    move-result-object v5

    .line 275
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 294
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorUsingSub(J)Ljava/lang/String;

    move-result-object v5

    .line 295
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .local v0, "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 306
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v5

    .line 307
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    if-eqz v2, :cond_4

    .line 310
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {v2, p3, v6}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 314
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v5    # "_result":I
    :sswitch_19
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapDisconnectSIM()I

    move-result v5

    .line 322
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v5    # "_result":I
    :sswitch_1a
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_arg1":Ljava/lang/String;
    new-instance v3, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 335
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v5

    .line 336
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    if-eqz v3, :cond_5

    .line 339
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {v3, p3, v6}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 343
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v5    # "_result":I
    :sswitch_1b
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    .restart local v0    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 354
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v5

    .line 355
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    if-eqz v2, :cond_6

    .line 358
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    invoke-virtual {v2, p3, v6}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 362
    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 368
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v5    # "_result":I
    :sswitch_1c
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    .restart local v0    # "_arg0":I
    new-instance v2, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 373
    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v5

    .line 374
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    if-eqz v2, :cond_7

    .line 377
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {v2, p3, v6}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 381
    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v5    # "_result":I
    :sswitch_1d
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOffSIM()I

    move-result v5

    .line 389
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 395
    .end local v5    # "_result":I
    :sswitch_1e
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 403
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 404
    .local v4, "_arg3":[B
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v5

    .line 405
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :sswitch_1f
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 419
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 420
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v5

    .line 421
    .restart local v5    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :sswitch_20
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 435
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 436
    .restart local v4    # "_arg3":[B
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v5

    .line 437
    .restart local v5    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":[B
    :sswitch_21
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 446
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->broadcastIccUnlockIntent(J)Z

    move-result v5

    .line 447
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v5, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 453
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Z
    :sswitch_22
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 456
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isRadioOffBySimManagement(J)Z

    move-result v5

    .line 457
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v5, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Z
    :sswitch_23
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getPhoneCapability(I)I

    move-result v5

    .line 467
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 473
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_24
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 477
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 478
    .local v2, "_arg1":[I
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setPhoneCapability([I[I)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 484
    .end local v0    # "_arg0":[I
    .end local v2    # "_arg1":[I
    :sswitch_25
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v6

    .line 487
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->configSimSwap(Z)Z

    move-result v5

    .line 488
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v5, :cond_a

    move v7, v6

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_b
    move v0, v7

    .line 486
    goto :goto_2

    .line 494
    :sswitch_26
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSimSwapped()Z

    move-result v5

    .line 496
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v5, :cond_c

    move v7, v6

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 502
    .end local v5    # "_result":Z
    :sswitch_27
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapSwitchManualEnabled()Z

    move-result v5

    .line 504
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    if-eqz v5, :cond_d

    move v7, v6

    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 510
    .end local v5    # "_result":Z
    :sswitch_28
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCapSwitchManualList()[Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    .end local v5    # "_result":[Ljava/lang/String;
    :sswitch_29
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 521
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLocatedPlmn(J)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 531
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkHideState(J)I

    move-result v5

    .line 532
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 538
    .end local v0    # "_arg0":J
    .end local v5    # "_result":I
    :sswitch_2b
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 542
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    move v2, v6

    .line 543
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setImsEnable(JZ)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_e
    move v2, v7

    .line 542
    goto :goto_3

    .line 549
    .end local v0    # "_arg0":J
    :sswitch_2c
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 552
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getImsState(J)I

    move-result v5

    .line 553
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 559
    .end local v0    # "_arg0":J
    .end local v5    # "_result":I
    :sswitch_2d
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 562
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getServiceState(J)Landroid/os/Bundle;

    move-result-object v5

    .line 563
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v5, :cond_f

    .line 565
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    invoke-virtual {v5, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 569
    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 575
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Landroid/os/Bundle;
    :sswitch_2e
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 578
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(J)[I

    move-result-object v5

    .line 579
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 585
    .end local v0    # "_arg0":J
    .end local v5    # "_result":[I
    :sswitch_2f
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 588
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isPhbReady(J)Z

    move-result v5

    .line 589
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v5, :cond_10

    move v7, v6

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 595
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Z
    :sswitch_30
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 598
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getScAddressUsingSubId(J)Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":J
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 609
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setScAddressUsingSubId(JLjava/lang/String;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_32
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAirplanemodeAvailableNow()Z

    move-result v5

    .line 618
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v5, :cond_11

    move v7, v6

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 624
    .end local v5    # "_result":Z
    :sswitch_33
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 628
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 630
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 631
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->registerForImsDisableDone(JLandroid/os/IBinder;I)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 637
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    :sswitch_34
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 641
    .restart local v0    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 642
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->unregisterForImsDisableDone(JLandroid/os/IBinder;)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 648
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_35
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isDedicateBearer(I)Z

    move-result v5

    .line 652
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v5, :cond_12

    move v7, v6

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 658
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_36
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 663
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->disableDedicateBearer(Ljava/lang/String;I)I

    move-result v5

    .line 664
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 670
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_37
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    move v2, v6

    .line 676
    .local v2, "_arg1":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_14

    .line 677
    sget-object v7, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/QosStatus;

    .line 683
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    .line 684
    sget-object v7, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/TftStatus;

    .line 689
    .local v4, "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_6
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I

    move-result v5

    .line 690
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v5    # "_result":I
    :cond_13
    move v2, v7

    .line 674
    goto :goto_4

    .line 680
    .restart local v2    # "_arg1":Z
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    goto :goto_5

    .line 687
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    goto :goto_6

    .line 696
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v4    # "_arg3":Lcom/mediatek/internal/telephony/TftStatus;
    :sswitch_38
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 701
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->abortEnableDedicateBearer(Ljava/lang/String;I)I

    move-result v5

    .line 702
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 708
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_39
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    .line 713
    sget-object v7, Lcom/mediatek/internal/telephony/QosStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/QosStatus;

    .line 719
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    .line 720
    sget-object v7, Lcom/mediatek/internal/telephony/TftStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/TftStatus;

    .line 725
    .local v3, "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    :goto_8
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I

    move-result v5

    .line 726
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 716
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    .end local v5    # "_result":I
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    goto :goto_7

    .line 723
    :cond_17
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    goto :goto_8

    .line 732
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v3    # "_arg2":Lcom/mediatek/internal/telephony/TftStatus;
    :sswitch_3a
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_18

    .line 737
    sget-object v7, Lcom/mediatek/internal/telephony/DefaultBearerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    .line 742
    .local v2, "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    :goto_9
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;)I

    move-result v5

    .line 743
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 740
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .end local v5    # "_result":I
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    goto :goto_9

    .line 749
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    :sswitch_3b
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 752
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDefaultBearerProperties(Ljava/lang/String;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v5

    .line 753
    .local v5, "_result":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    if-eqz v5, :cond_19

    .line 755
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    invoke-virtual {v5, p3, v6}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 759
    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 765
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :sswitch_3c
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLastDataConnectionFailCause(Ljava/lang/String;)I

    move-result v5

    .line 769
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 775
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_3d
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 778
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDeactivateCidArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 779
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 785
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":[I
    :sswitch_3e
    const-string v8, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 789
    .local v5, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v5, :cond_1a

    .line 791
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    invoke-virtual {v5, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 795
    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 801
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/LinkProperties;
    :sswitch_3f
    const-string v7, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 805
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 807
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b

    .line 808
    sget-object v7, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 813
    .local v3, "_arg2":Landroid/os/Message;
    :goto_a
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I

    move-result v5

    .line 814
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 811
    .end local v3    # "_arg2":Landroid/os/Message;
    .end local v5    # "_result":I
    :cond_1b
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Message;
    goto :goto_a

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
