.class Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)V
    .locals 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 214
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 359
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 360
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;

    .line 361
    .local v4, "vh":Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 362
    .local v1, "activityIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    invoke-static {v7, p2}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$200(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 364
    .local v2, "badgedIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v6, p2}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    .line 369
    .local v3, "enabled":Z
    :try_start_0
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 373
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 374
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 375
    iget-object v5, v4, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 376
    return-void

    .line 370
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 308
    instance-of v2, p1, Landroid/app/admin/DeviceAdminInfo;

    if-nez v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 312
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 313
    .local v0, "info":Landroid/app/admin/DeviceAdminInfo;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    invoke-static {v2, v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$200(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isDeviceOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$300(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isProfileOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    invoke-static {v2, v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$400(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 339
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 341
    .local v0, "h":Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 342
    const v2, 0x7f0e010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 343
    const v2, 0x7f0e0110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 344
    const v2, 0x7f0e010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 345
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 346
    return-object v1
.end method

.method private newTitleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 350
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 355
    .local v1, "resId":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "adminCount":I
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 225
    .local v2, "profileCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 226
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    add-int v3, v0, v2

    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 240
    if-gez p1, :cond_0

    .line 241
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 246
    :cond_0
    move v0, p1

    .line 247
    .local v0, "adminPosition":I
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 248
    .local v3, "n":I
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 251
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 252
    .local v2, "listSize":I
    if-ge v0, v2, :cond_2

    .line 257
    .end local v2    # "listSize":I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 258
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 255
    .restart local v2    # "listSize":I
    :cond_2
    sub-int/2addr v0, v2

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "listSize":I
    :cond_3
    if-nez v0, :cond_5

    .line 262
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 263
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 264
    const v5, 0x7f0a0106

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 266
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_4
    const v5, 0x7f0a0107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 270
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_5
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v2, :cond_1

    .line 324
    if-nez p2, :cond_0

    .line 325
    invoke-direct {p0, p3}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->newDeviceAdminView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 327
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 335
    :goto_0
    return-object p2

    .line 329
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 330
    invoke-direct {p0, p3}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->newTitleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 332
    :cond_2
    const v2, 0x1020016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 333
    .local v1, "title":Landroid/widget/TextView;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "o":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
