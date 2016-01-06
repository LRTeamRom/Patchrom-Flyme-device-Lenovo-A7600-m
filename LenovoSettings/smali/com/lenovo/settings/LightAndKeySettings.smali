.class public Lcom/lenovo/settings/LightAndKeySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "LightAndKeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final KEY_BUTTON_BRIGHTNESS:Ljava/lang/String; = "button_brightness"

.field public static final KEY_LONG_HOME_ACTIVE_TROCH:Ljava/lang/String; = "long_home_active_troch"

.field public static final KEY_LONG_HOME_ACTIVE_TROCH_ENABLE:Ljava/lang/String; = "long_home_active_troch"

.field public static final KEY_LONG_MENU_ACTIVE_VOICE:Ljava/lang/String; = "long_menu_active_voice"

.field private static final KEY_SETTINGS_CATEGORY:Ljava/lang/String; = "key_settings_category"

.field private static final LIGHT_SETTINGS_CATEGORY:Ljava/lang/String; = "light_settings_category"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field public static final SIDE_KEY_BACKLIGHT:Ljava/lang/String; = "side_key_backlight"

.field private static final TAG:Ljava/lang/String; = "LightAndKeySettings"


# instance fields
.field private mButtonBrightness:Landroid/preference/ListPreference;

.field private mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/lenovo/settings/LightAndKeySettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/LightAndKeySettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/LightAndKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private intiKeySettings()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    const-string v1, "side_key_backlight"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LightAndKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 158
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_0
    const-string v1, "long_menu_active_voice"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LightAndKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 168
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setPersistent(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/settings/manager/PlatformApi;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/settings/manager/PlatformApi;->getConstantUriStringLONG_CLICK_MENU_ENABLED()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 184
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_1
    const-string v1, "long_home_active_troch"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LightAndKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 193
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setPersistent(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "long_home_active_troch"

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :cond_2
    :goto_3
    const-string v1, "button_brightness"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/LightAndKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 217
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v1, v3

    .line 175
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_6
    move v1, v3

    .line 200
    goto :goto_2

    .line 206
    :catch_1
    move-exception v0

    .line 207
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    goto :goto_3

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 221
    :cond_8
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateButtonBrightnessState()V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantIntegerBUTTON_BRIGHTNESS_MODE_AUTOMATIC()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "state":I
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "side_key_backlight"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "long_menu_active_voice"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/lenovo/settings/LightAndKeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "long_home_active_troch"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/lenovo/settings/LightAndKeySettings;->updateButtonBrightnessState()V

    .line 137
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LightAndKeySettings;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "lights_settings"

    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/lenovo/settings/LightAndKeySettings;->intiKeySettings()V

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->isDisplayKeySettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "key_settings_category"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LightAndKeySettings;->removePreference(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->isDisiplayLightsSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "light_settings_category"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LightAndKeySettings;->removePreference(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v13, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 257
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "key":Ljava/lang/String;
    const-string v2, "button_brightness"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const-string v2, "LightAndKeySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select button brightnesspref,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/settings/plugin/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 262
    .local v12, "value":I
    iget-object v2, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/lenovo/settings/LightAndKeySettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    const v2, 0x7f0a02b8

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a03b1

    const-class v5, Lcom/lenovo/settings/LightAndKeySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v12    # "value":I
    :cond_1
    :goto_0
    return v13

    .line 278
    :catch_0
    move-exception v9

    .line 279
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LightAndKeySettings"

    const-string v3, "could not persist button brightness setting"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 283
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 284
    new-instance v11, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v11}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 286
    .local v11, "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v11, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 287
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V

    .line 289
    invoke-direct {p0}, Lcom/lenovo/settings/LightAndKeySettings;->updateState()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 236
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 241
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/lenovo/settings/LightAndKeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    const-string v3, "LightAndKeySettings"

    const-string v4, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/lenovo/settings/charactersettings/CharacterHelperSideKeyRom20;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "preference_Key"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v3, "preference_title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 247
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/settings/LightAndKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 251
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 107
    invoke-direct {p0}, Lcom/lenovo/settings/LightAndKeySettings;->updateState()V

    .line 108
    return-void
.end method
