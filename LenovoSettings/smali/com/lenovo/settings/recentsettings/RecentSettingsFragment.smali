.class public Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
.super Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;
.source "RecentSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;,
        Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;,
        Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;,
        Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;,
        Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentSettingsFragment"


# instance fields
.field private mCurrLocale:Ljava/util/Locale;

.field private mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

.field private mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

.field private mPluginViewCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

.field private mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

.field private mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mCurrLocale:Ljava/util/Locale;

    .line 46
    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    .line 48
    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    .line 410
    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;)Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
    .param p1, "x1"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPluginViewCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method private upateRecentSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->cancel(Z)Z

    .line 144
    iput-object v2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    .line 146
    :cond_0
    new-instance v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;-><init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    .line 147
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method


# virtual methods
.method protected createRefreshableView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const v0, 0x7f0400cc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPluginViewCache:Ljava/util/Hashtable;

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->cancel(Z)Z

    .line 132
    iput-object v2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mUpdateRecentSettingsTask:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    invoke-virtual {v0, v2}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 138
    :cond_1
    invoke-super {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onDestroy()V

    .line 139
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int p3, p3, v1

    .line 160
    if-gez p3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;

    .line 165
    .local v14, "item":Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;
    iget-object v8, v14, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    .line 166
    .local v8, "dataItem":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    iget-object v1, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFragmentClassName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mScreenTitleStringId:I

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mPluginPrefKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v11, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentAction:Ljava/lang/String;

    .line 175
    .local v11, "intentAction":Ljava/lang/String;
    iget-object v13, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentTargetPackage:Ljava/lang/String;

    .line 176
    .local v13, "intentTargetPackage":Ljava/lang/String;
    iget-object v12, v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentTargetClass:Ljava/lang/String;

    .line 177
    .local v12, "intentTargetClass":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v10, "intent":Landroid/content/Intent;
    if-eqz v11, :cond_4

    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 179
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    :goto_1
    const-string v1, "com.android.wifi"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const-string v1, "home_as_up_enable"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    :cond_3
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v9

    .line 194
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "RecentSettingsFragment"

    const-string v2, "startTargetClass failed!"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    if-eqz v11, :cond_5

    .line 182
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 184
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->pause()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->pause()V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->pause()V

    .line 126
    :cond_2
    return-void
.end method

.method protected onRefresh()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;-><init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mCurrLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mCurrLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mCurrLocale:Ljava/util/Locale;

    .line 101
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPluginViewCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->resume()V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->resume()V

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->resume()V

    .line 112
    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0393

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "headerTxt":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->upateRecentSettings()V

    .line 94
    :cond_0
    return-void
.end method
