.class public Lcom/lenovo/settings/LenovoWirelessSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LenovoWirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final CONNECTED_TO_PROVISIONING_NETWORK_ACTION:Ljava/lang/String; = "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_MANAGE_MOBILE_PLAN:Ljava/lang/String; = "manage_mobile_plan"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_RCSE_SETTINGS:Ljava/lang/String; = "rcse_settings"

.field private static final KEY_SMS_APPLICATION:Ljava/lang/String; = "sms_application"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_USB_SHARING:Ljava/lang/String; = "usb_sharing"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final MANAGE_MOBILE_PLAN_DIALOG_ID:I = 0x1

.field private static final RCSE_SETTINGS_INTENT:Ljava/lang/String; = "com.mediatek.rcse.RCSE_SETTINGS"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final SAVED_MANAGE_MOBILE_PLAN_MSG:Ljava/lang/String; = "mManageMobilePlanMessage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisableMobilePlan:Z

.field private mHotKnotPref:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTetherSettings:Landroid/preference/Preference;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

.field private mWifiDisplay:Landroid/preference/PreferenceScreen;

.field private pluginStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/lenovo/settings/LenovoWirelessSettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/LenovoWirelessSettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/LenovoWirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mDisableMobilePlan:Z

    .line 288
    new-instance v0, Lcom/lenovo/settings/LenovoWirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/LenovoWirelessSettings$2;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 869
    new-instance v0, Lcom/lenovo/settings/LenovoWirelessSettings$5;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/LenovoWirelessSettings$5;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    iput-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/LenovoWirelessSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/settings/LenovoWirelessSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/settings/LenovoWirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/ITelephony;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/settings/LenovoWirelessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/LenovoWirelessSettings;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->updateMobileNetworkEnabled()V

    return-void
.end method

.method private initSmsApplicationSetting()V
    .locals 14

    .prologue
    .line 476
    const-string v11, "initSmsApplicationSetting:"

    invoke-direct {p0, v11}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v10

    .line 481
    .local v10, "smsApplications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    .line 482
    .local v1, "count":I
    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 483
    .local v3, "entries":[Ljava/lang/CharSequence;
    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 484
    .local v5, "entryValues":[Ljava/lang/CharSequence;
    new-array v4, v1, [Landroid/graphics/drawable/Drawable;

    .line 486
    .local v4, "entryImages":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 487
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 488
    .local v6, "i":I
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 489
    .local v9, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v11, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v11, v3, v6

    .line 490
    iget-object v11, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    aput-object v11, v5, v6

    .line 492
    :try_start_0
    iget-object v11, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v4, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_1
    const-string v11, "com.chinamobile.contacts.im"

    aget-object v12, v5, v6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    aget-object v11, v4, v6

    if-eqz v11, :cond_0

    .line 498
    :try_start_1
    aget-object v11, v4, v6

    const/16 v12, 0x90

    const/16 v13, 0x90

    invoke-static {v11, v12, v13}, Lcom/lenovo/settings/LenovoUtils;->zoomDrawableIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v11, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 504
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 493
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v4, v6

    goto :goto_1

    .line 506
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    iget-object v11, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v11, v3}, Lcom/android/settings/SmsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 507
    iget-object v11, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v11, v5}, Lcom/android/settings/SmsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 508
    iget-object v11, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v11, v4}, Lcom/android/settings/SmsListPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    .line 509
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->updateSmsApplicationSetting()V

    .line 510
    return-void

    .line 500
    .restart local v9    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1022
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1024
    .local v1, "installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    const/4 v1, 0x1

    .line 1029
    :goto_0
    return v1

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 567
    invoke-static {p0}, Lcom/lenovo/settings/LenovoUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v1

    .line 575
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSmsSupported()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 534
    const-string v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method private updateMobileNetworkEnabled()V
    .locals 0

    .prologue
    .line 867
    return-void
.end method

.method private updateSmsApplicationSetting()V
    .locals 6

    .prologue
    .line 459
    const-string v4, "updateSmsApplicationSetting:"

    invoke-direct {p0, v4}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 461
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SmsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 465
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 466
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/SmsListPreference;->setValueIndex(I)V

    .line 468
    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    iget-object v5, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    invoke-virtual {v5}, Lcom/android/settings/SmsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/SmsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 465
    .restart local v1    # "i":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1015
    const v0, 0x7f0a0c58

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1002
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1003
    const-string v0, "exit_ecm_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1010
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1011
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 587
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 588
    if-eqz p1, :cond_0

    .line 589
    const-string v27, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 591
    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 592
    const-string v27, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 593
    const-string v27, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 595
    const v27, 0x7f050063

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->addPreferencesFromResource(I)V

    .line 598
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-eqz v27, :cond_11

    const/4 v11, 0x1

    .line 600
    .local v11, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 601
    .local v4, "activity":Landroid/app/Activity;
    new-instance v27, Lcom/android/settings/WiFiSwitchEnabler;

    new-instance v28, Landroid/widget/Switch;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1}, Lcom/android/settings/WiFiSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

    .line 603
    const-string v27, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 604
    .local v16, "nfc":Landroid/preference/CheckBoxPreference;
    const-string v27, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 607
    .local v5, "androidBeam":Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 608
    new-instance v27, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1, v5}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 610
    .local v24, "screen":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_12

    .line 611
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 612
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 619
    :goto_1
    new-instance v27, Lcom/lenovo/settings/LenovoWirelessSettings$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings$4;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 640
    const-string v27, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 655
    :cond_1
    const-string v27, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mWifiDisplay:Landroid/preference/PreferenceScreen;

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    .line 657
    .local v13, "mContext":Landroid/content/Context;
    const-string v27, "display"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 659
    .local v6, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v25

    .line 660
    .local v25, "status":Landroid/hardware/display/WifiDisplayStatus;
    invoke-virtual/range {v25 .. v25}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v27

    if-nez v27, :cond_2

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mWifiDisplay:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 668
    :cond_2
    const-string v27, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 672
    .local v17, "nsd":Landroid/preference/CheckBoxPreference;
    const-string v27, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/settings/SmsListPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SmsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->initSmsApplicationSetting()V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 680
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "airplane_mode_toggleable_radios"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 684
    .local v26, "toggleable":Ljava/lang/String;
    if-nez v11, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x1120052

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    if-eqz v27, :cond_13

    const/4 v12, 0x1

    .line 686
    .local v12, "isWimaxEnabled":Z
    :goto_2
    if-nez v12, :cond_14

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 688
    .local v22, "root":Landroid/preference/PreferenceScreen;
    const-string v27, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 689
    .local v20, "ps":Landroid/preference/Preference;
    if-eqz v20, :cond_3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 697
    .end local v20    # "ps":Landroid/preference/Preference;
    .end local v22    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_3
    const-string v27, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 700
    if-eqz v26, :cond_4

    const-string v27, "wifi"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 701
    :cond_4
    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    const-string v28, "toggle_airplane"

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 703
    :cond_5
    if-eqz v11, :cond_6

    .line 704
    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 705
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    .line 707
    :cond_6
    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 714
    if-eqz v26, :cond_7

    const-string v27, "nfc"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 716
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_16

    .line 722
    :goto_4
    const-string v27, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    const-string v28, "toggle_airplane"

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 728
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_17

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 735
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 747
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mDisableMobilePlan:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 748
    const-string v27, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 760
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f080006

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 762
    .local v10, "isMobilePlanEnabled":Z
    if-nez v10, :cond_a

    .line 763
    const-string v27, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 764
    .local v19, "pref":Landroid/preference/Preference;
    if-eqz v19, :cond_a

    .line 765
    const-string v27, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 768
    .end local v19    # "pref":Landroid/preference/Preference;
    :cond_a
    const-string v27, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 769
    const-string v27, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 772
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->isSmsSupported()Z

    move-result v27

    if-nez v27, :cond_b

    .line 773
    const-string v27, "sms_application"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    .line 778
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v28, "android.hardware.type.television"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 779
    const-string v27, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 783
    :cond_c
    const-string v27, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 784
    .local v15, "mGlobalProxy":Landroid/preference/Preference;
    const-string v27, "device_policy"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    .line 787
    .local v14, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 788
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v27

    if-nez v27, :cond_18

    const/16 v27, 0x1

    :goto_6
    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 792
    const-string v27, "connectivity"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 793
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 805
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x112005b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 810
    .local v9, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v9, :cond_d

    .line 811
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 813
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const-string v27, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 815
    const/4 v9, 0x0

    .line 821
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_7
    if-nez v11, :cond_e

    if-nez v9, :cond_f

    .line 822
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 823
    .restart local v22    # "root":Landroid/preference/PreferenceScreen;
    const-string v27, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 824
    .restart local v20    # "ps":Landroid/preference/Preference;
    if-eqz v20, :cond_f

    .line 825
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 828
    .end local v20    # "ps":Landroid/preference/Preference;
    .end local v22    # "root":Landroid/preference/PreferenceScreen;
    :cond_f
    const-string v27, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->protectByRestrictions(Ljava/lang/String;)V

    .line 831
    new-instance v8, Landroid/content/Intent;

    const-string v27, "com.mediatek.rcse.RCSE_SETTINGS"

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    .line 833
    .local v21, "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v21, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_19

    .line 834
    :cond_10
    const-string v27, "WirelessSettings"

    const-string v28, "com.mediatek.rcse.RCSE_SETTINGS is not installed"

    invoke-static/range {v27 .. v28}, Lcom/lenovo/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 841
    :goto_8
    new-instance v27, Landroid/content/IntentFilter;

    const-string v28, "mediatek.intent.action.USB_DATA_STATE"

    invoke-direct/range {v27 .. v28}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v27, v0

    const-string v28, "android.hardware.usb.action.USB_STATE"

    invoke-virtual/range {v27 .. v28}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 849
    .local v23, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string v28, "wireless_settings"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->addPreferencePluginSortSpecialWireless(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V

    .line 851
    return-void

    .line 598
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isCellBroadcastAppLinkEnabled":Z
    .end local v10    # "isMobilePlanEnabled":Z
    .end local v11    # "isSecondaryUser":Z
    .end local v12    # "isWimaxEnabled":Z
    .end local v13    # "mContext":Landroid/content/Context;
    .end local v14    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v15    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v16    # "nfc":Landroid/preference/CheckBoxPreference;
    .end local v17    # "nsd":Landroid/preference/CheckBoxPreference;
    .end local v21    # "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "rootprs":Landroid/preference/PreferenceScreen;
    .end local v24    # "screen":Landroid/preference/PreferenceScreen;
    .end local v25    # "status":Landroid/hardware/display/WifiDisplayStatus;
    .end local v26    # "toggleable":Ljava/lang/String;
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 616
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v5    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v11    # "isSecondaryUser":Z
    .restart local v16    # "nfc":Landroid/preference/CheckBoxPreference;
    .restart local v24    # "screen":Landroid/preference/PreferenceScreen;
    :cond_12
    new-instance v27, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1, v5}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_1

    .line 684
    .restart local v6    # "displayManager":Landroid/hardware/display/DisplayManager;
    .restart local v13    # "mContext":Landroid/content/Context;
    .restart local v17    # "nsd":Landroid/preference/CheckBoxPreference;
    .restart local v25    # "status":Landroid/hardware/display/WifiDisplayStatus;
    .restart local v26    # "toggleable":Ljava/lang/String;
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 691
    .restart local v12    # "isWimaxEnabled":Z
    :cond_14
    if-eqz v26, :cond_15

    const-string v27, "wimax"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_3

    if-eqz v12, :cond_3

    .line 693
    :cond_15
    const-string v27, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    goto/16 :goto_3

    .line 719
    :cond_16
    const-string v27, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 741
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/LenovoWirelessSettings;->pluginStartPosition:I

    goto/16 :goto_5

    .line 788
    .restart local v10    # "isMobilePlanEnabled":Z
    .restart local v14    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v15    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_18
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 818
    .restart local v9    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v7

    .line 819
    .local v7, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 837
    .end local v7    # "ignored":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v21    # "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_19
    const-string v27, "WirelessSettings"

    const-string v28, "com.mediatek.rcse.RCSE_SETTINGS is installed"

    invoke-static/range {v27 .. v28}, Lcom/lenovo/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v27, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 515
    packed-switch p1, :pswitch_data_0

    .line 530
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 517
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/lenovo/settings/LenovoWirelessSettings$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/LenovoWirelessSettings$3;-><init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 994
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 995
    const-string v0, "WirelessSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public onManageMobilePlanClick()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0a0875

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 412
    const-string v6, "onManageMobilePlanClick:"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 413
    iput-object v10, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 414
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 416
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 417
    .local v2, "ni":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 419
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 421
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "EXTRA_URL"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    iput-object v10, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 452
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onManageMobilePlanClick: message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lenovo/settings/LenovoWirelessSettings;->log(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v8}, Lcom/lenovo/settings/LenovoWirelessSettings;->showDialog(I)V

    .line 456
    :cond_0
    return-void

    .line 428
    .restart local v5    # "url":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "operatorName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 432
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    const v6, 0x7f0a0874

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_2
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 441
    :cond_3
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 445
    .end local v3    # "operatorName":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_5

    .line 447
    const v6, 0x7f0a0876

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 450
    :cond_5
    const v6, 0x7f0a0877

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 955
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 957
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 959
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 961
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 974
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 989
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 538
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mSmsApplicationPreference:Lcom/android/settings/SmsListPreference;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0870

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0367

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 544
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->updateSmsApplicationSetting()V

    .line 547
    :cond_0
    return v8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-virtual {p0, p2}, Lcom/lenovo/settings/LenovoWirelessSettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wimax_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    const-string v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LenovoWirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->onManageMobilePlanClick()V

    .line 405
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mWifiDisplay:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a03df

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0367

    const-class v4, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 899
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 912
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v2, :cond_0

    .line 913
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 917
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v2, :cond_1

    .line 918
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v2}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/settings/WiFiSwitchEnabler;->getRunningState()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "status":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/LenovoWirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 931
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 933
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume(), call state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 942
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 946
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 948
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/lenovo/settings/LenovoWirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 892
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 894
    invoke-direct {p0}, Lcom/lenovo/settings/LenovoWirelessSettings;->initSmsApplicationSetting()V

    .line 895
    return-void
.end method
