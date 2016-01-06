.class public Lcom/lenovo/settings/CharSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CharSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "CharSettings"


# instance fields
.field private mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

.field private mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/lenovo/settings/CharSettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/CharSettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/CharSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPreferenceOperation(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "isChecked"    # Z

    .prologue
    .line 161
    const-string v1, "CharSettings"

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

    .line 163
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 164
    .local v0, "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    iput-boolean p2, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 165
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V

    .line 167
    invoke-direct {p0}, Lcom/lenovo/settings/CharSettings;->updateState()V

    .line 168
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_TOPSPEED_SNAP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/settings/CharSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gesture_topspeed_snap"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_PICK_UP_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/lenovo/settings/CharSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gesture_pick_up"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 158
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/CharSettings;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a03d5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    const-string v1, "gesture_topspeed_snap"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/CharSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/CharSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 90
    iget-object v1, p0, Lcom/lenovo/settings/CharSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/lenovo/settings/CharSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 99
    :cond_0
    const-string v1, "gesture_pick_up"

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/CharSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    iput-object v1, p0, Lcom/lenovo/settings/CharSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    .line 100
    iget-object v1, p0, Lcom/lenovo/settings/CharSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/CharSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 110
    .local v0, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "touch_settings"

    invoke-static {v1, v0, v2}, Lcom/android/settings/Utils;->addPreferencePluginSortForChar(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "touch_settings"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->exePauseByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 172
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 173
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/CharSettings;->onPreferenceOperation(Landroid/preference/Preference;Z)V

    .line 175
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 130
    .local v2, "title":Ljava/lang/CharSequence;
    const-string v4, "CharSettings"

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

    .line 133
    iget-object v4, p0, Lcom/lenovo/settings/CharSettings;->mGesturePickUp:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const-string v4, "CharSettings"

    const-string v5, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/lenovo/settings/charactersettings/CharacterHelperPickUpRom20;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 138
    :cond_0
    iget-object v4, p0, Lcom/lenovo/settings/CharSettings;->mGestureTopspeedSnap:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const-string v4, "CharSettings"

    const-string v5, "CharacterSettingsRom20 onPreferenceTreeClick intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/lenovo/settings/charactersettings/CharacterHelperTopSpeedSnapRom20;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "CharSettings"

    const-string v4, "charSettings onPreferenceTreeClick no"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/lenovo/settings/CharSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "touch_settings"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->exeResumeByParentKey(Landroid/app/Activity;Ljava/lang/String;)V

    .line 118
    return-void
.end method
