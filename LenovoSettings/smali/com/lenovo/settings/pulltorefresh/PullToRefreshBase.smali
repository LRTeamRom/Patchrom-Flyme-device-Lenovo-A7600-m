.class public abstract Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$3;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x145

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentSmoothScrollRunnable:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mOnPullEventListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 60
    sget-object v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 66
    iput-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 67
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 68
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 60
    sget-object v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 66
    iput-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 67
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 68
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 708
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 709
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 712
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    return-void
.end method

.method private callRefreshListener()V
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V

    .line 720
    :cond_0
    return-void
.end method

.method private getMaximumPullScroll()I
    .locals 2

    .prologue
    .line 799
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 723
    invoke-virtual {p0, v5}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 724
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    .line 726
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 727
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    .line 729
    sget-object v3, Lcom/flyme/deviceoriginalsettings/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 733
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 734
    iget-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 737
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    .line 742
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 744
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 745
    iget-object v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v3, v1}, Lcom/lenovo/settings/pulltorefresh/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 749
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 753
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 754
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 760
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 761
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 764
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 765
    return-void
.end method

.method private isReadyForPull()Z
    .locals 1

    .prologue
    .line 768
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    return v0
.end method

.method private pullEvent()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v7, 0x0

    .line 777
    iget v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .line 778
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 779
    .local v2, "lastMotionValue":F
    sub-float v5, v0, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 781
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 783
    .local v1, "itemDimension":I
    invoke-virtual {p0, v3}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 786
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 787
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 788
    .local v4, "scale":F
    iget-object v5, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->onPull(F)V

    .line 790
    iget-object v5, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 791
    sget-object v5, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v7, [Z

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 796
    .end local v4    # "scale":F
    :cond_0
    :goto_0
    return-void

    .line 792
    .restart local v4    # "scale":F
    :cond_1
    iget-object v5, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 793
    sget-object v5, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v7, [Z

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_0
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 809
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 810
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 814
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 820
    .local v2, "oldScrollValue":I
    if-eq v2, p1, :cond_2

    .line 821
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 823
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 825
    :cond_1
    new-instance v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;IIJLcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    .line 828
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 829
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 834
    :cond_2
    :goto_0
    return-void

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 97
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void

    .line 105
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 361
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 362
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 369
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 370
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/lenovo/settings/pulltorefresh/LoadingLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 373
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 374
    .local v0, "layout":Lcom/lenovo/settings/pulltorefresh/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 375
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .line 395
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 396
    return-void
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getHeaderLayout()Lcom/lenovo/settings/pulltorefresh/LoadingLayout;
    .locals 1

    .prologue
    .line 399
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 407
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 411
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 415
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 245
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 425
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 257
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 262
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 162
    :goto_0
    return v6

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 119
    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 120
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 125
    goto :goto_0

    .line 128
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 162
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    .line 131
    :pswitch_1
    iget-boolean v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 132
    goto :goto_0

    .line 135
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 137
    .local v4, "x":F
    iget v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 138
    .local v2, "diff":F
    iget v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 139
    .local v3, "oppositeDiff":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 141
    .local v0, "absDiff":F
    iget v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 143
    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    iput v5, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 145
    iput v4, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 146
    iput-boolean v7, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_1

    .line 153
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 156
    iput-boolean v6, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 444
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 453
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 1

    .prologue
    .line 460
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->pullToRefresh()V

    .line 461
    return-void
.end method

.method public final onRefreshComplete()V
    .locals 2

    .prologue
    .line 270
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 273
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 2
    .param p1, "doScroll"    # Z

    .prologue
    .line 471
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->refreshing()V

    .line 473
    if-eqz p1, :cond_1

    .line 474
    iget-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_0

    .line 477
    new-instance v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V

    .line 484
    .local v0, "listener":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 492
    .end local v0    # "listener":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    goto :goto_0
.end method

.method protected onReleaseToRefresh()V
    .locals 1

    .prologue
    .line 499
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->releaseToRefresh()V

    .line 500
    return-void
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 507
    iput-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 511
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->reset()V

    .line 515
    invoke-virtual {p0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 516
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 521
    check-cast v0, Landroid/os/Bundle;

    .line 523
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 525
    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 528
    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 530
    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .line 531
    .local v1, "viewState":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;
    sget-object v2, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 532
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 536
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 541
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;
    :goto_0
    return-void

    .line 540
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 545
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 549
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 551
    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 552
    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 554
    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 556
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 562
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const-string v0, "PullToRefresh"

    const-string v1, "onSizeChanged. W: %d, H: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 568
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 577
    new-instance v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$2;-><init>(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 583
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 174
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 193
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    .line 196
    goto :goto_0

    .line 183
    :pswitch_1
    iget-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 186
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->pullEvent()V

    move v0, v1

    .line 187
    goto :goto_0

    .line 203
    :pswitch_2
    iget-boolean v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 204
    iput-boolean v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 206
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v2, :cond_4

    .line 208
    sget-object v2, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 209
    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    .line 215
    goto :goto_0

    .line 220
    :cond_5
    sget-object v2, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    .line 222
    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 10

    .prologue
    .line 589
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 591
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 592
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 593
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 594
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 596
    .local v1, "pBottom":I
    iget-object v5, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setHeight(I)V

    .line 597
    neg-int v4, v0

    .line 598
    const/4 v1, 0x0

    .line 601
    const-string v5, "PullToRefresh"

    const-string v6, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 605
    return-void
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 610
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 614
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 615
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 616
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 618
    :cond_0
    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 280
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 281
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x0

    .line 628
    const-string v1, "PullToRefresh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHeaderScroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 633
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 635
    iget-boolean v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 636
    if-gez p1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v1, v4}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setVisibility(I)V

    .line 654
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    .line 655
    return-void

    .line 638
    :cond_1
    if-gtz p1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 292
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 233
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 234
    return-void
.end method

.method public setOnPullEventListener(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    .line 285
    return-void
.end method

.method public final setOnRefreshListener(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 289
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 296
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 308
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 309
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    .line 313
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 316
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 300
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    .line 301
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 304
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 276
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 277
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 322
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 323
    return-void
.end method

.method final varargs setState(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 326
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    .line 328
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$3;->$SwitchMap$com$lenovo$settings$pulltorefresh$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mState:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    invoke-interface {v0, p0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;)V

    .line 354
    :cond_0
    return-void

    .line 333
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 343
    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 664
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 665
    return-void
.end method

.method protected final smoothScrollTo(ILcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 675
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 676
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 685
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 686
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 694
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 698
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {v1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/lenovo/settings/pulltorefresh/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 704
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 705
    return-void
.end method
