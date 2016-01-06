.class Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentSettingsAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 281
    iput-object p2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mContext:Landroid/content/Context;

    .line 282
    iput-object p3, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    .line 283
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 285
    return-void
.end method

.method private getPluginHeaderView(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "item"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 382
    const/4 v4, 0x0

    .line 383
    .local v4, "view":Landroid/view/View;
    iget-object v5, p1, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget-object v0, v5, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mPluginPrefKey:Ljava/lang/String;

    .line 384
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v1

    .line 386
    .local v1, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPluginViewCache:Ljava/util/Hashtable;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$800(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "view":Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .line 388
    .restart local v4    # "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 389
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 390
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPluginViewCache:Ljava/util/Hashtable;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$800(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    :goto_0
    return-object v4

    .line 393
    :cond_1
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400cd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 394
    const/high16 v5, 0x7f0e0000

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 396
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 397
    const/4 v2, 0x0

    .line 399
    .local v2, "titleString":Ljava/lang/String;
    :try_start_0
    iget-object v5, p1, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mTitleContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget v6, v6, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 402
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 400
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    .line 292
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    .line 293
    if-eqz p1, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->notifyDataSetChanged()V

    .line 298
    :goto_1
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v3

    .line 316
    :cond_1
    new-instance v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {v1, v4}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;-><init>(Landroid/database/Cursor;)V

    .line 317
    .local v1, "item":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    const/4 v2, 0x0

    .line 318
    .local v2, "titleContext":Landroid/content/Context;
    iget-object v4, v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mContext:Landroid/content/Context;

    .line 329
    :goto_1
    new-instance v3, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-direct {v3, v4, v2, v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;-><init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Landroid/content/Context;Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;)V

    goto :goto_0

    .line 322
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringPackageName:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 334
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v9, 0x7f0e0000

    const v8, 0x7f0400cd

    const/4 v7, 0x0

    .line 339
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;

    .line 340
    .local v0, "item":Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget-object v5, v5, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mPluginPrefKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 341
    const-string v5, "airplane_mode"

    iget-object v6, v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget-object v6, v6, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mPluginPrefKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 344
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 345
    .local v2, "title":Landroid/widget/TextView;
    const v5, 0x7f0e001d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 346
    .local v1, "switch_":Landroid/widget/Switch;
    invoke-virtual {v1, v7}, Landroid/widget/Switch;->setVisibility(I)V

    .line 347
    iget-object v5, v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mTitleContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget v6, v6, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$500(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 350
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mMtkAirplaneModeEnabled:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$500(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 378
    .end local v1    # "switch_":Landroid/widget/Switch;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-object p2

    .line 351
    .restart local v1    # "switch_":Landroid/widget/Switch;
    .restart local v2    # "title":Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$600(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 353
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mQcAirplaneModeEnabled:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$600(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/android/settings/AirplaneModeEnabler;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$700(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/android/settings/AirplaneModeEnabler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 356
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mDefaultAirplane:Lcom/android/settings/AirplaneModeEnabler;
    invoke-static {v5}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$700(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/android/settings/AirplaneModeEnabler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/AirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_0

    .line 360
    .end local v1    # "switch_":Landroid/widget/Switch;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0, v0, p3}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->getPluginHeaderView(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 364
    :cond_4
    iget-object v5, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 366
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 368
    .local v4, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 369
    const/4 v3, 0x0

    .line 371
    .local v3, "titleString":Ljava/lang/String;
    :try_start_0
    iget-object v5, v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mTitleContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    iget v6, v6, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 374
    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :catch_0
    move-exception v5

    goto :goto_1
.end method
