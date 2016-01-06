.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field public static final KEY_APPS:Ljava/lang/String; = "apps"

.field public static final KEY_CACHE:Ljava/lang/String; = "cache"

.field public static final KEY_DCIM:Ljava/lang/String; = "dcim"

.field public static final KEY_DOWNLOADS:Ljava/lang/String; = "downloads"

.field public static final KEY_IMAGES:Ljava/lang/String; = "images"

.field public static final KEY_MISC:Ljava/lang/String; = "misc"

.field public static final KEY_MUSIC:Ljava/lang/String; = "music"

.field public static final KEY_VIDEOS:Ljava/lang/String; = "videos"

.field private static final MEMORY_SD0_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD1_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_DETAILS:I = 0x2

.field private static final ORDER_STORAGE_LOW:I = -0x1

.field private static final ORDER_USAGE_BAR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageVolume"


# instance fields
.field private mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

.field private mFormatPreference:Landroid/preference/Preference;

.field private mItemApps:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

.field private final mMeasure:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 628
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    .line 152
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 153
    invoke-static {p1, p2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 156
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 157
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    .line 159
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    .line 161
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolumeTitle(Landroid/preference/Preference;)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0905

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addVolumePreference(Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "deviceVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/storage/StorageUtils;->isOtgVolume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    const-string v1, "StorageVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not isOtgVolume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "otgState":Ljava/lang/String;
    const-string v1, "StorageVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOtgVolume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "StorageVolume"

    const-string v2, "add otg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 146
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "colorRes"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .param p1, "excluding"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 726
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 727
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 728
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 730
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 733
    :cond_1
    return-object v1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 593
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->measure()V

    .line 594
    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 498
    .local v4, "total":J
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 499
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V
    .locals 6
    .param p1, "pref"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;
    .param p2, "size"    # J

    .prologue
    .line 574
    const-string v1, "StorageVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreference Item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 578
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 583
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    .line 585
    .local v0, "order":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    iget v3, p1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 589
    .end local v0    # "order":I
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 9

    .prologue
    const v8, 0x7f0a07fb

    const v4, 0x7f0a07fa

    const v7, 0x7f0a07fe

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 359
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "state":Ljava/lang/String;
    const-string v1, "StorageVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferencesFromState, path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emulated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isPrimary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 364
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0a07f0

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    .line 366
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_2
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 376
    :cond_3
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState 1  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 379
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState   2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->enableMount(Landroid/os/storage/StorageVolume;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0a04b0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0a04b1

    invoke-virtual {v2, v3, v8}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_10

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 441
    :cond_5
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  9 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_7

    .line 443
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 444
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 446
    :cond_6
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  10 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0803

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    :cond_7
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_8

    .line 452
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  11 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 454
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0803

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 467
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  13"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v1, "StorageVolume"

    const-string v2, "Sd card is the default storage, it can not be unmounted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 472
    :cond_9
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->updateUserOwnerState(Landroid/os/UserManager;Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 371
    :cond_a
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    const v2, 0x7f0a07ef

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    .line 386
    :cond_b
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  3 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 393
    :cond_c
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState 4  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 397
    :cond_d
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 398
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  5 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->enableMount(Landroid/os/storage/StorageVolume;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0a04b2

    const v4, 0x7f0a07fd

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v2, v7, v7}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 429
    :goto_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 434
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 405
    :cond_e
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  6 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v1, "StorageVolume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->enableMount(Landroid/os/storage/StorageVolume;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->enableMount(Landroid/os/storage/StorageVolume;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a07fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 413
    :cond_f
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  7 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 457
    :cond_10
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_8

    .line 458
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 459
    const-string v1, "StorageVolume"

    const-string v2, "updatePreferencesFromState  12 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 461
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    const v3, 0x7f0a0800

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 463
    :cond_11
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0800

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public enableMount(Landroid/os/storage/StorageVolume;)Z
    .locals 5
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    const/4 v2, 0x0

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "enable":Z
    if-nez p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v2

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "state":Ljava/lang/String;
    const-string v3, "bad_removal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "removed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 349
    :goto_1
    const-string v2, "StorageVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableUnload enable. = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPrimary = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 350
    goto :goto_0

    :cond_2
    move v0, v2

    .line 348
    goto :goto_1
.end method

.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 22

    .prologue
    .line 190
    const-string v19, "StorageVolume"

    const-string v20, "Storage Volume init."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 193
    .local v6, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removeAll()V

    .line 197
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 202
    .local v9, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v14

    .line 203
    .local v14, "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3

    const/16 v17, 0x1

    .line 205
    .local v17, "showUsers":Z
    :goto_0
    new-instance v19, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    const/16 v20, -0x2

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->setOrder(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    const v19, 0x7f0a07f1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 210
    const v19, 0x7f0a07ef

    const v20, 0x7f090003

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 216
    const v19, 0x7f0a0332

    const v20, 0x7f090025

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    :cond_0
    const v19, 0x7f0a07f3

    const v20, 0x7f090004

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 224
    const v19, 0x7f0a07f7

    const v20, 0x7f090007

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 225
    const v19, 0x7f0a07f5

    const v20, 0x7f090005

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 226
    const v19, 0x7f0a07f9

    const v20, 0x7f090008

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 227
    const v19, 0x7f0a07f8

    const v20, 0x7f090009

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 230
    const v19, 0x7f0a0333

    const v20, 0x7f090026

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 231
    const v19, 0x7f0a0334

    const v20, 0x7f090027

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "cache"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "apps"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "music"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "downloads"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "misc"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "images"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    const-string v20, "videos"

    invoke-virtual/range {v19 .. v20}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_1
    const/16 v16, 0x1

    .line 247
    .local v16, "showDetails":Z
    :goto_1
    if-eqz v16, :cond_6

    .line 248
    if-eqz v17, :cond_2

    .line 249
    new-instance v19, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 263
    if-eqz v17, :cond_6

    .line 264
    new-instance v19, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v20, 0x7f0a0812

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    const/4 v7, 0x0

    .line 267
    .local v7, "count":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 268
    .local v12, "info":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "count":I
    .local v8, "count":I
    rem-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_5

    const v5, 0x7f09000a

    .line 270
    .local v5, "colorRes":I
    :goto_3
    new-instance v18, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 272
    .local v18, "userPref":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 274
    .end local v8    # "count":I
    .restart local v7    # "count":I
    goto :goto_2

    .line 198
    .end local v5    # "colorRes":I
    .end local v7    # "count":I
    .end local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    .end local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "showDetails":Z
    .end local v17    # "showUsers":Z
    .end local v18    # "userPref":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;
    :catch_0
    move-exception v10

    .line 199
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "Failed to get current user"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 203
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v9    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v14    # "otherUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v17    # "showUsers":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 268
    .restart local v8    # "count":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "info":Landroid/content/pm/UserInfo;
    .restart local v16    # "showDetails":Z
    :cond_5
    const v5, 0x7f09000b

    goto :goto_3

    .line 278
    .end local v8    # "count":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v13

    .line 280
    .local v13, "isRemovable":Z
    :goto_4
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 281
    if-eqz v13, :cond_d

    .line 282
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0a07fa

    invoke-virtual/range {v20 .. v21}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0a07fb

    invoke-virtual/range {v20 .. v21}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addVolumePreference(Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)V

    .line 301
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v19

    if-nez v19, :cond_e

    const/4 v4, 0x1

    .line 303
    .local v4, "allowFormat":Z
    :goto_7
    if-eqz v4, :cond_8

    .line 304
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 305
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0a07ff

    invoke-virtual/range {v20 .. v21}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getFormatString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v20, v0

    const v21, 0x7f0a0800

    invoke-virtual/range {v20 .. v21}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getFormatString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addVolumePreference(Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)V

    .line 317
    :cond_8
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->isInternalVolume()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 318
    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 320
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    :try_start_1
    invoke-interface {v15}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 321
    new-instance v19, Landroid/preference/Preference;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOrder(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0a080b

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0a080c

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    :goto_9
    return-void

    .line 278
    .end local v4    # "allowFormat":Z
    .end local v13    # "isRemovable":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 287
    .restart local v13    # "isRemovable":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0a07fa

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0a07fb

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 293
    :cond_d
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->initPhoneStorageMountTogglePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/os/storage/StorageManager;)V

    goto/16 :goto_6

    .line 301
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 310
    .restart local v4    # "allowFormat":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0a07ff

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setTitle(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f0a0800

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    .line 326
    .restart local v15    # "pm":Landroid/content/pm/IPackageManager;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 330
    :catch_1
    move-exception v19

    goto :goto_9
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 7
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 647
    const/4 v0, 0x0

    .line 652
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v3, :cond_2

    .line 654
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/MediaFormat;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 657
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v3}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolumeBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 702
    :cond_0
    :goto_0
    return-object v0

    .line 660
    :cond_1
    const-string v3, "storage_volume"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 663
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_3

    .line 664
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 665
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.security"

    const-string v4, "com.flyme.deviceoriginalsettingsapplication.ApplicationActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 666
    :cond_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    if-eq p1, v3, :cond_0

    .line 669
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_5

    .line 671
    const-string v3, "row"

    const-string v4, "ro.lenovo.region"

    const-string v5, "prc"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 672
    .local v1, "isRowProduct":Z
    if-eqz v1, :cond_4

    .line 673
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v3, "vnd.android.cursor.dir/artistalbum"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 678
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "audio/mp3"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 692
    .end local v1    # "isRowProduct":Z
    :cond_5
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_6

    .line 693
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 695
    const-string v3, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 696
    :cond_6
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    if-ne p1, v3, :cond_0

    .line 697
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    const-string v3, "vnd.android.cursor.dir/video"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 618
    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 614
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 622
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 598
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 599
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 603
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 604
    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isUsbConnected"    # Z
    .param p2, "usbFunction"    # Ljava/lang/String;

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    .line 608
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    .line 609
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 610
    return-void
.end method

.method public updateApproximate(JJJ)V
    .locals 7
    .param p1, "totalSize"    # J
    .param p3, "availSize"    # J
    .param p5, "osSize"    # J

    .prologue
    const/4 v5, 0x0

    .line 478
    const-string v2, "StorageVolume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateApproximate totalSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", availSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 481
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    .line 482
    sub-long v0, p1, p3

    .line 483
    .local v0, "usedSize":J
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->clear()V

    .line 485
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p5, p6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    long-to-float v3, p5

    long-to-float v4, p1

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    iget v4, v4, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    const v4, -0x777778

    invoke-virtual {v2, v5, v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    .line 491
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->commit()V

    .line 493
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 494
    return-void
.end method

.method public updateDetails(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 28
    .param p1, "details"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 507
    const-string v24, "StorageVolume"

    const-string v25, " updateDetails"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v24

    if-eqz v24, :cond_1

    :cond_0
    const/16 v16, 0x1

    .line 509
    .local v16, "showDetails":Z
    :goto_0
    if-nez v16, :cond_2

    .line 571
    :goto_1
    return-void

    .line 508
    .end local v16    # "showDetails":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 511
    .restart local v16    # "showDetails":Z
    :cond_2
    const-wide/16 v14, 0x0

    .line 512
    .local v14, "pictureSize":J
    const-wide/16 v22, 0x0

    .line 513
    .local v22, "videoSize":J
    const-wide/16 v12, 0x0

    .line 514
    .local v12, "musicSize":J
    const-wide/16 v4, 0x0

    .line 515
    .local v4, "dcimSize":J
    const-wide/16 v6, 0x0

    .line 516
    .local v6, "downloadsSize":J
    const-wide/16 v10, 0x0

    .line 518
    .local v10, "miscSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->osSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->clear()V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemOsSize:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->osSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 529
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v24

    if-nez v24, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v24

    if-eqz v24, :cond_6

    :cond_4
    const/4 v9, 0x1

    .line 534
    .local v9, "measureMedia":Z
    :goto_3
    const-string v24, "StorageVolume"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "measureMedia is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    if-eqz v9, :cond_7

    .line 536
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v14

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14, v15}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 540
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v22

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 544
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v12

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v12, v13}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 547
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v6

    .line 549
    const-string v24, "StorageVolume"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "downloads size is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 558
    :goto_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->osSize:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-wide/from16 v26, v0

    sub-long v18, v24, v26

    .line 560
    .local v18, "usedSize":J
    sub-long v24, v18, v14

    sub-long v24, v24, v22

    sub-long v24, v24, v12

    sub-long v10, v24, v6

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10, v11}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    .line 566
    .local v17, "userPref":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v20

    .line 567
    .local v20, "userSize":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    goto :goto_5

    .line 526
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "measureMedia":Z
    .end local v17    # "userPref":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;
    .end local v18    # "usedSize":J
    .end local v20    # "userSize":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->clear()V

    goto/16 :goto_2

    .line 530
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 553
    .restart local v9    # "measureMedia":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemVideos:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemImages:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_4

    .line 570
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v18    # "usedSize":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_1
.end method

.method public updateStorageVolumePrefCategory(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 737
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 738
    :cond_0
    const-string v0, "StorageVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD SWAP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    .line 740
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolume(Landroid/os/storage/StorageVolume;)V

    .line 741
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->mCategoryExts:Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->setVolumeTitle(Landroid/preference/Preference;)V

    .line 742
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 743
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    goto :goto_0
.end method
