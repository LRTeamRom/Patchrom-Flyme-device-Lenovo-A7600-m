.class public Lcom/lenovo/settings/SysSettings;
.super Landroid/app/Fragment;
.source "SysSettings.java"


# instance fields
.field allSettingsList:Landroid/widget/ListView;

.field fragmentMgr:Landroid/app/FragmentManager;

.field private m_can_show:Z

.field m_delta_y:F

.field m_init_height:I

.field m_init_params:Landroid/view/ViewGroup$LayoutParams;

.field m_init_view:Landroid/view/View;

.field m_is_hidden:Z

.field m_start_y:F

.field recentBarDown:Landroid/widget/ImageView;

.field recentBarRoot:Landroid/view/View;

.field recentBarUp:Landroid/widget/ImageView;

.field recentBttnHide:Landroid/widget/TextView;

.field recentBttnShow:Landroid/widget/TextView;

.field recentFragment:Landroid/app/Fragment;

.field recentList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/SysSettings;->m_can_show:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/SysSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/SysSettings;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lenovo/settings/SysSettings;->m_can_show:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/settings/SysSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/SysSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lenovo/settings/SysSettings;->m_can_show:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/settings/SysSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/SysSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/settings/SysSettings;->hideRecent()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/SysSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/SysSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/settings/SysSettings;->showRecent()V

    return-void
.end method

.method private hideRecent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    .line 231
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBarUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBarDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBttnShow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBttnHide:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    return-void
.end method

.method private showRecent()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    invoke-direct {p0}, Lcom/lenovo/settings/SysSettings;->hideRecent()V

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iput-boolean v2, p0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    .line 222
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBarUp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBarDown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBttnShow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->recentBttnHide:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x102000a

    const/4 v6, 0x0

    .line 50
    const v2, 0x7f0400cb

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/lenovo/settings/SysSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->fragmentMgr:Landroid/app/FragmentManager;

    .line 52
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->fragmentMgr:Landroid/app/FragmentManager;

    const v3, 0x7f0e0225

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentFragment:Landroid/app/Fragment;

    .line 54
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    .line 55
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    .line 56
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    iget-object v3, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    .line 61
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    .line 67
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 68
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentList:Landroid/widget/ListView;

    new-instance v3, Lcom/lenovo/settings/SysSettings$1;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/SysSettings$1;-><init>(Lcom/lenovo/settings/SysSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->fragmentMgr:Landroid/app/FragmentManager;

    const v3, 0x7f0e022b

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 101
    .local v0, "allSettings":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    .line 103
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 108
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    new-instance v3, Lcom/lenovo/settings/SysSettings$2;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/SysSettings$2;-><init>(Lcom/lenovo/settings/SysSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 122
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->allSettingsList:Landroid/widget/ListView;

    new-instance v3, Lcom/lenovo/settings/SysSettings$3;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/SysSettings$3;-><init>(Lcom/lenovo/settings/SysSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    const v2, 0x7f0e0227

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBarUp:Landroid/widget/ImageView;

    .line 158
    const v2, 0x7f0e022a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBarDown:Landroid/widget/ImageView;

    .line 159
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBarUp:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    const v2, 0x7f0e0229

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBttnHide:Landroid/widget/TextView;

    .line 161
    const v2, 0x7f0e0228

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBttnShow:Landroid/widget/TextView;

    .line 162
    const v2, 0x7f0e0226

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBarRoot:Landroid/view/View;

    .line 163
    iget-object v2, p0, Lcom/lenovo/settings/SysSettings;->recentBarRoot:Landroid/view/View;

    new-instance v3, Lcom/lenovo/settings/SysSettings$4;

    invoke-direct {v3, p0}, Lcom/lenovo/settings/SysSettings$4;-><init>(Lcom/lenovo/settings/SysSettings;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    return-object v1
.end method

.method public onReceive(IZ)V
    .locals 2
    .param p1, "delta"    # I
    .param p2, "hide"    # Z

    .prologue
    const/16 v1, 0x270f

    .line 320
    if-eqz p2, :cond_3

    .line 322
    if-nez p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    .line 324
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-ne p1, v1, :cond_2

    .line 326
    invoke-direct {p0}, Lcom/lenovo/settings/SysSettings;->hideRecent()V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 332
    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/settings/SysSettings;->m_is_hidden:Z

    if-eqz v0, :cond_0

    .line 334
    if-nez p1, :cond_4

    .line 335
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    .line 336
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 337
    :cond_4
    if-ne p1, v1, :cond_5

    .line 338
    invoke-direct {p0}, Lcom/lenovo/settings/SysSettings;->showRecent()V

    goto :goto_0

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_height:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings;->m_init_view:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/SysSettings;->m_init_params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
