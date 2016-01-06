.class public Lcom/lenovo/settings/TouchSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "TouchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field public static final GESTURE_WAKEUP_ALL_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_all_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "TouchSettings"


# instance fields
.field private mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/lenovo/settings/TouchSettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/TouchSettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/TouchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPreferenceOperation(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Z

    .prologue
    .line 258
    const-string v1, "TouchSettings"

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

    .line 260
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 261
    .local v0, "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    iput-boolean p2, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 262
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V

    .line 264
    invoke-direct {p0}, Lcom/lenovo/settings/TouchSettings;->updateState()V

    .line 265
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_TOPSPEED_SNAP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gesture_topspeed_snap"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_PICK_UP_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gesture_pick_up"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 255
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v1, 0x7f050052

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/TouchSettings;->addPreferencesFromResource(I)V

    .line 115
    const-string v1, "gesture_topspeed_snap"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 116
    iget-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_TOPSPEED_SNAP()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_0
    :goto_0
    const-string v1, "gesture_pick_up"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/TouchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 126
    iget-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_PICK_UP_SUPPORT()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setPersistent(Z)V

    .line 129
    iget-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 136
    .local v0, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "touch_settings"

    invoke-static {v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 137
    return-void

    .line 121
    .end local v0    # "rootprs":Landroid/preference/PreferenceScreen;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 159
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 269
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 270
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/TouchSettings;->onPreferenceOperation(Landroid/preference/Preference;Z)V

    .line 272
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 163
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 171
    .local v2, "title":Ljava/lang/CharSequence;
    const-string v4, "TouchSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterSettingsRom20 onPreferenceTreeClick key is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",title is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/lenovo/settings/TouchSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string v4, "TouchSettings"

    const-string v5, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/lenovo/settings/charactersettings/CharacterHelperPickUpRom20;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/lenovo/settings/TouchSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    const-string v4, "TouchSettings"

    const-string v5, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/lenovo/settings/charactersettings/CharacterHelperTopSpeedSnapRom20;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/TouchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "TouchSettings"

    const-string v4, "touchSettings onPreferenceTreeClick no"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/lenovo/settings/TouchSettings;->updateState()V

    .line 149
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 150
    return-void
.end method
