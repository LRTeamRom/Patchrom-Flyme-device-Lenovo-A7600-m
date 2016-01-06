.class public Lcom/lenovo/settings/pulltorefresh/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final HEADER_TEXT_ALPHA_MAX:F = 1.0f

.field private static final HEADER_TEXT_ALPHA_MIN:F = 0.5f

.field private static final HEADER_TEXT_SIZE_MAX:F = 16.0f

.field private static final HEADER_TEXT_SIZE_MIN:F = 8.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field private final mHeaderText:Landroid/widget/TextView;

.field private final mInnerLayout:Landroid/view/View;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field private final mSubHeaderText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400c9

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v4, 0x7f0e01fb

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    .line 49
    iget-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    const v5, 0x7f0e01fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    const v5, 0x7f0e01fd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 52
    iget-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    const v4, 0x7f0a050c

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 57
    const v4, 0x7f0a050e

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 58
    const v4, 0x7f0a050d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, v0}, Lcom/lenovo/settings/pulltorefresh/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 69
    .local v3, "styleID":Landroid/util/TypedValue;
    invoke-virtual {p2, v9, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 70
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v4}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setTextAppearance(I)V

    .line 72
    .end local v3    # "styleID":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 74
    .restart local v3    # "styleID":Landroid/util/TypedValue;
    invoke-virtual {p2, v10, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 75
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v4}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setSubTextAppearance(I)V

    .line 79
    .end local v3    # "styleID":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 81
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 82
    invoke-direct {p0, v1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 87
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 88
    invoke-direct {p0, v1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 92
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->reset()V

    .line 93
    return-void
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 268
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 259
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 244
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 253
    :cond_1
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mInnerLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final hideAllViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 112
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_1
    return-void
.end method

.method public final onPull(F)V
    .locals 5
    .param p1, "scaleOfLayout"    # F

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 121
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "textSize":F
    const/4 v0, 0x0

    .line 124
    .local v0, "textAlpha":F
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    .line 125
    const/high16 v1, 0x41000000    # 8.0f

    .line 126
    const/high16 v0, 0x3f000000    # 0.5f

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 139
    .end local v0    # "textAlpha":F
    .end local v1    # "textSize":F
    :cond_0
    return-void

    .line 127
    .restart local v0    # "textAlpha":F
    .restart local v1    # "textSize":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 128
    const/high16 v1, 0x41800000    # 16.0f

    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 131
    :cond_2
    mul-float v2, v4, p1

    add-float v1, v4, v2

    .line 133
    mul-float v2, v3, p1

    add-float v0, v3, v2

    goto :goto_0
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_1
    return-void
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->requestLayout()V

    .line 99
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 195
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 205
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 216
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 103
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->requestLayout()V

    .line 105
    return-void
.end method

.method public final showInvisibleViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_1
    return-void
.end method
