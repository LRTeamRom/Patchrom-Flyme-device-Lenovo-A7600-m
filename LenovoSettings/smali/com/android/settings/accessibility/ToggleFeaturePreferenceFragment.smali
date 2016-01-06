.class public abstract Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"


# instance fields
.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Landroid/preference/Preference;

.field protected mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 117
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "toggleSwitch":Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 120
    .local v0, "padding":I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;->setPaddingRelative(IIII)V

    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 127
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 56
    new-instance v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 80
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 81
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f0400ee

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 82
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 107
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 108
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 109
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 110
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 99
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 100
    return-void
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    .line 114
    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 132
    const-string v2, "preference_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 134
    const-string v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 135
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 137
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    .local v1, "summary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 89
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method
