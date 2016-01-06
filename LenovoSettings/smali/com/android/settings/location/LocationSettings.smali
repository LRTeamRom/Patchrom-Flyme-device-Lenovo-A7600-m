.class public Lcom/flyme/deviceoriginalsettings/location/LocationSettings;
.super Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field private static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field private static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final KEY_LOCATION_SERVICES:Ljava/lang/String; = "location_services"

.field private static final KEY_RECENT_LOCATION_REQUESTS:Ljava/lang/String; = "recent_location_requests"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private mAGPSSettingPreference:Landroid/preference/Preference;

.field private mAGPSSettingPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;-><init>()V

    .line 101
    new-instance v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 150
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 354
    const-string v4, "location_services"

    invoke-virtual {p2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 356
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    invoke-direct {v2, p1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 357
    .local v2, "injector":Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v3

    .line 359
    .local v3, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v4, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$4;

    invoke-direct {v4, p0, v2}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v4, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 375
    invoke-direct {p0, v3, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$2;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 204
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 206
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 18

    .prologue
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 210
    .local v1, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 211
    .local v9, "root":Landroid/preference/PreferenceScreen;
    if-eqz v9, :cond_0

    .line 212
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 214
    :cond_0
    const v12, 0x7f050031

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 217
    const-string v12, "location_mode"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v13, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 247
    new-instance v12, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    .line 248
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const v13, 0x7f0a036e

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V

    .line 256
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const v13, 0x7f04006c

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v13}, Landroid/preference/Preference;->getOrder()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setOrder(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_1
    :goto_1
    const-string v12, "recent_location_requests"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 308
    new-instance v7, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;

    invoke-direct {v7, v1}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    .line 309
    .local v7, "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v8

    .line 310
    .local v8, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 321
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 326
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 328
    .local v5, "padding":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v5, v15}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 329
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    const/16 v13, 0x10

    const/16 v14, 0x10

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 331
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v14, Landroid/app/ActionBar$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const v17, 0x800015

    invoke-direct/range {v14 .. v17}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v12, v13, v14}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 337
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->refreshLocationMode()V

    .line 340
    return-object v9

    .line 254
    .end local v5    # "padding":I
    .end local v7    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .end local v8    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const v13, 0x7f0a036d

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 264
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_gps_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_gps_supl_host"

    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_gps_supl_port"

    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    .line 271
    :cond_4
    const/4 v10, 0x0

    .line 275
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 277
    .local v6, "properties":Ljava/util/Properties;
    new-instance v4, Ljava/io/File;

    const-string v12, "/etc/gps.conf"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v4, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v11, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_gps_supl_host"

    const-string v14, "SUPL_HOST"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "assisted_gps_supl_port"

    const-string v14, "SUPL_PORT"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    if-eqz v11, :cond_1

    .line 294
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 295
    :catch_0
    move-exception v12

    goto/16 :goto_1

    .line 285
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "properties":Ljava/util/Properties;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 287
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v12, "LocationSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not open GPS configuration file /etc/gps.conf, Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    if-eqz v10, :cond_1

    .line 294
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 295
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 290
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_4
    if-eqz v10, :cond_5

    .line 294
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 297
    :cond_5
    :goto_5
    throw v12

    .line 314
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .restart local v8    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_6
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 315
    .local v2, "banner":Landroid/preference/Preference;
    const v12, 0x7f040078

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 316
    const v12, 0x7f0a087f

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 317
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 295
    .end local v2    # "banner":Landroid/preference/Preference;
    .end local v7    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .end local v8    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v13

    goto :goto_5

    .line 290
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "properties":Ljava/util/Properties;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 285
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v10, v11

    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private updateAGPSSettingPreference()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 130
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    if-nez v5, :cond_0

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 136
    .local v3, "um":Landroid/os/UserManager;
    const-string v5, "no_share_location"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 138
    .local v2, "restricted":Z
    if-nez v2, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    if-ne v1, v0, :cond_2

    .line 140
    .local v0, "enabled":Z
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    const-string v4, "LocationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAGPSSettingPreference, enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v4

    .line 138
    goto :goto_1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 384
    const v0, 0x7f0a0c62

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v1, 0x7f0a027e

    .line 443
    if-eqz p2, :cond_0

    .line 444
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setLocationMode(I)V

    .line 449
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 409
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    .line 410
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    if-nez p2, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 411
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 420
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->updateAGPSSettingPreference()V

    .line 424
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 426
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 428
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 432
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 436
    :cond_1
    return-void

    .line 391
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a087d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a087c

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a087b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 400
    :pswitch_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a087a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 409
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_3
    move v3, v2

    .line 410
    goto :goto_2

    :cond_4
    move v1, v2

    .line 411
    goto :goto_3

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onPause()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 187
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onResume()V

    .line 164
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 165
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 167
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 173
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->updateAGPSSettingPreference()V

    .line 176
    return-void
.end method
