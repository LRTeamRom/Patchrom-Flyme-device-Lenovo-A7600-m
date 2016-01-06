.class public final Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;
    }
.end annotation


# static fields
.field private static final CHANGE_ALL:I = -0x1

.field private static final CHANGE_ROUTES:I = 0x2

.field private static final CHANGE_SETTINGS:I = 0x1

.field private static final CHANGE_WIFI_DISPLAY_STATUS:I = 0x4

.field private static final DEBUG:Z = false

.field private static final MENU_ID_ENABLE_WIFI_DISPLAY:I = 0x1

.field private static final ORDER_AVAILABLE:I = 0x3

.field private static final ORDER_CERTIFICATION:I = 0x1

.field private static final ORDER_CONNECTED:I = 0x2

.field private static final ORDER_UNAVAILABLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiDisplaySettings"


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAutoGO:Z

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsTablet:Z

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 726
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$13;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 735
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$14;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 747
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 757
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$16;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 764
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return v0
.end method

.method static synthetic access$1002(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$602(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$702(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .prologue
    .line 94
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 421
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v9, :cond_1

    .line 422
    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    .line 423
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v10, 0x7f0a06c9

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 424
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 428
    :goto_0
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 432
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 433
    .local v6, "p":Landroid/preference/Preference;
    const v9, 0x7f0a06ca

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 434
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 438
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 476
    .end local v6    # "p":Landroid/preference/Preference;
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 484
    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0a06cb

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 485
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 489
    new-instance v0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$3;

    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 501
    .restart local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    const v9, 0x7f0a06cc

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 502
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 506
    new-instance v3, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$4;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 519
    .local v3, "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 521
    const/4 v9, 0x4

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Default"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "PBC"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "KEYPAD"

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-string v10, "DISPLAY"

    aput-object v10, v7, v9

    .line 522
    .local v7, "wpsEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "2"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "1"

    aput-object v10, v8, v9

    .line 527
    .local v8, "wpsValues":[Ljava/lang/String;
    const v9, 0x7f0a06cf

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 528
    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 529
    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 530
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 531
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 535
    new-instance v3, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$5;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 547
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v1, v9

    .line 548
    .local v1, "lcEntries":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v2, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v2, v9

    .line 549
    .local v2, "lcValues":[Ljava/lang/String;
    const v9, 0x7f0a06d0

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 550
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 551
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 553
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 557
    new-instance v3, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$6;

    .end local v3    # "lp":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$6;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 569
    .restart local v3    # "lp":Landroid/preference/ListPreference;
    const/4 v9, 0x5

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Auto"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v4, v9

    .line 570
    .local v4, "ocEntries":[Ljava/lang/String;
    const/4 v9, 0x5

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v5, v9

    const/4 v9, 0x1

    const-string v10, "1"

    aput-object v10, v5, v9

    const/4 v9, 0x2

    const-string v10, "6"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string v10, "11"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string v10, "36"

    aput-object v10, v5, v9

    .line 571
    .local v5, "ocValues":[Ljava/lang/String;
    const v9, 0x7f0a06d1

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 572
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 574
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 575
    const-string v9, "%1$s"

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 577
    return-void

    .line 426
    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "lcEntries":[Ljava/lang/String;
    .end local v2    # "lcValues":[Ljava/lang/String;
    .end local v3    # "lp":Landroid/preference/ListPreference;
    .end local v4    # "ocEntries":[Ljava/lang/String;
    .end local v5    # "ocValues":[Ljava/lang/String;
    .end local v7    # "wpsEntries":[Ljava/lang/String;
    .end local v8    # "wpsValues":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 402
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 403
    new-instance v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    .line 405
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 411
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 412
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-object v1

    .line 411
    .restart local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .restart local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 675
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 678
    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2
    .param p1, "changes"    # I

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 313
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    :cond_0
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 318
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 621
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$9;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 636
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$10;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 656
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 681
    const-string v5, "WifiDisplaySettings"

    const-string v6, "showWifiDisplayOptionsDialog"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 683
    const-string v5, "WifiDisplaySettings"

    const-string v6, "showWifiDisplayOptionsDialog mWifiDisplayOptionsDialog == null"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040110

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 685
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e010e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 686
    .local v3, "nameEditText":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 688
    new-instance v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$11;

    invoke-direct {v1, p0, v3, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$11;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 699
    .local v1, "done":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$12;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 707
    .local v2, "forget":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a06c5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a06c7

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a06c6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 713
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    .line 714
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 716
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "done":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "forget":Landroid/content/DialogInterface$OnClickListener;
    .end local v3    # "nameEditText":Landroid/widget/EditText;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$7;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 596
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$8;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 615
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    .line 661
    .local v0, "state":I
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current route status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method

.method private unscheduleUpdate()V
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 323
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 14
    .param p1, "changes"    # I

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 328
    const/4 v4, 0x0

    .line 331
    .local v4, "invalidateOptions":Z
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_display_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_0
    iput-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 334
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_display_certification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    :goto_1
    iput-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 336
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_wps_config"

    invoke-static {v9, v10, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 340
    const/4 v4, 0x1

    .line 344
    :cond_0
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_1

    .line 345
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 348
    const/4 v4, 0x1

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 353
    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 356
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v9}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v8

    .line 357
    .local v8, "routeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_5

    .line 358
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v9, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    .line 359
    .local v7, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v7, v13}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 360
    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v8    # "routeCount":I
    :cond_3
    move v9, v11

    .line 332
    goto :goto_0

    :cond_4
    move v10, v11

    .line 334
    goto :goto_1

    .line 365
    .restart local v2    # "i":I
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v8    # "routeCount":I
    :cond_5
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 368
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/display/WifiDisplay;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v5, :cond_7

    aget-object v1, v0, v3

    .line 369
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 371
    new-instance v9, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 368
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 377
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_7
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v9, :cond_8

    .line 378
    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    .line 383
    .end local v0    # "arr$":[Landroid/hardware/display/WifiDisplay;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_8
    if-eqz v4, :cond_9

    .line 384
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 388
    :cond_9
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_display_on"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_a

    .line 389
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x7f0a06bf

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 396
    :goto_4
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 398
    return-void

    .line 391
    :cond_a
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v10, 0x7f0a02c9

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 192
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 200
    .local v1, "padding":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 201
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    .line 205
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const-string v2, "WifiDisplaySettings"

    const-string v3, "Wfd is unavailable, finish the activity"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 209
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 152
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "context":Landroid/content/Context;
    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 164
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 165
    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 166
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 168
    const v1, 0x7f050060

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 169
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 171
    const-string v1, "tablet"

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 290
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 720
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOptionsDialog:Landroid/app/AlertDialog;

    .line 724
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 296
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 297
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 298
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 296
    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/16 v4, 0x10

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 213
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onStart()V

    .line 215
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 223
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 231
    iput-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 233
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 234
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_certification_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_wps_config"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v3, v4, v5, v9}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 248
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->update(I)V

    .line 249
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onStop()V

    .line 254
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 256
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 257
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 263
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 264
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v4, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 266
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 270
    return-void
.end method
