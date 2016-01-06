.class public Lcom/lenovo/settings/CharacterSettings;
.super Landroid/preference/PreferenceFragment;
.source "CharacterSettings.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 59
    .local v0, "airplane":Z
    :cond_0
    return v0
.end method


# virtual methods
.method loadAppItems()V
    .locals 9

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/lenovo/settings/CharacterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 31
    .local v0, "categoryCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/settings/CharacterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 33
    .local v1, "cry":Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 34
    .local v5, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v5, :cond_1

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 38
    .local v4, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 39
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/settings/CharacterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v6

    .line 40
    .local v6, "prf":Landroid/preference/Preference;
    const v7, 0x7f040074

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 41
    const v7, 0x7f04006c

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 42
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 46
    .end local v1    # "cry":Landroid/preference/PreferenceCategory;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v5    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    .end local v6    # "prf":Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/lenovo/settings/CharacterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/CharacterSettings;->mContext:Landroid/content/Context;

    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/lenovo/settings/CharacterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/CharacterSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    .line 25
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/CharacterSettings;->addPreferencesFromResource(I)V

    .line 26
    invoke-virtual {p0}, Lcom/lenovo/settings/CharacterSettings;->loadAppItems()V

    .line 27
    return-void
.end method
