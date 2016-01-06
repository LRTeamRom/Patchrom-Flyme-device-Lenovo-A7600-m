.class public Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;
.super Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView$InternalListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase",
        "<",
        "Landroid/widget/ListView;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mScrollEmptyView:Z

    .line 50
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mScrollEmptyView:Z

    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    return-void
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 29
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 32
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 34
    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 174
    new-instance v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView$InternalListView;-><init>(Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 180
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    const-string v2, "PullToRefresh"

    const-string v4, "isFirstItemVisible. Empty View."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 200
    :goto_0
    return v2

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 194
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_3
    move v2, v4

    .line 200
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    .line 76
    .local v0, "lv":Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 77
    return-object v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 85
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First Visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Visible Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Total Items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnLastItemVisibleListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    .line 94
    if-lez p4, :cond_2

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mLastItemVisible:Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 101
    :cond_1
    return-void

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 69
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 108
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnLastItemVisibleListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mLastItemVisible:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnLastItemVisibleListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 115
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 127
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 145
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    .line 148
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 151
    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 152
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 158
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    instance-of v3, v3, Lcom/lenovo/settings/pulltorefresh/EmptyViewMethodAccessor;

    if-eqz v3, :cond_3

    .line 166
    iget-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v3, Lcom/lenovo/settings/pulltorefresh/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/lenovo/settings/pulltorefresh/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    .line 170
    :goto_1
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mEmptyView:Landroid/view/View;

    .line 171
    return-void

    .line 161
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 168
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method
