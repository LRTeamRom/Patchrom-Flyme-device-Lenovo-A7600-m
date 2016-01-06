.class public Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.super Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final DELAY_MILLIS:I = 0x1f4

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_ENABLE_WIDGETS:Ljava/lang/String; = "keyguard_enable_widgets"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_LOCK_PREF:Ljava/lang/String; = "sim_lock_pref"

.field private static final KEY_SIM_LOCK_PREF_QC_DUAL:Ljava/lang/String; = "sim_lock_pref_qc_dual"

.field private static final KEY_SIM_LOCK_PREF_QC_SINGLE:Ljava/lang/String; = "sim_lock_pref_qc_single"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TOGGLE_VERIFY_APPLICATIONS:Ljava/lang/String; = "toggle_verify_applications"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScrollToUnknownSources:Z

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mUnknownSourcesPosition:I

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1175
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    .line 196
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 267
    .local v13, "root":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 268
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 270
    :cond_0
    const v23, 0x7f05003c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 283
    const/4 v12, 0x0

    .line 332
    .local v12, "resid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-nez v23, :cond_10

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    .line 334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 336
    const-string v23, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 337
    .local v10, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v10, :cond_1

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 339
    const v23, 0x7f0a0626

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 348
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 368
    :cond_2
    :goto_2
    :pswitch_0
    const v23, 0x7f050041

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 370
    const-string v23, "lock_after_timeout"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setupLockAfterPreference()V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 377
    :cond_3
    const-string v23, "biometric_weak_liveliness"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 381
    const-string v23, "visiblepattern"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 384
    const-string v23, "power_button_instantly_locks"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 388
    const v23, 0x7f05003d

    move/from16 v0, v23

    if-eq v12, v0, :cond_4

    const v23, 0x7f050047

    move/from16 v0, v23

    if-ne v12, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v23

    const/high16 v24, 0x10000

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 392
    const-string v23, "security_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 394
    .local v14, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 395
    const-string v23, "visiblepattern"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_5
    const-string v23, "security_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 404
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_6

    .line 406
    const-string v23, "crypt_keeper_encrypt_title"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 408
    .local v11, "preTemp":Landroid/preference/Preference;
    if-eqz v11, :cond_6

    .line 410
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 494
    .end local v11    # "preTemp":Landroid/preference/Preference;
    :cond_6
    const-string v23, "sim_lock"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 495
    .local v17, "simLockPrefGroup":Landroid/preference/PreferenceGroup;
    if-eqz v17, :cond_7

    .line 496
    const-string v23, "sim_lock_pref"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 497
    .local v16, "simLockPref":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v9

    .line 499
    .local v9, "nSimNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_12

    if-lez v9, :cond_12

    const/16 v23, 0x1

    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 505
    .end local v9    # "nSimNum":I
    .end local v16    # "simLockPref":Landroid/preference/Preference;
    :cond_7
    :goto_4
    if-eqz v17, :cond_8

    .line 506
    const-string v23, "sim_lock_pref_qc_single"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 507
    .local v19, "simLockPref_qc_single":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v9

    .line 508
    .restart local v9    # "nSimNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v9, v0, :cond_15

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_14

    if-lez v9, :cond_14

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 515
    .end local v9    # "nSimNum":I
    .end local v19    # "simLockPref_qc_single":Landroid/preference/Preference;
    :cond_8
    :goto_6
    if-eqz v17, :cond_9

    .line 516
    const-string v23, "sim_lock_pref_qc_dual"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 517
    .local v18, "simLockPref_qc_dual":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v9

    .line 518
    .restart local v9    # "nSimNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v23

    if-eqz v23, :cond_17

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_17

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_16

    if-lez v9, :cond_16

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 526
    .end local v9    # "nSimNum":I
    .end local v18    # "simLockPref_qc_dual":Landroid/preference/Preference;
    :cond_9
    :goto_8
    const-string v23, "keyguard_enable_widgets"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 529
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v23

    if-nez v23, :cond_a

    .line 533
    :cond_a
    const-string v23, "security_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 535
    .local v15, "security_category":Landroid/preference/PreferenceGroup;
    if-eqz v15, :cond_b

    .line 536
    const-string v23, "keyguard_enable_widgets"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 537
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 552
    .end local v15    # "security_category":Landroid/preference/PreferenceGroup;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "lock_to_app_enabled"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-eqz v23, :cond_18

    .line 554
    const-string v23, "screen_pinning_settings"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0101

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    :goto_9
    const-string v23, "show_password"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 563
    const-string v23, "reset_credentials"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 567
    .local v22, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 568
    const-string v23, "no_config_credentials"

    invoke-virtual/range {v22 .. v23}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 569
    const-string v23, "credential_storage_type"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 571
    .local v4, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v23

    if-eqz v23, :cond_19

    const v20, 0x7f0a0af2

    .line 574
    .local v20, "storageSummaryRes":I
    :goto_a
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 576
    const-string v23, "credentials_management"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 577
    .local v5, "credentialsCategory":Landroid/preference/PreferenceGroup;
    if-eqz v5, :cond_c

    .line 578
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 582
    :cond_c
    const-string v23, "reset_credentials"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 588
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    .end local v5    # "credentialsCategory":Landroid/preference/PreferenceGroup;
    .end local v20    # "storageSummaryRes":I
    :goto_b
    const-string v23, "device_admin_category"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 590
    .local v6, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v23, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 598
    const-string v23, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 599
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->showVerifierSetting()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isVerifierInstalled()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 615
    :goto_c
    const-string v23, "advanced_security"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 617
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_d

    .line 618
    const-string v23, "manage_trust_agents"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 619
    .local v7, "manageAgents":Landroid/preference/Preference;
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v23

    if-nez v23, :cond_d

    .line 620
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 621
    const v23, 0x7f0a0102

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 627
    .end local v7    # "manageAgents":Landroid/preference/Preference;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addAutoBootPrf(Landroid/preference/PreferenceGroup;)V

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPermResume()V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addPplPrf(Landroid/preference/PreferenceGroup;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPplPResume()V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/lenovo/settings/manager/MtkPlug;->addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/settings/manager/MtkPlug;->enablerIMdmResume()V

    .line 636
    const-string v23, "manage_notification_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v21

    .line 639
    .local v21, "total":I
    if-nez v21, :cond_1e

    .line 640
    if-eqz v6, :cond_e

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 667
    .end local v21    # "total":I
    :cond_e
    :goto_d
    const-string v23, "restrictions_pin_set"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->shouldBePinProtected(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 671
    const-string v23, "credentials_install"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->protectByRestrictions(Landroid/preference/Preference;)V

    .line 673
    :cond_f
    return-object v13

    .line 332
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v17    # "simLockPrefGroup":Landroid/preference/PreferenceGroup;
    .end local v22    # "um":Landroid/os/UserManager;
    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 341
    .restart local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_11
    const v23, 0x7f0a0624

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 352
    .end local v10    # "ownerInfoPref":Landroid/preference/Preference;
    :pswitch_1
    const v23, 0x7f05003f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 356
    :pswitch_2
    const v23, 0x7f050046

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 499
    .restart local v9    # "nSimNum":I
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v16    # "simLockPref":Landroid/preference/Preference;
    .restart local v17    # "simLockPrefGroup":Landroid/preference/PreferenceGroup;
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 501
    .end local v9    # "nSimNum":I
    :cond_13
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 509
    .end local v16    # "simLockPref":Landroid/preference/Preference;
    .restart local v9    # "nSimNum":I
    .restart local v19    # "simLockPref_qc_single":Landroid/preference/Preference;
    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 511
    :cond_15
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 519
    .end local v19    # "simLockPref_qc_single":Landroid/preference/Preference;
    .restart local v18    # "simLockPref_qc_dual":Landroid/preference/Preference;
    :cond_16
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 521
    :cond_17
    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 557
    .end local v9    # "nSimNum":I
    .end local v18    # "simLockPref_qc_dual":Landroid/preference/Preference;
    :cond_18
    const-string v23, "screen_pinning_settings"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00ff

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 571
    .restart local v4    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v22    # "um":Landroid/os/UserManager;
    :cond_19
    const v20, 0x7f0a0af3

    goto/16 :goto_a

    .line 584
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    :cond_1a
    const-string v23, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 603
    .restart local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 607
    :cond_1c
    if-eqz v6, :cond_1d

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 610
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 644
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v21    # "total":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v8

    .line 645
    .local v8, "n":I
    if-nez v8, :cond_1f

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a066f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 649
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0f0007

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 784
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 785
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 786
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 789
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 790
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 791
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 796
    :cond_2
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 798
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 800
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 801
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 802
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 809
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 810
    return-void

    .line 809
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 890
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 916
    .end local p2    # "root":Landroid/preference/PreferenceGroup;
    :goto_0
    return-object p2

    .line 894
    .restart local p2    # "root":Landroid/preference/PreferenceGroup;
    :cond_0
    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 896
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 897
    .local v4, "preferenceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 898
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 899
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p2, v3

    .line 901
    goto :goto_0

    .line 904
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    move-object v1, v3

    .line 905
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 906
    .local v1, "group":Landroid/preference/PreferenceGroup;
    invoke-direct {p0, p1, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v5

    .line 907
    .local v5, "returnedPreference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    move-object p2, v5

    .line 908
    goto :goto_0

    .line 912
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v5    # "returnedPreference":Landroid/preference/Preference;
    :cond_2
    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 897
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 916
    .end local v0    # "curKey":Ljava/lang/String;
    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 4

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_notification_listeners"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 681
    :goto_0
    return v2

    .line 680
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 1139
    const/4 v1, 0x0

    .line 1140
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1142
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1143
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1144
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1146
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1147
    const v1, 0x7f050040

    .line 1169
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 1144
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1149
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f05003e

    goto :goto_1

    .line 1151
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1153
    const v1, 0x7f05003d

    goto :goto_1

    .line 1155
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1157
    :sswitch_0
    const v1, 0x7f050043

    .line 1158
    goto :goto_1

    .line 1160
    :sswitch_1
    const v1, 0x7f050045

    .line 1161
    goto :goto_1

    .line 1165
    :sswitch_2
    const v1, 0x7f050042

    goto :goto_1

    .line 1155
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1066
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 706
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v2, "verification":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 710
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 700
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 691
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 752
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 754
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 755
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 756
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 757
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 759
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 763
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 765
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 756
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 714
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 771
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 772
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 773
    .local v5, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 774
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v5

    if-ge v4, v8, :cond_1

    .line 775
    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 776
    .local v6, "timeout":J
    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 777
    move v0, v4

    .line 774
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 780
    .end local v6    # "timeout":J
    :cond_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0a061c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 781
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 720
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0836

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 727
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1111
    const v0, 0x7f0a0c63

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 1074
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1075
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 1089
    :goto_0
    return-void

    .line 1079
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1082
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 1088
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 731
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 732
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 733
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 737
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1127
    const-string v0, "SecuritySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1132
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/manager/MtkPlug;->clearScrapViewsIfNeeded(Landroid/widget/ListView;)V

    .line 1134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 239
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 241
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPM:Landroid/content/pm/PackageManager;

    .line 242
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 244
    new-instance v1, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    .line 247
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "action":Ljava/lang/String;
    const-string v1, "flyme.deviceoriginalsettings.SECURITY_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 251
    :cond_0
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 741
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 742
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIMdmPermissionControlExt()V

    .line 746
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIPermissionControlExt()V

    .line 747
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIPplSettingsEntryExt()V

    .line 748
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 876
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPause()V

    .line 877
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPermPause()V

    .line 884
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->enablerPplPPause()V

    .line 885
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->enablerIMdmPause()V

    .line 886
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1094
    const-string v2, "lock_after_timeout"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 1095
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1097
    .local v1, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1106
    .end local v1    # "timeout":I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1099
    .restart local v1    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 922
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x1

    .line 1062
    :goto_0
    return v1

    .line 925
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 927
    .local v10, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    .line 928
    .local v11, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 929
    const-string v2, "com.flyme.deviceoriginalsettings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0a0638

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1062
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 931
    :cond_2
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 932
    new-instance v9, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 934
    .local v9, "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    const/16 v1, 0x7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_1

    .line 942
    .end local v9    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_3
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 943
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 944
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 949
    :cond_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 950
    new-instance v9, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v9, v1, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 952
    .restart local v9    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    const/16 v1, 0x7d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 958
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 959
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 962
    .end local v9    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_5
    const-string v1, "lockenabled"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 963
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 964
    :cond_6
    const-string v1, "visiblepattern"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 965
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 966
    :cond_7
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 967
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_1

    .line 968
    :cond_8
    const-string v1, "keyguard_enable_widgets"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 969
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_1

    .line 970
    :cond_9
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_b

    .line 971
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 972
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0a0966

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0284

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    .line 983
    .end local v0    # "context":Landroid/content/Context;
    :cond_b
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_d

    .line 984
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 985
    .restart local v0    # "context":Landroid/content/Context;
    const v1, 0x7f0a08cd

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0284

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 995
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 996
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_1

    .line 998
    :cond_c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1

    .line 1000
    .end local v0    # "context":Landroid/content/Context;
    :cond_d
    const-string v1, "toggle_verify_applications"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1001
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1002
    .restart local v0    # "context":Landroid/content/Context;
    const v1, 0x7f0a08cf

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0284

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "package_verifier_enable"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    .line 1014
    .end local v0    # "context":Landroid/content/Context;
    :cond_f
    const-string v1, "sim_lock_pref"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1016
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a07b2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0284

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "com.lenovo.geminisettings"

    const-string v8, "com.lenovo.geminisettings.IccLockSettings"

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1024
    :cond_10
    const-string v1, "trusted_credentials"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1026
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0aef

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0284

    const-class v5, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1036
    :cond_11
    const-string v1, "credentials_install"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1038
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0aeb

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0284

    const/4 v5, 0x0

    const-string v6, "android.credentials.INSTALL"

    const-string v7, "com.android.certinstaller"

    const-string v8, "com.android.certinstaller.CertInstallerMain"

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1046
    :cond_12
    const-string v1, "manage_trust_agents"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1048
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a00fb

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a00fb

    const-class v5, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 1059
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 814
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onResume()V

    .line 818
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 821
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollToUnknownSources:Z

    if-eqz v2, :cond_0

    .line 822
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 824
    iput v4, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 825
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    .line 826
    const-string v2, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find position unknown resources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 831
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 832
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 836
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 837
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 839
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 840
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 843
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 844
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 848
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 849
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 852
    :cond_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 853
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 861
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 862
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_7
    :goto_2
    return-void

    :cond_8
    move v2, v4

    .line 844
    goto :goto_0

    :cond_9
    move v3, v4

    .line 849
    goto :goto_1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SecuritySettings"

    const-string v3, "registerReceiver sim info update error"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1118
    return-void
.end method
