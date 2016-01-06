.class public Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final RECENT_TIME_INTERVAL_MILLIS:I = 0xdbba0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 51
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    return-void
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "isHighBattery"    # Z
    .param p4, "listener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 78
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    if-eqz p3, :cond_0

    .line 82
    const v1, 0x7f0a0881

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 86
    :goto_0
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    return-object v0

    .line 84
    :cond_0
    const v1, 0x7f0a0882

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 15
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v4, 0x0

    .line 136
    .local v4, "highBattery":Z
    const/4 v6, 0x0

    .line 138
    .local v6, "normalBattery":Z
    const-wide/32 v12, 0xdbba0

    sub-long v10, p1, v12

    .line 139
    .local v10, "recentLocationCutoffTime":J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 140
    .local v3, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-ltz v9, :cond_0

    .line 141
    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    const/4 v6, 0x1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_1
    const/4 v4, 0x1

    .line 147
    goto :goto_0

    .line 154
    .end local v3    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v4, :cond_5

    if-nez v6, :cond_5

    .line 155
    sget-object v9, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 156
    sget-object v9, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hadn\'t used location within the time interval."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    const/4 v8, 0x0

    .line 187
    :cond_4
    :goto_1
    return-object v8

    .line 163
    :cond_5
    const/4 v8, 0x0

    .line 165
    .local v8, "pref":Landroid/preference/Preference;
    :try_start_0
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v9, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 173
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    if-ne v9, v12, :cond_6

    .line 174
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v13, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps$PackageEntryClickedListener;

    invoke-direct {v13, p0, v7}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;Ljava/lang/String;)V

    invoke-direct {p0, v9, v12, v4, v13}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v8

    goto :goto_1

    .line 179
    :cond_6
    sget-object v9, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 180
    sget-object v9, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with Uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " belongs to another inactive account, ignored."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->mActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const-string v11, "appops"

    invoke-virtual {v10, v11}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 98
    .local v0, "aoManager":Landroid/app/AppOpsManager;
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v0, v10}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v8, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 107
    .local v4, "now":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 110
    .local v6, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    .line 111
    .local v9, "uid":I
    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_1

    const-string v10, "android"

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x1

    .line 113
    .local v3, "isAndroidOs":Z
    :goto_1
    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 114
    invoke-direct {p0, v4, v5, v6}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v7

    .line 115
    .local v7, "pref":Landroid/preference/Preference;
    if-eqz v7, :cond_0

    .line 116
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v3    # "isAndroidOs":Z
    .end local v7    # "pref":Landroid/preference/Preference;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 121
    .end local v6    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v9    # "uid":I
    :cond_2
    return-object v8

    .line 98
    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method
