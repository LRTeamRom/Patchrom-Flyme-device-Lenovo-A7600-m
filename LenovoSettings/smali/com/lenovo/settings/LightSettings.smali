.class public Lcom/lenovo/settings/LightSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "LightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_BUTTON_BRIGHTNESS:Ljava/lang/String; = "button_brightness"

.field private static final TAG:Ljava/lang/String; = "LightSettings"


# instance fields
.field private mButtonBrightness:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateButtonBrightnessState()V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantIntegerBUTTON_BRIGHTNESS_MODE_AUTOMATIC()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "state":I
    iget-object v1, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/lenovo/settings/LightSettings;->updateButtonBrightnessState()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f05002f

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LightSettings;->addPreferencesFromResource(I)V

    .line 48
    const-string v0, "button_brightness"

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    .line 49
    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "lights_settings"

    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 67
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "key":Ljava/lang/String;
    const-string v4, "button_brightness"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const-string v4, "LightSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select button brightnesspref,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "value":I
    iget-object v4, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/lenovo/settings/LightSettings;->mButtonBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v3    # "value":I
    :cond_1
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "LightSettings"

    const-string v5, "could not persist button brightness setting"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 72
    invoke-direct {p0}, Lcom/lenovo/settings/LightSettings;->updateState()V

    .line 73
    return-void
.end method
