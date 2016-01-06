.class public Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;
    }
.end annotation


# static fields
.field private static final DRAW_OUTLINE:Z = false

.field public static final HORIZONTAL:I = 0x0

.field private static final LARGE_WIDTH:I = 0x400

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_LABEL:I = 0x2

.field private static final MODE_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelMinSize:I

.field private mLabelOffset:F

.field private mLabelSize:F

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 89
    iput v4, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    .line 97
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mDragInterval:J

    .line 109
    new-array v1, v4, [Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mNeighbors:[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 149
    new-instance v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$1;-><init>(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 122
    sget-object v1, Lcom/flyme/deviceoriginalsettings/R$styleable;->ChartSweepView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setFollowAxis(I)V

    .line 127
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setNeighborMargin(F)V

    .line 129
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setLabelMinSize(I)V

    .line 130
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 131
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setLabelColor(I)V

    .line 134
    const v1, 0x7f020060

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 136
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setClickable(Z)V

    .line 143
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 144
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 10
    .param p1, "parentContent"    # Landroid/graphics/Rect;
    .param p2, "afterValue"    # J
    .param p4, "beforeValue"    # J
    .param p6, "margin"    # F

    .prologue
    .line 596
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    instance-of v5, v5, Lcom/flyme/deviceoriginalsettings/widget/InvertedChartAxis;

    if-eqz v5, :cond_0

    .line 597
    move-wide v6, p4

    .line 598
    .local v6, "temp":J
    move-wide p4, p2

    .line 599
    move-wide p2, v6

    .line 602
    .end local v6    # "temp":J
    :cond_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, p2, v8

    if-eqz v5, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p2, v8

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 603
    .local v1, "afterValid":Z
    :goto_0
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, p4, v8

    if-eqz v5, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, p4, v8

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 605
    .local v3, "beforeValid":Z
    :goto_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    invoke-interface {v5, p2, p3}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    add-float v0, v5, p6

    .line 606
    .local v0, "afterPoint":F
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    invoke-interface {v5, p4, p5}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    sub-float v2, v5, p6

    .line 608
    .local v2, "beforePoint":F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 609
    .local v4, "clampRect":Landroid/graphics/Rect;
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    .line 610
    if-eqz v3, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->top:I

    float-to-int v8, v2

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 611
    :cond_1
    if-eqz v1, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 616
    :cond_2
    :goto_2
    return-object v4

    .line 602
    .end local v0    # "afterPoint":F
    .end local v1    # "afterValid":Z
    .end local v2    # "beforePoint":F
    .end local v3    # "beforeValid":Z
    .end local v4    # "clampRect":Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 603
    .restart local v1    # "afterValid":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 613
    .restart local v0    # "afterPoint":F
    .restart local v2    # "beforePoint":F
    .restart local v3    # "beforeValid":Z
    .restart local v4    # "clampRect":Landroid/graphics/Rect;
    :cond_5
    if-eqz v3, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->left:I

    float-to-int v8, v2

    add-int/2addr v5, v8

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 614
    :cond_6
    if-eqz v1, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "parentContent"    # Landroid/graphics/Rect;

    .prologue
    .line 584
    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v8

    .line 585
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v4

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mNeighborMargin:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 588
    .local v7, "dynamicRect":Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 591
    :cond_0
    return-object v8
.end method

.method private dispatchOnSweep(Z)V
    .locals 1
    .param p1, "sweepDone"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;Z)V

    .line 199
    :cond_0
    return-void
.end method

.method private dispatchRequestEdit()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V

    .line 205
    :cond_0
    return-void
.end method

.method public static getLabelBottom(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 738
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelTop(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelTop(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelWidth(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F
    .locals 2
    .param p0, "view"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 552
    .local v0, "parent":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 180
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 181
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 183
    .local v0, "targetHeight":F
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 187
    .end local v0    # "targetHeight":F
    :goto_0
    return v2

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 187
    .local v1, "targetWidth":F
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v1, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "eventInParent"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_0

    .line 408
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 410
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method private getValidAfterDynamic()J
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 569
    .local v0, "dynamic":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method private getValidBeforeDynamic()J
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 574
    .local v0, "dynamic":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private invalidateLabel()V
    .locals 6

    .prologue
    .line 279
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelValue:J

    .line 281
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 283
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidate()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelValue:J

    goto :goto_0
.end method

.method private invalidateLabelTemplate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 255
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 258
    .local v8, "template":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 259
    .local v2, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 260
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 261
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 262
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, v2, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, -0x1000000

    invoke-virtual {v2, v0, v6, v6, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 264
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 265
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    .line 267
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabel()V

    .line 274
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v8    # "template":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidate()V

    .line 275
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->requestLayout()V

    .line 276
    return-void

    .line 270
    :cond_0
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 271
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    goto :goto_0
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 560
    return-void
.end method

.method public addOnSweepListener(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;

    .line 193
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 622
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 625
    :cond_0
    return-void
.end method

.method public getAxis()Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    return-object v0
.end method

.method public getFollowAxis()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    return v0
.end method

.method public getLabelValue()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 369
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;)V
    .locals 1
    .param p1, "axis"    # Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    .prologue
    .line 156
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    .line 157
    return-void
.end method

.method public invalidateLabelOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "labelOffset":F
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 296
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    if-eqz v2, :cond_3

    .line 297
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelWidth(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelWidth(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    .line 298
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelTop(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelBottom(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 299
    .local v1, "margin":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 300
    div-float v0, v1, v5

    .line 315
    .end local v1    # "margin":F
    :cond_0
    :goto_0
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelMinSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    .line 318
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 319
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelOffset:F

    .line 320
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidate()V

    .line 321
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 324
    :cond_2
    return-void

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    if-eqz v2, :cond_4

    .line 303
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelWidth(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelWidth(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    .line 304
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelTop(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelBottom(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 305
    .restart local v1    # "margin":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 306
    neg-float v2, v1

    div-float v0, v2, v5

    goto :goto_0

    .line 309
    .end local v1    # "margin":F
    :cond_4
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLabelWidth(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)F

    move-result v2

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    goto :goto_0
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)Z
    .locals 3
    .param p1, "eventInParent"    # Landroid/view/MotionEvent;
    .param p2, "another"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v1

    .line 402
    .local v1, "selfDist":F
    invoke-direct {p2, p1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v0

    .line 403
    .local v0, "anotherDist":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 329
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 332
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 699
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getWidth()I

    move-result v4

    .line 700
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 703
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_0

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 706
    .local v1, "count":I
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    const/high16 v6, 0x44800000    # 1024.0f

    sub-float v0, v5, v6

    .line 707
    .local v0, "alignOffset":F
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 709
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v5, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 711
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 712
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelSize:F

    float-to-int v3, v5

    .line 717
    .end local v0    # "alignOffset":F
    .end local v1    # "count":I
    .local v3, "labelSize":I
    :goto_0
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 718
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 725
    :goto_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 731
    return-void

    .line 714
    .end local v3    # "labelSize":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "labelSize":I
    goto :goto_0

    .line 721
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 691
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 692
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 693
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 631
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v9, :cond_0

    .line 632
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 633
    .local v3, "sweepHeight":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v9}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    .line 635
    .local v6, "templateHeight":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 636
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 637
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTargetInset()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 638
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 646
    .end local v3    # "sweepHeight":I
    .end local v6    # "templateHeight":I
    :goto_0
    iget v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 647
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v10

    .line 649
    .local v4, "targetHeight":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 650
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 651
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 652
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 662
    .end local v4    # "targetHeight":I
    :goto_1
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 665
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v8

    .line 666
    .local v8, "widthBefore":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 667
    .local v1, "heightBefore":I
    iget v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v9, :cond_2

    .line 668
    mul-int/lit8 v7, v8, 0x3

    .line 669
    .local v7, "widthAfter":I
    invoke-virtual {p0, v7, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 670
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v7, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 672
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v9, 0x2

    .line 673
    .local v2, "offset":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 674
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 685
    .end local v7    # "widthAfter":I
    :goto_2
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->offset(II)V

    .line 686
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 687
    return-void

    .line 641
    .end local v1    # "heightBefore":I
    .end local v2    # "offset":I
    .end local v8    # "widthBefore":I
    :cond_0
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 642
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 643
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 654
    :cond_1
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v10

    .line 656
    .local v5, "targetWidth":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 657
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 658
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 659
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 676
    .end local v5    # "targetWidth":I
    .restart local v1    # "heightBefore":I
    .restart local v8    # "widthBefore":I
    :cond_2
    mul-int/lit8 v0, v1, 0x2

    .line 677
    .local v0, "heightAfter":I
    invoke-virtual {p0, v8, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 678
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v0, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 680
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v9, 0x2

    .line 681
    .restart local v2    # "offset":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 682
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_0

    const/16 v22, 0x0

    .line 525
    :goto_0
    return v22

    .line 418
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 419
    .local v16, "parent":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 525
    const/16 v22, 0x0

    goto :goto_0

    .line 425
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 426
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x8

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_1

    const/4 v4, 0x1

    .line 427
    .local v4, "acceptDrag":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_2

    const/4 v5, 0x1

    .line 435
    .local v5, "acceptLabel":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v12

    .line 436
    .local v12, "eventInParent":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mNeighbors:[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .local v6, "arr$":[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_3
    if-ge v13, v14, :cond_9

    aget-object v15, v6, v13

    .line 440
    .local v15, "neighbor":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 441
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 426
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    .end local v6    # "arr$":[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    .end local v12    # "eventInParent":Landroid/view/MotionEvent;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "neighbor":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 427
    .restart local v4    # "acceptDrag":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 430
    .end local v4    # "acceptDrag":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x8

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5

    const/4 v4, 0x1

    .line 431
    .restart local v4    # "acceptDrag":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_6

    const/4 v5, 0x1

    .restart local v5    # "acceptLabel":Z
    :goto_5
    goto :goto_2

    .line 430
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 431
    .restart local v4    # "acceptDrag":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 439
    .restart local v5    # "acceptLabel":Z
    .restart local v6    # "arr$":[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    .restart local v12    # "eventInParent":Landroid/view/MotionEvent;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "neighbor":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 445
    .end local v15    # "neighbor":Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    :cond_9
    if-eqz v4, :cond_c

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTrackingStart:F

    .line 451
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 452
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    .line 455
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isActivated()Z

    move-result v22

    if-nez v22, :cond_a

    .line 456
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 459
    :cond_a
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 449
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_6

    .line 460
    :cond_c
    if-eqz v5, :cond_d

    .line 461
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    .line 462
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 464
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    .line 465
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 469
    .end local v4    # "acceptDrag":Z
    .end local v5    # "acceptLabel":Z
    .end local v6    # "arr$":[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    .end local v12    # "eventInParent":Landroid/view/MotionEvent;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 470
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 473
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v17

    .line 477
    .local v17, "parentContent":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 478
    .local v7, "clampRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x1

    goto/16 :goto_0

    .line 481
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v11, v0

    .line 483
    .local v11, "currentTargetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    sub-float v23, v23, v24

    add-float v19, v22, v23

    .line 485
    .local v19, "requestedTargetY":F
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    .line 487
    .local v9, "clampedTargetY":F
    sub-float v22, v9, v11

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setTranslationY(F)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v9, v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v20

    .line 502
    .end local v9    # "clampedTargetY":F
    .end local v11    # "currentTargetY":F
    .end local v19    # "requestedTargetY":F
    .local v20, "value":J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v22, v0

    rem-long v22, v20, v22

    sub-long v20, v20, v22

    .line 503
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setValue(J)V

    .line 505
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 506
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 491
    .end local v20    # "value":J
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v10, v0

    .line 492
    .local v10, "currentTargetX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getRawX()F

    move-result v24

    sub-float v23, v23, v24

    add-float v18, v22, v23

    .line 494
    .local v18, "requestedTargetX":F
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    .line 496
    .local v8, "clampedTargetX":F
    sub-float v22, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setTranslationX(F)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v8, v23

    invoke-interface/range {v22 .. v23}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v20

    .restart local v20    # "value":J
    goto/16 :goto_7

    .line 509
    .end local v7    # "clampRect":Landroid/graphics/Rect;
    .end local v8    # "clampedTargetX":F
    .end local v10    # "currentTargetX":F
    .end local v17    # "parentContent":Landroid/graphics/Rect;
    .end local v18    # "requestedTargetX":F
    .end local v20    # "value":J
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->performClick()Z

    .line 521
    :cond_11
    :goto_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    .line 522
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 511
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 512
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTrackingStart:F

    .line 513
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 514
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelValue:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValue:J

    .line 515
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 516
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setTranslationX(F)V

    .line 517
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setTranslationY(F)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->requestLayout()V

    goto :goto_8

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLayoutChangeListener;

    .prologue
    .line 565
    return-void
.end method

.method public setDragInterval(J)V
    .locals 1
    .param p1, "dragInterval"    # J

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mDragInterval:J

    .line 173
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->requestLayout()V

    .line 212
    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0
    .param p1, "followAxis"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    .line 237
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelColor:I

    .line 251
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 252
    return-void
.end method

.method public setLabelMinSize(I)V
    .locals 0
    .param p1, "minSize"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelMinSize:I

    .line 241
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 242
    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mLabelTemplateRes:I

    .line 246
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 247
    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0
    .param p1, "neighborMargin"    # F

    .prologue
    .line 383
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mNeighborMargin:F

    .line 384
    return-void
.end method

.method public varargs setNeighbors([Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "neighbors"    # [Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mNeighbors:[Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 161
    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sweep"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 226
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidate()V

    .line 233
    return-void

    :cond_2
    move v0, v1

    .line 225
    goto :goto_0

    .line 229
    :cond_3
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setValidRange(JJ)V
    .locals 1
    .param p1, "validAfter"    # J
    .param p3, "validBefore"    # J

    .prologue
    .line 378
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfter:J

    .line 379
    iput-wide p3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBefore:J

    .line 380
    return-void
.end method

.method public setValidRangeDynamic(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "validAfter"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    .param p2, "validBefore"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 393
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .line 394
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mValue:J

    .line 353
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->invalidateLabel()V

    .line 354
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 340
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method public shouldAdjustAxis()I
    .locals 4

    .prologue
    .line 547
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method

.method public updateValueFromPosition()V
    .locals 6

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 537
    .local v2, "parentContent":Landroid/graphics/Rect;
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 539
    .local v1, "effectiveY":F
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    invoke-interface {v3, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setValue(J)V

    .line 544
    .end local v1    # "effectiveY":F
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 542
    .local v0, "effectiveX":F
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mAxis:Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;

    invoke-interface {v3, v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
