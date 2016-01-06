.class public Lcom/lenovo/settings/recentsettings/ExtraPullListView;
.super Ljava/lang/Object;
.source "ExtraPullListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;,
        Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtraPullListView"


# instance fields
.field private MAX_TEXT_SIZE:F

.field private mHeadTextView:Landroid/widget/TextView;

.field private mHeadView:Landroid/view/View;

.field private mHeadViewHeight:I

.field private mListView:Landroid/widget/ListView;

.field private mListViewFirstVisiableItem:I

.field private mListViewOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I

    .line 31
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->MAX_TEXT_SIZE:F

    .line 34
    new-instance v0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$1;-><init>(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)V

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadViewHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->setHeaderViewHeight(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Landroid/widget/ListView;ILcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;)Lcom/lenovo/settings/recentsettings/ExtraPullListView;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "stringId"    # I
    .param p3, "listener"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    .prologue
    .line 60
    new-instance v0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    invoke-direct {v0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;-><init>()V

    .line 61
    .local v0, "instance":Lcom/lenovo/settings/recentsettings/ExtraPullListView;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->initInner(Landroid/app/Activity;Landroid/widget/ListView;ILcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;)V

    .line 62
    return-object v0
.end method

.method private initInner(Landroid/app/Activity;Landroid/widget/ListView;ILcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "stringId"    # I
    .param p4, "listener"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListView:Landroid/widget/ListView;

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04005b

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    .line 73
    const/high16 v3, 0x42300000    # 44.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadViewHeight:I

    .line 75
    iget-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    const v4, 0x7f0e013c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadTextView:Landroid/widget/TextView;

    .line 76
    iget-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    invoke-direct {p0, v6}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->setHeaderViewHeight(I)V

    .line 81
    iget-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    invoke-virtual {v3, v4, v8, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 82
    iget-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    new-instance v1, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;-><init>(Lcom/lenovo/settings/recentsettings/ExtraPullListView;Landroid/content/Context;)V

    .line 85
    .local v1, "scrollView":Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;
    const v3, 0x106000d

    invoke-virtual {v1, v3}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->setBackgroundResource(I)V

    .line 86
    invoke-virtual {v1, p4}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->setOnRefreshListener(Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;)V

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "textView":Landroid/widget/TextView;
    const-string v3, "ExtraPullListView"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->MAX_TEXT_SIZE:F

    .line 95
    const-string v3, "ExtraPullListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX_TEXT_SIZE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->MAX_TEXT_SIZE:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "vibrator"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mVibrator:Landroid/os/Vibrator;

    .line 97
    return-void
.end method

.method private setHeaderViewHeight(I)V
    .locals 6
    .param p1, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 118
    const-string v2, "ExtraPullListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 121
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 127
    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v2, v2, 0x5

    int-to-float v1, v2

    .line 128
    .local v1, "nCurrentTextSize":F
    iget v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->MAX_TEXT_SIZE:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget v1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->MAX_TEXT_SIZE:F

    .line 129
    :cond_1
    const-string v2, "ExtraPullListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nCurrentTextSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
