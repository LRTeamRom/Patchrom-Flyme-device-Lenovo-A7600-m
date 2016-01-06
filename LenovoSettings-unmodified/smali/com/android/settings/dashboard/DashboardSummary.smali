.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;,
        Lcom/android/settings/dashboard/DashboardSummary$RecentSettingsTask;
    }
.end annotation


# static fields
.field private static final ACTION_SIMINFO_UPDATED_L:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field private static final LOG_TAG:Ljava/lang/String; = "DashboardSummary"

.field private static final MSG_MOVE_TO_HEADER:I = 0x2

.field private static final MSG_REBUILD_UI:I = 0x1


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

.field private mAirplaneReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mSimInfoReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 417
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->moveToHeaderIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method private handlePluginClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 299
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->isPluginItemEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    :goto_0
    return-void

    .line 305
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DashboardSummary"

    const-string v3, "handlePluginClick failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private moveToHeaderIfNeeded(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 362
    const-string v5, "DashboardSummary"

    const-string v6, "Cannot move the DashboardSummary first head yet as the Fragment is not added"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 366
    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 367
    .local v3, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->needToMoveDashboardHeader()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getDashboardHeaderKey()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "headerKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getCount()I

    move-result v4

    .line 370
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 371
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v5, v2}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 372
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0e036c

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    const-string v5, "toggle_airplane"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "data_connect_settings"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mobile_4g_settings"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 376
    :cond_2
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 377
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveToHeader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->revertDashboardToInitial()V

    goto :goto_0

    .line 379
    .restart local v0    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_4
    const/4 v5, 0x5

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 381
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 382
    const-string v5, "LOG_TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveToHeader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 370
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 313
    const-string v6, "DashboardSummary"

    const-string v7, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 317
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 319
    .local v4, "start":J
    check-cast p1, Lcom/android/settings/SettingsActivity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v3

    .line 321
    .local v3, "header":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateAirPlaneState()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateSimState()V

    .line 324
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-nez v6, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 327
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v6, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v3, v8, v2}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .line 328
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->resume()V

    .line 336
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 337
    .local v0, "delta":J
    const-string v6, "DashboardSummary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rebuildUI took: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0    # "delta":J
    :cond_1
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private registerBroadcastReceiver()V
    .locals 6

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 244
    new-instance v3, Lcom/android/settings/dashboard/DashboardSummary$2;

    invoke-direct {v3, p0}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "simStateAction":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 264
    new-instance v3, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    :goto_1
    return-void

    .line 281
    :catch_0
    move-exception v3

    goto :goto_1

    .line 258
    .end local v2    # "simStateAction":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 355
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 287
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getConstantStringACTION_SIM_INFO_UPDATE()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "simStateAction":Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSimInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    :cond_1
    return-void
.end method


# virtual methods
.method protected createRefreshableView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    const v0, 0x7f04003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "v"    # Landroid/view/View;
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
    .line 176
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v3, :cond_3

    .line 177
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceActivity$Header;

    .line 179
    .local v11, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0e000a

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0e0392

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v13

    .line 182
    .local v13, "index":Lcom/lenovo/settings/search/Index;
    invoke-virtual {v13}, Lcom/lenovo/settings/search/Index;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 184
    .local v10, "cn":Landroid/content/ComponentName;
    if-eqz v10, :cond_4

    .line 185
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    .line 199
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v13    # "index":Lcom/lenovo/settings/search/Index;
    :cond_1
    :goto_0
    iget-wide v4, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0e000a

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    .line 200
    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/settings/dashboard/DashboardSummary;->handlePluginClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 230
    :cond_2
    :goto_1
    iget-wide v4, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0e036c

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .line 232
    .local v12, "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    if-eqz v12, :cond_3

    iget-object v3, v12, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, v12, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->toggle()V

    .line 238
    .end local v11    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "holder":Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    :cond_3
    return-void

    .line 187
    .restart local v10    # "cn":Landroid/content/ComponentName;
    .restart local v11    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v13    # "index":Lcom/lenovo/settings/search/Index;
    :cond_4
    iget-object v3, v11, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, "pluginKey":Ljava/lang/String;
    const-string v3, "power_setting"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    const-string v3, "com.mediatek.schpwronoff"

    invoke-virtual {v13, v3}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_5
    const-string v3, "lepower_settings"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "com.lenovo.powersetting"

    invoke-virtual {v13, v3}, Lcom/lenovo/settings/search/Index;->addToNotKillWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v13    # "index":Lcom/lenovo/settings/search/Index;
    .end local v14    # "pluginKey":Ljava/lang/String;
    :cond_6
    iget-wide v4, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0e039a

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 204
    .local v2, "context":Landroid/content/Context;
    const v3, 0x7f0a0368

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0368

    const/4 v6, 0x0

    const-string v7, "com.lenovo.leos.cloud.sync.intent.action.SYNC_SETTING"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v2    # "context":Landroid/content/Context;
    :cond_7
    :try_start_0
    iget-object v3, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 216
    iget v8, v11, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 217
    .local v8, "titleRes":I
    if-nez v8, :cond_8

    .line 218
    iget v8, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v11, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 225
    .end local v8    # "titleRes":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 222
    :cond_9
    iget-object v3, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onPause()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->unregisterBroadcastReceiver()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 169
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->pause()V

    .line 172
    :cond_0
    return-void
.end method

.method protected onRefresh()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$RecentSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$RecentSettingsTask;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary$RecentSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 147
    invoke-super {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->registerBroadcastReceiver()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 154
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->resume()V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0392

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "headerTxt":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method protected updateAirPlaneState()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 342
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->updateAirPlaneMode()V

    .line 345
    :cond_0
    return-void
.end method

.method protected updateSimState()V
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 349
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 350
    check-cast v0, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus()V

    .line 352
    :cond_0
    return-void
.end method
