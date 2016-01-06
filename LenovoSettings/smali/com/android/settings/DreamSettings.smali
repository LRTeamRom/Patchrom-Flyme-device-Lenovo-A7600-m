.class public Lcom/flyme/deviceoriginalsettings/DreamSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;,
        Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DIALOG_WHEN_TO_DREAM:I = 0x1

.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Lcom/flyme/deviceoriginalsettings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    .line 432
    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DreamSettings;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Lcom/flyme/deviceoriginalsettings/DreamBackend;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DreamSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DreamSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "titleRes"    # I
    .param p3, "actionEnum"    # I
    .param p4, "isEnabled"    # Z
    .param p5, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 192
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 193
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 194
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 195
    new-instance v1, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;

    invoke-direct {v1, p0, p5}, Lcom/flyme/deviceoriginalsettings/DreamSettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 202
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 227
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0a07a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 230
    .local v1, "items":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    .local v0, "initialSelection":I
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a07aa

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/flyme/deviceoriginalsettings/DreamSettings$5;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 230
    .end local v0    # "initialSelection":I
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public static getSummaryResource(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 278
    new-instance v3, Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 279
    .local v3, "backend":Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 280
    .local v4, "isEnabled":Z
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    .line 281
    .local v2, "activatedOnSleep":Z
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    .line 282
    .local v0, "activatedOnDock":Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 283
    .local v1, "activatedOnEither":Z
    :goto_0
    if-nez v4, :cond_2

    const v5, 0x7f0a07a9

    :cond_0
    :goto_1
    return v5

    .end local v1    # "activatedOnEither":Z
    :cond_1
    move v1, v5

    .line 282
    goto :goto_0

    .line 283
    .restart local v1    # "activatedOnEither":Z
    :cond_2
    if-eqz v1, :cond_3

    const v5, 0x7f0a07a5

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const v5, 0x7f0a07a7

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    const v5, 0x7f0a07a8

    goto :goto_1
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "backend":Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 293
    .local v1, "isEnabled":Z
    if-nez v1, :cond_0

    .line 294
    const v2, 0x7f0a07a9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 321
    return-void
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 301
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z

    .line 303
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v2

    .line 304
    .local v2, "dreamsEnabled":Z
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 305
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 307
    :cond_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->clear()V

    .line 308
    if-eqz v2, :cond_1

    .line 309
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 312
    .end local v1    # "dreamInfos":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 313
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, "arr$":[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 314
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "arr$":[Landroid/view/MenuItem;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    iput-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z

    .line 316
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 135
    const-string v2, "onActivityCreated(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 140
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    .local v0, "emptyView":Landroid/widget/TextView;
    const v2, 0x7f0a02ca

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 146
    new-instance v2, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    .line 147
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mAdapter:Lcom/flyme/deviceoriginalsettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 85
    const-string v2, "onCreate(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-direct {v2, v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    .line 96
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    .line 100
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, "padding":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 125
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x1

    .line 207
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    if-ne p1, v4, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v0, "onCreateOptionsMenu()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 157
    .local v4, "isEnabled":Z
    const v2, 0x7f0a07ab

    new-instance v5, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 170
    .local v6, "start":Landroid/view/MenuItem;
    const v2, 0x7f0a07aa

    new-instance v5, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 185
    .local v7, "whenToDream":Landroid/view/MenuItem;
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    aput-object v6, v0, v3

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 188
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 130
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 131
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 258
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 263
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 265
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings;->mPackageReceiver:Lcom/flyme/deviceoriginalsettings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    return-void
.end method
