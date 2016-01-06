.class public Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersLoader;,
        Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;,
        Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;,
        Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1

.field private static final LOADER_ID_PRINTERS_LOADER:I = 0x1


# instance fields
.field private mAddPrintersIntent:Landroid/content/Intent;

.field private mAddPrintersTitle:Ljava/lang/CharSequence;

.field private mAnnounceFilterResult:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mLastUnfilteredItemCount:I

.field private mPreferenceKey:Ljava/lang/String;

.field private mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field private mServiceEnabled:Z

.field private final mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    .line 93
    new-instance v0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    .line 688
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->announceSearchResult()V

    return-void
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method

.method private announceSearchResult()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->post()V

    .line 507
    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 444
    new-instance v1, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 445
    .local v1, "toggleSwitch":Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 447
    .local v0, "padding":I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setPaddingRelative(IIII)V

    .line 448
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 450
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 454
    return-object v1
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 285
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 287
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    .line 288
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$3;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 305
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$4;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    return-void
.end method

.method private onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 170
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 171
    .local v0, "service":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p2, :cond_0

    .line 173
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/flyme/deviceoriginalsettings/print/SettingsUtils;->writeEnabledPrintServices(Landroid/content/Context;Ljava/util/List;)V

    .line 178
    return-void

    .line 175
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 11

    .prologue
    const v10, 0x7f0e002e

    const v9, 0x7f0a0a3b

    const v8, 0x7f0a0a32

    const v7, 0x7f040058

    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 225
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 226
    .local v0, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "emptyView":Landroid/view/View;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0138

    if-eq v4, v5, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    const/4 v1, 0x0

    .line 232
    :cond_0
    if-nez v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 235
    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 237
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 268
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 242
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0139

    if-eq v4, v5, :cond_3

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    const/4 v1, 0x0

    .line 247
    :cond_3
    if-nez v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040059

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 254
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0138

    if-eq v4, v5, :cond_5

    .line 255
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    const/4 v1, 0x0

    .line 258
    :cond_5
    if-nez v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 261
    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 263
    .restart local v3    # "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 265
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateUiForArguments()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 320
    .local v3, "arguments":Landroid/os/Bundle;
    const-string v9, "EXTRA_PREFERENCE_KEY"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    .line 323
    const-string v9, "EXTRA_CHECKED"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 324
    .local v4, "enabled":Z
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v9, v4}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 327
    const-string v9, "EXTRA_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "EXTRA_TITLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    :cond_0
    const-string v9, "EXTRA_SETTINGS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "settingsTitle":Ljava/lang/String;
    const-string v9, "EXTRA_SETTINGS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "settingsComponentName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 336
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 338
    .local v7, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 340
    .local v5, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 342
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_1

    .line 343
    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 344
    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 350
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "settingsIntent":Landroid/content/Intent;
    :cond_1
    const-string v9, "EXTRA_ADD_PRINTERS_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "addPrintersTitle":Ljava/lang/String;
    const-string v9, "EXTRA_ADD_PRINTERS_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "addPrintersComponentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 356
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 358
    .local v2, "addPritnersIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 360
    .restart local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 362
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_2

    .line 363
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    .line 364
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    .line 370
    .end local v2    # "addPritnersIntent":Landroid/content/Intent;
    .end local v5    # "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string v9, "EXTRA_ENABLE_WARNING_TITLE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 374
    const-string v9, "EXTRA_ENABLE_WARNING_MESSAGE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 378
    const-string v9, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    .line 381
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->setHasOptionsMenu(Z)V

    .line 382
    return-void
.end method

.method private updateUiForServiceState()V
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/print/SettingsUtils;->readEnabledPrintServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 272
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    .line 273
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 275
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->enable()V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 281
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 278
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 207
    :pswitch_0
    const/4 v0, 0x1

    .line 208
    .local v0, "checked":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 221
    :goto_0
    return-void

    .line 213
    .end local v0    # "checked":Z
    :pswitch_1
    const/4 v0, 0x0

    .line 214
    .restart local v0    # "checked":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setCheckedInternal(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_CHECKED"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "title":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 184
    .local v0, "message":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 187
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 192
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v7, 0x7f0e03c0

    const v6, 0x7f0e03bf

    const v5, 0x7f0e03be

    .line 386
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 387
    const v4, 0x7f100005

    invoke-virtual {p2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 389
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    .local v0, "addPrinters":Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAddPrintersTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAddPrintersIntent:Landroid/content/Intent;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 397
    :goto_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 398
    .local v3, "settings":Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 400
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 405
    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 406
    .local v1, "searchItem":Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mServiceEnabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 407
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    .line 408
    .local v2, "searchView":Landroid/widget/SearchView;
    new-instance v4, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$5;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 420
    new-instance v4, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$6;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$6;-><init>(Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 441
    .end local v2    # "searchView":Landroid/widget/SearchView;
    :goto_2
    return-void

    .line 394
    .end local v1    # "searchItem":Landroid/view/MenuItem;
    .end local v3    # "settings":Landroid/view/MenuItem;
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 402
    .restart local v3    # "settings":Landroid/view/MenuItem;
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 439
    .restart local v1    # "searchItem":Landroid/view/MenuItem;
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 166
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 149
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mAnnounceFilterResult:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->remove()V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 142
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->updateEmptyView()V

    .line 143
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->updateUiForServiceState()V

    .line 144
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 158
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->initComponents()V

    .line 159
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/print/PrintServiceSettingsFragment;->updateUiForArguments()V

    .line 160
    return-void
.end method
