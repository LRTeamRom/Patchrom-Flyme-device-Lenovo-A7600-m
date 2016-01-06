.class public Lcom/lenovo/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final KEY_LONG_HOME_ACTIVE_TROCH:Ljava/lang/String; = "long_home_active_troch"

.field public static final KEY_LONG_HOME_ACTIVE_TROCH_ENABLE:Ljava/lang/String; = "long_home_active_troch"

.field public static final KEY_LONG_MENU_ACTIVE_VOICE:Ljava/lang/String; = "long_menu_active_voice"

.field public static final SIDE_KEY_BACKLIGHT:Ljava/lang/String; = "side_key_backlight"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

.field private mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/settings/KeySettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "side_key_backlight"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "long_menu_active_voice"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "long_home_active_troch"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v1

    iget-boolean v1, v1, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 133
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v2, 0x7f050025

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 59
    const-string v2, "side_key_backlight"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v2, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 60
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 62
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v2, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    const-string v2, "long_menu_active_voice"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 69
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setPersistent(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/PlatformApi;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/settings/manager/PlatformApi;->getConstantUriStringLONG_CLICK_MENU_ENABLED()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 82
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_1
    const-string v2, "long_home_active_troch"

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    iput-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    .line 91
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setPersistent(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "long_home_active_troch"

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    .line 104
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 113
    .local v1, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "keys_settings"

    invoke-static {v2, v1, v3}, Lcom/android/settings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 114
    return-void

    .end local v1    # "rootprs":Landroid/preference/PreferenceScreen;
    :cond_3
    move v2, v4

    .line 75
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    goto :goto_1

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/settings/KeySettings;->mLongMenuActiveVoice:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_5
    move v2, v4

    .line 97
    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    goto :goto_3

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/KeySettings;->mLongHomeActiveTroch:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 158
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 159
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 161
    .local v0, "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V

    .line 164
    invoke-direct {p0}, Lcom/lenovo/settings/KeySettings;->updateState()V

    .line 167
    .end local v0    # "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 137
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 142
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/lenovo/settings/KeySettings;->mSideKeyBacklight:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    sget-object v3, Lcom/lenovo/settings/KeySettings;->TAG:Ljava/lang/String;

    const-string v4, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/lenovo/settings/charactersettings/CharacterHelperSideKeyRom20;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/settings/KeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 118
    invoke-direct {p0}, Lcom/lenovo/settings/KeySettings;->updateState()V

    .line 119
    return-void
.end method
