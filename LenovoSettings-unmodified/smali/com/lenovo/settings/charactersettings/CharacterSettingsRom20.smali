.class public Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CharacterSettingsRom20.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final ACTION_TOUCH_FREE_PHONE_ANSWER:Ljava/lang/String; = "com.lenovo.freedial.action.setting.answer"

.field public static final ACTION_TOUCH_FREE_PHONE_DIAL:Ljava/lang/String; = "com.lenovo.freedial.action.setting"

.field private static final EVENT_DELAY:I = 0x2

.field private static final EVENT_ONCREATE:I = 0xc350

.field private static final EVENT_ONRESUME:I = 0xc351

.field public static final GESTURE_WAKEUP_ALL_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_all_enable"

.field private static final KEY_CHARACTER_CATEGORY_1:Ljava/lang/String; = "character_category_1"

.field private static final KEY_CHARACTER_CATEGORY_2:Ljava/lang/String; = "character_category_2"

.field private static final KEY_CHARACTER_CATEGORY_3:Ljava/lang/String; = "character_category_3"

.field private static final KEY_CHARACTER_CATEGORY_4:Ljava/lang/String; = "character_category_4"

.field private static final KEY_DOLBY:Ljava/lang/String; = "dolby_preference"

.field public static final KEY_GESTURE_LIGHT_UP_SCREEN:Ljava/lang/String; = "gesture_light_up_screen"

.field public static final KEY_GESTURE_TOPSPEED_SNAP:Ljava/lang/String; = "gesture_topspeed_snap"

.field public static final KEY_GESTURE_UNLOCK:Ljava/lang/String; = "gesture_series"

.field private static final KEY_LONG_MENU_ACTIVE_VOICE:Ljava/lang/String; = "long_menu_active_voice"

.field public static final KEY_MERCURY_KEYBOARD:Ljava/lang/String; = "mercury_keyboard"

.field public static final KEY_MERCURY_KEYBOARD_PERSIST:Ljava/lang/String; = "pref_key_mercury_keyboard_on"

.field public static final KEY_MULTIWINDOW:Ljava/lang/String; = "multiwindow"

.field public static final KEY_MULTIWINDOW_PERSIST:Ljava/lang/String; = "multiwindow_key_enabled"

.field public static final KEY_POCKET_MODE:Ljava/lang/String; = "pocket_mode"

.field public static final KEY_POCKET_MODE_VALUE:Ljava/lang/String; = "lenovo_pocket_mode"

.field public static final KEY_RINGTONE_WEAKEN:Ljava/lang/String; = "ringtone_weaken"

.field public static final KEY_RINGTONE_WEAKEN_MODE_VALUE:Ljava/lang/String; = "lenovo_weaken_mode"

.field public static final KEY_SETTINGS_TOUCH_FREE_PHONE:Ljava/lang/String; = "com.lenovo.freedial.enable.all"

.field public static final KEY_SETTINGS_TOUCH_FREE_PHONE_ANSWER:Ljava/lang/String; = "com.lenovo.freedial.enable.answer"

.field public static final KEY_SETTINGS_TOUCH_FREE_PHONE_DIAL:Ljava/lang/String; = "com.lenovo.freedial.enable.all"

.field public static final KEY_SINGLE_HAND:Ljava/lang/String; = "single_hand"

.field public static final KEY_SLIDE_UNLOCK:Ljava/lang/String; = "slide_unlock"

.field public static final KEY_SLIDE_UNLOCK_PERSIST:Ljava/lang/String; = "slide_unlock_enabled"

.field public static final KEY_SMART_CALLING:Ljava/lang/String; = "smart_calling"

.field public static final KEY_SMART_CALLING_PERSIST:Ljava/lang/String; = "pref_key_smart_call_on"

.field public static final KEY_SMART_CALL_ANSWER:Ljava/lang/String; = "smart_call_answer"

.field public static final KEY_SMART_CALL_ANSWER_PERSIST:Ljava/lang/String; = "smart_call_answer"

.field public static final KEY_SMART_ROTATION:Ljava/lang/String; = "smart_rotation"

.field private static final KEY_SMART_SCENE_PREFERENCE:Ljava/lang/String; = "smart_scene_preference"

.field public static final KEY_SMART_STANDBY_ENABLE:Ljava/lang/String; = "smart_standby_enable"

.field public static final KEY_SMART_STANDBY_ENABLE_PERSIST:Ljava/lang/String; = "smart_standby_enable"

.field public static final KEY_SWING_LOCK:Ljava/lang/String; = "swing_lock"

.field public static final KEY_SWING_LOCK_PERSIST:Ljava/lang/String; = "swing_lock_enabled"

.field public static final KEY_TOUCH_FREE_PHONE:Ljava/lang/String; = "touch_free_phone"

.field public static final KEY_TOUCH_FREE_PHONE_ANSWER:Ljava/lang/String; = "touch_free_phone_answer"

.field public static final KEY_TOUCH_FREE_PHONE_DIAL:Ljava/lang/String; = "touch_free_phone_dial"

.field public static final KEY_WIDE_TOUCH:Ljava/lang/String; = "wide_touch"

.field public static final KEY_WIDE_TOUCH_PERSIST:Ljava/lang/String; = "total_wide_touch"

.field public static final KEY_WIFI_SWITCH_SETTINGS:Ljava/lang/String; = "wifi_switch_setting"

.field public static final SCREEN_SMART_ROTATION:Ljava/lang/String; = "screen_smart_rotation"

.field public static final SETTINGS_SINGLE_HAND:Ljava/lang/String; = "settings_single_hand"

.field public static final SIDE_KEY_BACKLIGHT:Ljava/lang/String; = "side_key_backlight"

.field public static final SIDE_KEY_BACKLIGHT_PERSIST:Ljava/lang/String; = "side_key_backlight"

.field public static final SIDE_KEY_BACKLIGHT_PERSIST_QUALCOM:Ljava/lang/String; = "wake_key_enabled"

.field public static final SMART_ROTATION_DEFAULT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CharacterSettingsRom20"


# instance fields
.field private gestureSeriesSwitchPreference:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mCategory1:Landroid/preference/PreferenceCategory;

.field private mCategory2:Landroid/preference/PreferenceCategory;

.field private mCategory3:Landroid/preference/PreferenceCategory;

.field private mCategory4:Landroid/preference/PreferenceCategory;

.field private mGestureLightUpScreen:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mHandler:Landroid/os/Handler;

.field private mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mMercuryKeyboard:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mMultiwindowEnabled:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mMutiWindowObserver:Landroid/database/ContentObserver;

.field private mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mSingleHandObserver:Landroid/database/ContentObserver;

.field private mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mSmartCallAnswer:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mSmartCalling:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mSmartCallingObserver:Landroid/database/ContentObserver;

.field private mSmartRotatinObserver:Landroid/database/ContentObserver;

.field private mSmartRotationPref:Landroid/preference/ListPreference;

.field private mSmartScenePreference:Landroid/preference/Preference;

.field private mSmartStandbyEnable:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mSmartStandbyObserver:Landroid/database/ContentObserver;

.field private mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mSwingtLockObserver:Landroid/database/ContentObserver;

.field private mTouchFreeAnswerObserver:Landroid/database/ContentObserver;

.field private mTouchFreeDialObserver:Landroid/database/ContentObserver;

.field private mTouchFreePhoneAnswer:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mTouchFreePhoneDial:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mWideTouchObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 159
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$1;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingtLockObserver:Landroid/database/ContentObserver;

    .line 179
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$2;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouchObserver:Landroid/database/ContentObserver;

    .line 217
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$3;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotatinObserver:Landroid/database/ContentObserver;

    .line 231
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$4;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreeDialObserver:Landroid/database/ContentObserver;

    .line 245
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreeAnswerObserver:Landroid/database/ContentObserver;

    .line 267
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$6;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMutiWindowObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$7;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHandObserver:Landroid/database/ContentObserver;

    .line 320
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$8;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCallingObserver:Landroid/database/ContentObserver;

    .line 338
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$9;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartStandbyObserver:Landroid/database/ContentObserver;

    .line 368
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$10;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$10;-><init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateSwingLockStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateWideTouchStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateSmartRotationPreference(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneDial:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneAnswer:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->onCreateInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->onResumeInternal()V

    return-void
.end method

.method private categoryType1()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    const-string v0, "slide_unlock"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 394
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 411
    :cond_0
    const-string v0, "gesture_series"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->gestureSeriesSwitchPreference:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 416
    const-string v0, "swing_lock"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 417
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 426
    :cond_1
    const-string v0, "mercury_keyboard"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMercuryKeyboard:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 436
    const-string v0, "single_hand"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 437
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setPersistent(Z)V

    .line 458
    :cond_2
    const-string v0, "gesture_topspeed_snap"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 465
    const-string v0, "gesture_light_up_screen"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mGestureLightUpScreen:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 472
    return-void
.end method

.method private categoryType2()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    const-string v0, "multiwindow"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMultiwindowEnabled:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 480
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMultiwindowEnabled:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v0, :cond_0

    .line 489
    :cond_0
    const-string v0, "side_key_backlight"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 490
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 498
    :cond_1
    const-string v0, "wide_touch"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 499
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 507
    :cond_2
    const-string v0, "smart_call_answer"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCallAnswer:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 521
    const-string v0, "smart_calling"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCalling:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 538
    const-string v0, "long_menu_active_voice"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 539
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setPersistent(Z)V

    .line 561
    :cond_3
    return-void
.end method

.method private categoryType3()V
    .locals 1

    .prologue
    .line 568
    const-string v0, "smart_scene_preference"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartScenePreference:Landroid/preference/Preference;

    .line 573
    const-string v0, "smart_standby_enable"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartStandbyEnable:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 587
    const-string v0, "smart_rotation"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    .line 589
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getSmartRoationValue()I

    .line 603
    :cond_0
    return-void
.end method

.method private categoryType4()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 609
    const-string v0, "pocket_mode"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 610
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 612
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 615
    :cond_0
    const-string v0, "ringtone_weaken"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 616
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 618
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 620
    :cond_1
    const-string v0, "touch_free_phone_dial"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneDial:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 621
    const-string v0, "touch_free_phone_answer"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneAnswer:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 628
    return-void
.end method

.method private getSmartRoationValue()I
    .locals 4

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_smart_rotation"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 739
    .local v0, "currentValue":I
    return v0
.end method

.method private onCreateInternal()V
    .locals 2

    .prologue
    .line 635
    const-string v0, "CharacterSettingsRom20"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->addPreferencesFromResource(I)V

    .line 638
    const-string v0, "character_category_1"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mCategory1:Landroid/preference/PreferenceCategory;

    .line 639
    const-string v0, "character_category_2"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mCategory2:Landroid/preference/PreferenceCategory;

    .line 640
    const-string v0, "character_category_3"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mCategory3:Landroid/preference/PreferenceCategory;

    .line 641
    const-string v0, "character_category_4"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mCategory4:Landroid/preference/PreferenceCategory;

    .line 648
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->categoryType1()V

    .line 649
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->categoryType2()V

    .line 650
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->categoryType3()V

    .line 651
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->categoryType4()V

    .line 708
    return-void
.end method

.method private onPreferenceOperation(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Z

    .prologue
    .line 827
    const-string v1, "CharacterSettingsRom20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterSettingsK7 onPreferenceOperation key is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isChecked is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 830
    .local v0, "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    iput-boolean p2, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 831
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V

    .line 833
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateState()V

    .line 834
    return-void
.end method

.method private onResumeInternal()V
    .locals 2

    .prologue
    .line 841
    const-string v0, "CharacterSettingsRom20"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateState()V

    .line 926
    return-void
.end method

.method private setSingleHandEnabled()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1252
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 1253
    .local v0, "isLandscape":Z
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1254
    .local v1, "isPortrait":Z
    :goto_1
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v4, :cond_0

    .line 1256
    if-eqz v0, :cond_3

    .line 1257
    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setEnabled(Z)V

    .line 1264
    :cond_0
    :goto_2
    return-void

    .end local v0    # "isLandscape":Z
    .end local v1    # "isPortrait":Z
    :cond_1
    move v0, v3

    .line 1252
    goto :goto_0

    .restart local v0    # "isLandscape":Z
    :cond_2
    move v1, v3

    .line 1253
    goto :goto_1

    .line 1258
    .restart local v1    # "isPortrait":Z
    :cond_3
    if-eqz v1, :cond_0

    .line 1259
    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v3, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setEnabled(Z)V

    goto :goto_2
.end method

.method private setSlideUnlock(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1198
    const/16 v2, 0x30

    .line 1199
    .local v2, "setVal":B
    if-eqz p1, :cond_0

    .line 1200
    const/16 v2, 0x31

    .line 1202
    :cond_0
    const/4 v0, 0x0

    .line 1204
    .local v0, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/sys/board_properties/tpd_suspend_status"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1210
    if-eqz v1, :cond_1

    .line 1211
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v0, v1

    .line 1216
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 1212
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 1214
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1207
    :catch_1
    move-exception v3

    .line 1210
    :goto_1
    if-eqz v0, :cond_2

    .line 1211
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1212
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1209
    :catchall_0
    move-exception v3

    .line 1210
    :goto_2
    if-eqz v0, :cond_3

    .line 1211
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1213
    :cond_3
    :goto_3
    throw v3

    .line 1212
    :catch_3
    move-exception v4

    goto :goto_3

    .line 1209
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1207
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private slideUnlockEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1188
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "slide_unlock_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1190
    .local v0, "val":I
    if-ne v0, v1, :cond_0

    .line 1193
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateSmartRotation()V
    .locals 4

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_smart_rotation"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 747
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateSmartRotationPreference(I)V

    .line 749
    return-void
.end method

.method private updateSmartRotationPreference(I)V
    .locals 6
    .param p1, "currentSmartRotation"    # I

    .prologue
    .line 785
    const-string v3, "CharacterSettingsRom20"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartRotationPreference="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-nez v3, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 789
    invoke-direct {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateSmartRotationPreferenceDescription(I)V

    .line 790
    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 791
    .local v1, "dlg":Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 795
    .local v2, "listview":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 797
    .local v0, "checkedItem":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 798
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 799
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateSmartRotationPreferenceDescription(I)V
    .locals 8
    .param p1, "currentSmartRotation"    # I

    .prologue
    .line 753
    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    .line 755
    .local v3, "preference":Landroid/preference/ListPreference;
    if-gez p1, :cond_0

    .line 757
    const-string v5, ""

    .line 781
    .local v5, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 782
    return-void

    .line 759
    .end local v5    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 760
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 761
    .local v6, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-nez v7, :cond_2

    .line 762
    :cond_1
    const-string v5, ""

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 764
    .end local v5    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 765
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 766
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 767
    .local v4, "rotationMode":I
    if-ne p1, v4, :cond_3

    .line 768
    move v0, v2

    .line 765
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 772
    .end local v4    # "rotationMode":I
    :cond_4
    array-length v7, v1

    if-eqz v7, :cond_5

    .line 773
    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 775
    .end local v5    # "summary":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    .restart local v5    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 946
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "side_key_backlight"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 949
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wide_touch"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 952
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMercuryKeyboard:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "mercury_keyboard"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 955
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "single_hand"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 966
    const-string v1, "CharacterSettingsRom20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterSettingsRom20 updateState mSideKeyBacklight is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mWideTouch is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMercuryKeyboard is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMercuryKeyboard:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "swing_lock"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 978
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCalling:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "smart_calling"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 980
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->gestureSeriesSwitchPreference:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->gestureSeriesSwitchPreference:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "gesture_series"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCallAnswer:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "smart_call_answer"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 988
    const-string v1, "CharacterSettingsRom20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterSettingsK7 updateState mSwingLock is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSmartCalling is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCalling:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSmartCallAnswer is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartCallAnswer:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartStandbyEnable:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "smart_standby_enable"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v2

    iget-boolean v2, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 996
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getSmartRoationValue()I

    move-result v0

    .line 997
    .local v0, "currentSmartRoation":I
    invoke-direct {p0, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateSmartRotationPreference(I)V

    .line 999
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "pocket_mode"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 1001
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ringtone_weaken"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 1003
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "slide_unlock"

    invoke-static {v2, v3}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 1028
    :cond_1
    const-string v1, "CharacterSettingsRom20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterSettingsK7 updateState mPocketMode is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mRingtoneWeaken is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void
.end method

.method private updateSwingLockStatus()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "swing_lock"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 177
    return-void
.end method

.method private updateWideTouchStatus()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wide_touch"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1240
    const-string v0, "CharacterSettingsRom20"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1247
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->setSingleHandEnabled()V

    .line 1248
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v2, 0xc350

    .line 727
    const-string v0, "CharacterSettingsRom20"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 732
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 713
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 714
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 715
    .local v0, "mListView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 716
    const-string v2, "character_settings_list"

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 718
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1224
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1225
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    const v1, 0xc350

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1227
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    const v1, 0xc351

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1185
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 808
    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartRotationPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    .line 810
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 812
    .local v1, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_smart_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 814
    invoke-direct {p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->updateSmartRotationPreferenceDescription(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v1    # "value":I
    :cond_0
    :goto_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 821
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->onPreferenceOperation(Landroid/preference/Preference;Z)V

    .line 823
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 815
    .restart local v1    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CharacterSettingsRom20"

    const-string v3, "could not persist smart rotation setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/high16 v9, 0x4000000

    const/4 v5, 0x1

    .line 1037
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1038
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1039
    .local v4, "title":Ljava/lang/CharSequence;
    const-string v6, "CharacterSettingsRom20"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CharacterSettingsRom20 onPreferenceTreeClick key is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",title is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mMercuryKeyboard:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSwingLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mPocketMode:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mRingtoneWeaken:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSingleHand:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSlideUnLock:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mWideTouch:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mGestureLightUpScreen:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1065
    :cond_0
    const-string v6, "CharacterSettingsRom20"

    const-string v7, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "preference_Key"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v6, "preference_title"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1070
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1126
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 1073
    :cond_1
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartScenePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mSmartScenePreference:Landroid/preference/Preference;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1075
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1076
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "com.lenovo.lenovosmartscene"

    const-string v7, "com.lenovo.lenovosmartscene.SmartSceneActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1079
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1081
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneDial:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1083
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lenovo.freedial.action.setting"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1087
    const-string v6, "CharacterSettingsRom20"

    const-string v7, "CharacterSettingsK7 onPreferenceTreeClick cannot find freedial"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneAnswer:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1093
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.lenovo.freedial.action.setting.answer"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1095
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1096
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1097
    const-string v6, "CharacterSettingsRom20"

    const-string v7, "CharacterSettingsK7 onPreferenceTreeClick cannot find freeanswer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1113
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->gestureSeriesSwitchPreference:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->gestureSeriesSwitchPreference:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1115
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1116
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1117
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1118
    const-string v6, "com.lenovo.gesture"

    const-string v7, "com.lenovo.framework.gestureunlock.gestureunlocksettings.GestureUnlockSettingsActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1124
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v5, "CharacterSettingsRom20"

    const-string v6, "CharacterSettingsRom20 onPreferenceTreeClick no"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 934
    const-string v0, "CharacterSettingsRom20"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mHandler:Landroid/os/Handler;

    const v1, 0xc351

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 941
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 942
    return-void
.end method
