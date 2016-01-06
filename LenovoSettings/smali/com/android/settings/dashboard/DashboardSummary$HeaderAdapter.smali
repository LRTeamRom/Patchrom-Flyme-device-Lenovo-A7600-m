.class Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/lenovo/settings/LenovoStatusStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;",
        "Lcom/lenovo/settings/LenovoStatusStateChangeListener;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_BUTTON:I = 0x3

.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x6

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_PLUGIN:I = 0x5

.field static final HEADER_TYPE_STATUS:I = 0x4

.field static final HEADER_TYPE_SWITCH:I = 0x2

.field private static final MSG_UPDATE_SIM_STATE:I = 0x10


# instance fields
.field private mAirPlaneDependency:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

.field private mCurrLocale:Ljava/util/Locale;

.field private mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAirPlaneMode:Z

.field private mIsSimInserted:Z

.field private mIsSimNotAvailable:Z

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

.field private mRomUI_PreferenceCategoryBackgroundFirst:I

.field private mRomUI_PreferenceCategoryBackgroundNormal:I

.field private final mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v3, 0x0

    .line 492
    invoke-direct {p0, p1, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 443
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    .line 445
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    .line 451
    new-instance v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$1;-><init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mHandler:Landroid/os/Handler;

    .line 494
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    .line 495
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 501
    new-instance v1, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    .line 502
    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    .line 503
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 505
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    new-instance v1, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    .line 515
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mCurrLocale:Ljava/util/Locale;

    .line 516
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mPluginViewCache:Ljava/util/Hashtable;

    .line 518
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/PlatformApi;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/manager/PlatformApi;->getRomUI_PreferenceCategoryBackgroundFirst(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mRomUI_PreferenceCategoryBackgroundFirst:I

    .line 519
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/PlatformApi;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/manager/PlatformApi;->getRomUI_PreferenceCategoryBackgroundNormal(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mRomUI_PreferenceCategoryBackgroundNormal:I

    .line 521
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAirPlaneDependency:Ljava/util/HashMap;

    .line 522
    const-string v1, "toggle_airplane"

    invoke-static {v1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPluginDependencyByKey(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 523
    .local v0, "airPlaneDep":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAirPlaneDependency:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 529
    :cond_0
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 530
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus(Z)V

    .line 531
    return-void

    .line 508
    .end local v0    # "airPlaneDep":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    new-instance v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    goto :goto_0

    .line 512
    :cond_2
    new-instance v1, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    goto :goto_0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 477
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0e000a

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x5

    .line 486
    :goto_0
    return v0

    .line 479
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0e036c

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 480
    const/4 v0, 0x2

    goto :goto_0

    .line 481
    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0e0392

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0e0393

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 482
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 483
    :cond_3
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_4

    .line 484
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasNextIcon(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 872
    const-wide/32 v0, 0x7f0e036c

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 873
    const/4 v0, 0x0

    .line 875
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private romui_v2_bindItemBackground(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 536
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    if-nez v1, :cond_0

    .line 537
    if-nez p1, :cond_1

    .line 538
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mRomUI_PreferenceCategoryBackgroundFirst:I

    if-eqz v1, :cond_0

    .line 539
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mRomUI_PreferenceCategoryBackgroundFirst:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mRomUI_PreferenceCategoryBackgroundNormal:I

    if-eqz v1, :cond_0

    .line 543
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mRomUI_PreferenceCategoryBackgroundNormal:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 781
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 783
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 784
    check-cast v1, Landroid/view/ViewGroup;

    .line 785
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 786
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 785
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 789
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setHeaderIcon(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 863
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 864
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 866
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 867
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    return-void
.end method

.method private updateAirPlaneMode(Z)V
    .locals 6
    .param p1, "notifyData"    # Z

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 808
    .local v0, "tmpEnabled":Z
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-eq v1, v0, :cond_1

    .line 809
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    .line 810
    if-eqz v0, :cond_2

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    .line 817
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 821
    :cond_1
    return-void

    .line 813
    :cond_2
    if-eqz p1, :cond_0

    .line 814
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V
    .locals 11
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 713
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 715
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "accType":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAuthHelper:Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/flyme/deviceoriginalsettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 718
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setHeaderIcon(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 722
    .end local v0    # "accType":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 724
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 725
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :goto_2
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 732
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "enable"

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0e03a6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 734
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 735
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 736
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 737
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 738
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 749
    :cond_0
    :goto_3
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->hasNextIcon(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 751
    iget-object v2, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->nextIcon:Landroid/view/View;

    .line 752
    .local v2, "statusView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 753
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 756
    .end local v2    # "statusView":Landroid/view/View;
    :cond_1
    return-void

    .line 716
    .end local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v0    # "accType":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 720
    .end local v0    # "accType":Ljava/lang/String;
    :cond_3
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 728
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    :cond_4
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 741
    :cond_5
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 742
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    .line 745
    :cond_6
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 746
    iget-object v4, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updatePluginHeaderView(Landroid/view/View;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    .param p3, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 759
    const/4 v2, 0x0

    .line 760
    .local v2, "view":Landroid/view/View;
    iget-object v3, p3, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v1

    .line 763
    .local v1, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 764
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mPluginViewCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "view":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 773
    .restart local v2    # "view":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    .line 774
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->isPluginItemEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 777
    :cond_0
    return-object v2

    .line 766
    :cond_1
    move-object v2, p1

    .line 768
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p3, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v3, p2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSimStatus(Z)V
    .locals 10
    .param p1, "notifyData"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, "simNotAvailable":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v5

    .line 830
    .local v5, "telephonyPlugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v6

    if-lez v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    .line 832
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-nez v6, :cond_3

    .line 833
    :cond_0
    const/4 v0, 0x1

    .line 854
    :goto_1
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    if-eq v6, v0, :cond_1

    .line 855
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    .line 856
    if-eqz p1, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 860
    :cond_1
    return-void

    :cond_2
    move v6, v8

    .line 830
    goto :goto_0

    .line 835
    :cond_3
    invoke-virtual {v5}, Lcom/lenovo/settings/manager/TelephonyPlugin;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 836
    invoke-virtual {v5, v8}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getSimState(I)I

    move-result v2

    .line 837
    .local v2, "simState0":I
    invoke-virtual {v5, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getSimState(I)I

    move-result v3

    .line 838
    .local v3, "simState1":I
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 839
    const/4 v0, 0x1

    goto :goto_1

    .line 841
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 844
    .end local v2    # "simState0":I
    .end local v3    # "simState1":I
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 845
    .local v4, "teleManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 846
    .local v1, "simState":I
    if-eq v1, v9, :cond_6

    .line 847
    const/4 v0, 0x1

    goto :goto_1

    .line 849
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 552
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 579
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 580
    .local v1, "headerType":I
    const/4 v6, 0x0

    .line 581
    .local v6, "view":Landroid/view/View;
    const-wide/32 v8, 0x7f0e036c

    iget-wide v10, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    const-wide/32 v8, 0x7f0e0395

    iget-wide v10, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 582
    :cond_0
    const/4 p2, 0x0

    .line 585
    :cond_1
    if-eqz p2, :cond_2

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    const/4 v7, 0x5

    if-ne v1, v7, :cond_6

    .line 587
    :cond_2
    new-instance v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;)V

    .line 588
    .local v2, "holder":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 648
    :cond_3
    :goto_0
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 655
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 701
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/settings/manager/PlatformApi;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;

    move-result-object v7

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/settings/manager/PlatformApi;->isRomUI_v2(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 702
    invoke-direct {p0, p1, v6}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->romui_v2_bindItemBackground(ILandroid/view/View;)V

    .line 704
    :cond_4
    return-object v6

    .line 590
    :pswitch_1
    iget-object v7, v0, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v4

    .line 593
    .local v4, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 594
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mPluginViewCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "view":Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 595
    .restart local v6    # "view":Landroid/view/View;
    if-nez v6, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 597
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mPluginViewCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 600
    :cond_5
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400a7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 602
    const v7, 0x7f0e0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 603
    const/high16 v7, 0x7f0e0000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 604
    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 609
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :pswitch_2
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04009a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    .line 610
    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 614
    :pswitch_3
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400ab

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 615
    const v7, 0x7f0e0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 616
    const/high16 v7, 0x7f0e0000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 617
    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 618
    const v7, 0x7f0e001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 619
    const v7, 0x7f0e0172

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->nextIcon:Landroid/view/View;

    goto/16 :goto_0

    .line 623
    :pswitch_4
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400a3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 624
    const v7, 0x7f0e0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 625
    const/high16 v7, 0x7f0e0000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 626
    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 627
    const v7, 0x7f0e01cd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 628
    const v7, 0x7f0e0135

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    .line 629
    const v7, 0x7f0e0172

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->nextIcon:Landroid/view/View;

    goto/16 :goto_0

    .line 633
    :pswitch_5
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400a7

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 634
    const v7, 0x7f0e0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 635
    const/high16 v7, 0x7f0e0000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 636
    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 640
    :pswitch_6
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400a9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 641
    const v7, 0x7f0e0003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 642
    const/high16 v7, 0x7f0e0000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 643
    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 644
    const v7, 0x7f0e01ce

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    .line 645
    const v7, 0x7f0e0172

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->nextIcon:Landroid/view/View;

    goto/16 :goto_0

    .line 650
    .end local v2    # "holder":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    :cond_6
    move-object v6, p2

    .line 651
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;

    .restart local v2    # "holder":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 657
    :pswitch_7
    invoke-direct {p0, v6, v2, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updatePluginHeaderView(Landroid/view/View;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;

    goto/16 :goto_2

    .line 661
    :pswitch_8
    iget-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 666
    :pswitch_9
    iget-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0e036c

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    .line 667
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 668
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v7, :cond_7

    .line 669
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    iget-object v8, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 680
    :cond_7
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 670
    :cond_8
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 671
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    if-eqz v7, :cond_7

    .line 672
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    iget-object v8, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 674
    :cond_9
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    if-eqz v7, :cond_7

    .line 675
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    iget-object v8, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 684
    :pswitch_a
    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 688
    :pswitch_b
    const/4 v5, 0x0

    .line 689
    .local v5, "status":Ljava/lang/String;
    iget-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0e0392

    cmp-long v7, v8, v10

    if-nez v7, :cond_a

    .line 690
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->getRunningState()Ljava/lang/String;

    move-result-object v5

    .line 696
    :goto_4
    iget-object v7, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;->status:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    invoke-direct {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 691
    :cond_a
    iget-wide v8, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0e0393

    cmp-long v7, v8, v10

    if-nez v7, :cond_b

    .line 692
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->getRunningState()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 694
    :cond_b
    const-string v7, "DashboardSummary"

    const-string v8, "getView HEADER_TYPE_STATUS, no."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch

    .line 655
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginItemEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 792
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mAirPlaneDependency:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    const-string v2, "mobile_network_settings"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimNotAvailable:Z

    if-nez v2, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 794
    goto :goto_0

    .line 796
    :cond_2
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsAirPlaneMode:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mIsSimInserted:Z

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onStateChange(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->notifyDataSetChanged()V

    .line 710
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->pause()V

    .line 905
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 909
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->pause()V

    .line 910
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 911
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->pause()V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->pause()V

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    if-eqz v0, :cond_2

    .line 918
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->pause()V

    .line 920
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->resume()V

    .line 880
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mWifiEnabler:Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/WiFiStatusEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 884
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->resume()V

    .line 885
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mBluetoothEnabler:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V

    .line 886
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->resume()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->resume()V

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    if-eqz v0, :cond_2

    .line 893
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mDefaultAirplane:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->resume()V

    .line 896
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mCurrLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 897
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mCurrLocale:Ljava/util/Locale;

    .line 898
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mPluginViewCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 900
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->mPluginViewCache:Ljava/util/Hashtable;

    const-string v1, "mobile_4g_settings"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    return-void
.end method

.method public updateAirPlaneMode()V
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateAirPlaneMode(Z)V

    .line 804
    return-void
.end method

.method public updateSimStatus()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$HeaderAdapter;->updateSimStatus(Z)V

    .line 825
    return-void
.end method
