.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_TIME:J = 0x2710L

.field private static final DEFAULT_WRITE_CATEGORY_KEY:Ljava/lang/String; = "usb_select"

.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final ENABLE_USBTETHER:Ljava/lang/String; = "usb_tether_settings"

.field private static final HELP_CATEGORY_KEY:Ljava/lang/String; = "usb_help"

.field private static final INVALID:I = -0x1

.field private static final KEY_AUTOPOP:Ljava/lang/String; = "usb_auto_popup"

.field private static final KEY_BICR:Ljava/lang/String; = "usb_bicr"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USBTETHER_CATEGORY:Ljava/lang/String; = "key_usb_tether"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2

.field private static final USB_TETHERING:I = 0x1

.field static final localLOGV:Z


# instance fields
.field private final KEY_ADB:Ljava/lang/String;

.field private final KEY_ADB_GROUP:Ljava/lang/String;

.field private bIsMassStorageUsed:Z

.field private mAdbCategory:Landroid/preference/PreferenceCategory;

.field private mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mAutoCloseTimer:Ljava/util/Timer;

.field private mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

.field private mChargeExist:Z

.field private mCheckBoxAdded:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentToggles:Ljava/lang/String;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDestroyed:Z

.field private mEnablePop:Landroid/widget/CheckBox;

.field private mHelpCategory:Landroid/preference/PreferenceCategory;

.field private mHelpPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPlugType:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSettingUMS:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private usbSetButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    .line 97
    const-string v0, "key_enable_adb"

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->KEY_ADB_GROUP:Ljava/lang/String;

    .line 98
    const-string v0, "adb"

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->KEY_ADB:Ljava/lang/String;

    .line 103
    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 104
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 107
    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAutoCloseTimer:Ljava/util/Timer;

    .line 112
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 113
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 128
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 129
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    .line 133
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    .line 135
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    .line 137
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChoice:I

    .line 148
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 149
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    .line 150
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPlugType:I

    .line 152
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 162
    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 167
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    .line 168
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mSettingUMS:Z

    .line 174
    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 176
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 240
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mRunnable:Ljava/lang/Runnable;

    .line 891
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->usbSetButtonListener:Landroid/view/View$OnClickListener;

    .line 1271
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$10;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$10;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->setUmsButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mSettingUMS:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mSettingUMS:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchDisplayAsync(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkClicked:Z

    return p1
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->dismissDialog()V

    return-void
.end method

.method static synthetic access$3300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->showAdbDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelAutoCloseTimer()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAutoCloseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAutoCloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1023
    :cond_0
    return-void
.end method

.method private closeActivity()V
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1017
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 370
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 371
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 373
    :cond_0
    const v7, 0x7f050057

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 374
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 376
    const-string v7, "usb_bicr"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    .line 377
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v7, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 379
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->initAdbCategory()V

    .line 380
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    if-eqz v7, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 382
    .local v4, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v7, v8}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    .line 390
    .end local v4    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->initCheckBoxView()V

    .line 392
    const-string v7, "key_usb_tether"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 393
    .local v6, "usbTetherCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 394
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    const-string v7, "usb_select"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 397
    const-string v7, "usb_help"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mHelpCategory:Landroid/preference/PreferenceCategory;

    .line 398
    new-instance v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mHelpPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;

    .line 399
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mHelpPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;

    const v10, 0x7f0a034c

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;->setSummary(I)V

    .line 400
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mHelpCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mHelpPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/HelperPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 401
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mHelpCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    new-instance v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    .line 405
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const-string v10, "usb_mtp"

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setKey(Ljava/lang/String;)V

    .line 406
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const v10, 0x7f0a080f

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setTitle(I)V

    .line 407
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const v10, 0x7f0a0349

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setSummary(I)V

    .line 408
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v9, v11, v11}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 412
    new-instance v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    .line 413
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const-string v10, "usb_ptp"

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setKey(Ljava/lang/String;)V

    .line 414
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const v10, 0x7f0a0810

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setTitle(I)V

    .line 415
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const v10, 0x7f0a034a

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setSummary(I)V

    .line 416
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v9, v11, v11}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 420
    new-instance v7, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    .line 421
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const-string v10, "usb_charge"

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setKey(Ljava/lang/String;)V

    .line 422
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const v10, 0x7f0a03fc

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setTitle(I)V

    .line 423
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    const v10, 0x7f0a03fd

    invoke-virtual {v7, v10}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setSummary(I)V

    .line 424
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v9, v11, v11}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceCategory;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 448
    iget-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    .line 456
    const-string v7, "ro.sys.usb.storage.type"

    const-string v10, "mtp"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "config":Ljava/lang/String;
    const-string v7, "ro.sys.usb.charging.only"

    const-string v10, "no"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "chargeConfig":Ljava/lang/String;
    const-string v7, "yes"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    iput-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 471
    const-string v7, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.sys.usb.charging.only: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", mChargeExist= "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v7, "ro.sys.usb.bicr"

    const-string v8, "no"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "bicrConfig":Ljava/lang/String;
    const-string v7, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.sys.usb.bicr: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v7, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 478
    .local v1, "cdromCategory":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    iput-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 484
    return-object v5

    .line 385
    .end local v0    # "bicrConfig":Ljava/lang/String;
    .end local v1    # "cdromCategory":Landroid/preference/PreferenceCategory;
    .end local v2    # "chargeConfig":Ljava/lang/String;
    .end local v3    # "config":Ljava/lang/String;
    .end local v6    # "usbTetherCategory":Landroid/preference/PreferenceCategory;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :cond_2
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    const-string v7, "adb_enabled"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    move v7, v9

    goto :goto_2

    .end local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "chargeConfig":Ljava/lang/String;
    .restart local v3    # "config":Ljava/lang/String;
    .restart local v6    # "usbTetherCategory":Landroid/preference/PreferenceCategory;
    :cond_4
    move v8, v9

    .line 470
    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 991
    :cond_0
    return-void
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 346
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "functions":Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 349
    .local v0, "commandIndex":I
    if-lez v0, :cond_0

    .line 350
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 352
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private hasExternalStorage()Z
    .locals 7

    .prologue
    .line 1242
    const-string v4, "persist.sys.emmc"

    const-string v5, "/storage/sdcard0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "emmcPath":Ljava/lang/String;
    const-string v1, "/storage/sdcard1"

    .line 1244
    .local v1, "physicalSdPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1245
    .local v3, "storageExists":Z
    const-string v4, "/storage/sdcard1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1246
    const-string v1, "/storage/sdcard0"

    .line 1249
    :cond_0
    const-string v2, "unknown"

    .line 1251
    .local v2, "state":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1255
    :goto_0
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External Storage path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "External Storage state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    if-eqz v2, :cond_1

    .line 1259
    const-string v4, "removed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "unknown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "bad_removal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1262
    const/4 v3, 0x1

    .line 1265
    :cond_1
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " external storage Exists="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return v3

    .line 1252
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private initAdbCategory()V
    .locals 2

    .prologue
    .line 1305
    const-string v0, "key_enable_adb"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbCategory:Landroid/preference/PreferenceCategory;

    .line 1306
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    .line 1307
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    const-string v1, "adb"

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setKey(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setTitle(I)V

    .line 1309
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setSummary(I)V

    .line 1310
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1312
    return-void
.end method

.method private initCheckBoxView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 519
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    if-nez v3, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 521
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040052

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 522
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 523
    const v3, 0x7f0e0130

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    .line 524
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    .line 526
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 528
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto-pop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "usb_auto_popup"

    invoke-static {v0, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    const-string v3, "usb_auto_popup"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    new-instance v4, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$4;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 560
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    move v3, v5

    .line 529
    goto :goto_0
.end method

.method private isMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 359
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 360
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 361
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const/4 v5, 0x1

    .line 365
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 360
    .restart local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isStableState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "volumeState"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "stable":Z
    if-eqz p1, :cond_0

    .line 221
    const-string v1, "checking"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const/4 v0, 0x0

    .line 227
    :cond_0
    :goto_0
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStableState state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v0

    .line 224
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUmsButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeState"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->isStableState(Ljava/lang/String;)Z

    move-result v0

    .line 232
    .local v0, "stable":Z
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    .line 239
    :cond_0
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1148
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1149
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1151
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0a0864

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1155
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showAdbDialog()V
    .locals 3

    .prologue
    .line 1295
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a09c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a09c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 1301
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1302
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 1119
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChoice:I

    .line 1120
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p0, v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1127
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 1145
    :goto_0
    return-void

    .line 1139
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private switchDisplay(Z)V
    .locals 2
    .param p1, "usbStorageInUse"    # Z

    .prologue
    .line 932
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$8;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void
.end method

.method private switchDisplayAsync(Z)V
    .locals 4
    .param p1, "usbStorageInUse"    # Z

    .prologue
    .line 941
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync - usbStorageInUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 943
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "mass_storage"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 945
    :cond_0
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync , return !! mUms =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",activity= :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v1, :cond_1

    .line 947
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync - mUsbManager.getDefaultFunction()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_1
    :goto_0
    return-void

    .line 951
    :cond_2
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync - usbStorageInUse 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 918
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 1204
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1206
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1209
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1215
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbConfigured:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbHwDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbUnTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tetherfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_1

    .line 1225
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    if-eqz v0, :cond_1

    .line 1226
    :cond_0
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    .line 1236
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1237
    return-void

    .line 1230
    :cond_2
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_1

    .line 1231
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_1

    .line 1232
    :cond_3
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 665
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbSettings updateToggles function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setEnabled(Z)V

    .line 672
    :cond_0
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 674
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 675
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 684
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 771
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_a

    .line 773
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 775
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 780
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    .line 782
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 785
    :cond_2
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setEnabled(Z)V

    .line 808
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 809
    return-void

    .line 687
    :cond_4
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 689
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 690
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 699
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 702
    :cond_5
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 703
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 704
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 705
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 710
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    .line 712
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 717
    :cond_6
    sget-object v0, Lcom/lenovo/settings/storage/StorageUtils;->USB_CHARGING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 718
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 719
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 720
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 729
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_7

    .line 730
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 733
    :cond_7
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 738
    :cond_8
    sget-object v0, Lcom/lenovo/settings/storage/StorageUtils;->USB_FUNCTION_BICR_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 739
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 740
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 749
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 750
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 755
    :cond_9
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 756
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 757
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 766
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 789
    :cond_a
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 800
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_b

    .line 801
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;->setEnabled(Z)V

    .line 803
    :cond_b
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 1029
    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1031
    .local v3, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    .line 1032
    .local v11, "usbAvailable":Z
    :goto_0
    const/4 v12, 0x0

    .line 1034
    .local v12, "usbError":I
    const/4 v14, 0x0

    .line 1035
    .local v14, "usbTethered":Z
    const/4 v13, 0x0

    .line 1036
    .local v13, "usbErrored":Z
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v1, v5

    .line 1037
    .local v9, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    .line 1038
    .local v8, "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1039
    const/4 v13, 0x1

    .line 1037
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1031
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "regex":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "usbAvailable":Z
    .end local v12    # "usbError":I
    .end local v13    # "usbErrored":Z
    .end local v14    # "usbTethered":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1036
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v11    # "usbAvailable":Z
    .restart local v12    # "usbError":I
    .restart local v13    # "usbErrored":Z
    .restart local v14    # "usbTethered":Z
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 1044
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    const-string v15, "UsbSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateUsbState - usbTethered : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " usbErrored: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " usbAvailable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    if-eqz v14, :cond_4

    .line 1047
    const-string v15, "UsbSettings"

    const-string v16, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1051
    const v15, 0x7f0a0861

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1054
    .local v10, "summary":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 1055
    const-string v15, "UsbSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x7f0a03c8

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0a03c9

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0a090a

    new-instance v17, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$9;

    invoke-direct/range {v17 .. v18}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$9;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1116
    .end local v10    # "summary":Ljava/lang/String;
    :goto_3
    return-void

    .line 1071
    :cond_4
    if-eqz v11, :cond_6

    .line 1075
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    if-eqz v15, :cond_5

    .line 1076
    const-string v15, "UsbSettings"

    const-string v16, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1081
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 1083
    :cond_5
    const-string v15, "UsbSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mUsbTethering: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " mUsbTetherCheckEnable: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1086
    :cond_6
    if-eqz v13, :cond_7

    .line 1087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0a0864

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1091
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    goto/16 :goto_3

    .line 1092
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    if-eqz v15, :cond_8

    .line 1093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0a0862

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1097
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    goto/16 :goto_3

    .line 1099
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    if-nez v15, :cond_a

    .line 1100
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0a0863

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1103
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 1114
    :goto_4
    const-string v15, "UsbSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1106
    :cond_a
    const-string v15, "UsbSettings"

    const-string v16, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v15 .. v16}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0a0860

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1111
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    goto :goto_4
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1130
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 994
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 995
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 996
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1004
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 490
    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 492
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 493
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 494
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 495
    const-string v2, "UsbSettings"

    const-string v3, "Failed to get StorageManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;

    .line 501
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UsbSettings"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 503
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 506
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 508
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 509
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    .line 512
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->hasExternalStorage()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 513
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUmsExist = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUmsExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 654
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 655
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 656
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 659
    :cond_0
    const-string v0, "UsbSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAdbPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/lenovousb/UsbModePreference;->setChecked(Z)V

    .line 1013
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 565
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 567
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    .line 569
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 574
    :cond_0
    const-string v0, "UsbSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 582
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 964
    const-string v0, "UsbSettings"

    const-string v1, "UsbSettings onPreferenceChange "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mBicr:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;

    if-ne p1, v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v1, Lcom/lenovo/settings/storage/StorageUtils;->USB_FUNCTION_BICR_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 972
    sget-object v0, Lcom/lenovo/settings/storage/StorageUtils;->USB_FUNCTION_BICR_STRING:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 983
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 982
    :cond_0
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 817
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    :cond_0
    :goto_0
    return v6

    .line 825
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    .line 830
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    .line 832
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 833
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 834
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    if-nez v3, :cond_0

    .line 835
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 837
    .local v2, "newState":Z
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 838
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 839
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    .line 840
    if-eqz v2, :cond_3

    .line 841
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    .line 845
    :goto_1
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    .line 846
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick - setusbTethering("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mUsbTethering:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTethering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    if-eqz v2, :cond_4

    .line 851
    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->startProvisioningIfNecessary(I)V

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "newState":Z
    :cond_2
    :goto_2
    move-object v0, p2

    .line 859
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 860
    .local v0, "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 862
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 843
    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "newState":Z
    :cond_3
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    goto :goto_1

    .line 853
    :cond_4
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->setUsbTethering(Z)V

    goto :goto_2

    .line 866
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "newState":Z
    :cond_5
    sput-boolean v7, Lcom/lenovo/settings/storage/StorageUtils;->mIsUms:Z

    .line 867
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v3, :cond_7

    .line 868
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mtp"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 870
    const-string v3, "mtp"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 886
    :cond_6
    :goto_3
    iput-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto/16 :goto_0

    .line 871
    :cond_7
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mPtp:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v3, :cond_8

    .line 872
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "ptp"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 874
    const-string v3, "ptp"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_3

    .line 875
    :cond_8
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mCharge:Lcom/flyme/deviceoriginalsettings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v3, :cond_6

    .line 876
    const-string v3, "UsbSettings"

    const-string v4, "click charge"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "charging"

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 878
    const-string v3, "charging"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 586
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 601
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 602
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 603
    .local v4, "usbAvailable":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 608
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v5, "android.hardware.usb.action.USB_ACCESS_AVAILABLE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 618
    :try_start_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_1
    const-string v5, "UsbSettings"

    const-string v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 632
    .local v0, "activity":Landroid/app/Activity;
    const-string v5, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    .line 633
    new-instance v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;)V

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 634
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 637
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 638
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 641
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 642
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 645
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    if-eqz v3, :cond_2

    .line 648
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 651
    :cond_2
    return-void

    .line 602
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "usbAvailable":Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 625
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "usbAvailable":Z
    :catch_0
    move-exception v1

    .line 626
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "UsbSettings"

    const-string v6, "Failed to read UMS enable state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
