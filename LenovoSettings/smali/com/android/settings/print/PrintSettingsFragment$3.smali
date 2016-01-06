.class final Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$3;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isShowPrintService()Z
    .locals 3

    .prologue
    .line 612
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    const-string v2, "prc"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$3;->isShowPrintService()Z

    move-result v10

    if-nez v10, :cond_1

    .line 559
    const/4 v3, 0x0

    .line 593
    :cond_0
    return-object v3

    .line 562
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v3, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 565
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const-string v10, "print"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintManager;

    .line 568
    .local v5, "printManager":Landroid/print/PrintManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0a2d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "screenTitle":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 570
    .local v1, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    iput-object v6, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 571
    iput-object v6, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 572
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v5}, Landroid/print/PrintManager;->getInstalledPrintServices()Ljava/util/List;

    move-result-object v9

    .line 576
    .local v9, "services":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 577
    .local v8, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 578
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/printservice/PrintServiceInfo;

    .line 580
    .local v7, "service":Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v1    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v1, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 585
    .restart local v1    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 586
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 587
    const v10, 0x7f0a0a35

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 588
    const v10, 0x7f0a0a36

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 589
    iput-object v6, v1, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 590
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$3;->isShowPrintService()Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    const/4 v1, 0x0

    .line 608
    :goto_0
    return-object v1

    .line 602
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v1, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 605
    .local v0, "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v2, 0x7f050037

    iput v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 606
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
