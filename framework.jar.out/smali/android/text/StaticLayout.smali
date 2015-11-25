.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 155
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 987
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1009
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 157
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 158
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 159
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 161
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 75
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 97
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 87
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 111
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 987
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1009
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 126
    if-eqz p11, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 129
    .local v14, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 130
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 131
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 132
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 134
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 140
    .end local v14    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v1, Landroid/text/Layout$Directions;

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 141
    iget-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 142
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 144
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 146
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 150
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 152
    return-void

    .line 111
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 137
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 55
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 66
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 68
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 708
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 710
    return-void
.end method

.method private calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I
    .param p4, "widths"    # [F
    .param p5, "widthStart"    # I
    .param p6, "avail"    # F
    .param p7, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "line"    # I
    .param p9, "textWidth"    # F
    .param p10, "paint"    # Landroid/text/TextPaint;
    .param p11, "forceEllipsis"    # Z

    .prologue
    .line 722
    cmpg-float v19, p9, p6

    if-gtz v19, :cond_0

    if-nez p11, :cond_0

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x3

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x4

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 844
    :goto_0
    return-void

    .line 729
    :cond_0
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    sget-object v19, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 732
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 733
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 734
    .local v4, "ellipsisCount":I
    sub-int v12, p3, p2

    .line 737
    .local v12, "len":I
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 738
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 739
    const/16 v17, 0x0

    .line 742
    .local v17, "sum":F
    move v7, v12

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_1

    .line 744
    add-int/lit8 v19, v7, -0x1

    add-int v19, v19, p2

    sub-int v8, v19, p5

    .line 745
    .local v8, "idx":I
    if-gez v8, :cond_4

    .line 758
    .end local v8    # "idx":I
    :cond_1
    const/4 v5, 0x0

    .line 759
    move v4, v7

    .line 842
    .end local v7    # "i":I
    .end local v17    # "sum":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x3

    aput v5, v19, v20

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v20, v0

    mul-int v20, v20, p8

    add-int/lit8 v20, v20, 0x4

    aput v4, v19, v20

    goto :goto_0

    .line 729
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v12    # "len":I
    :cond_3
    sget-object v19, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 749
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v8    # "idx":I
    .restart local v12    # "len":I
    .restart local v17    # "sum":F
    :cond_4
    aget v18, p4, v8

    .line 751
    .local v18, "w":F
    add-float v19, v18, v17

    add-float v19, v19, v6

    cmpl-float v19, v19, p6

    if-gtz v19, :cond_1

    .line 755
    add-float v17, v17, v18

    .line 742
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 761
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v17    # "sum":F
    .end local v18    # "w":F
    :cond_5
    const-string v19, "StaticLayout"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 762
    const-string v19, "StaticLayout"

    const-string v20, "Start Ellipsis only supported with one line"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 765
    :cond_6
    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_7

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 767
    :cond_7
    const/16 v17, 0x0

    .line 770
    .restart local v17    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v12, :cond_8

    .line 772
    add-int v19, v7, p2

    sub-int v8, v19, p5

    .line 773
    .restart local v8    # "idx":I
    if-gez v8, :cond_9

    .line 785
    .end local v8    # "idx":I
    :cond_8
    move v5, v7

    .line 786
    sub-int v4, v12, v7

    .line 787
    if-eqz p11, :cond_2

    if-nez v4, :cond_2

    if-lez v12, :cond_2

    .line 789
    add-int/lit8 v19, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v11, 0x2

    .line 790
    .local v11, "legnthOfChar":I
    :goto_5
    sub-int v5, v12, v11

    .line 791
    move v4, v11

    goto/16 :goto_3

    .line 776
    .end local v11    # "legnthOfChar":I
    .restart local v8    # "idx":I
    :cond_9
    aget v18, p4, v8

    .line 778
    .restart local v18    # "w":F
    add-float v19, v18, v17

    add-float v19, v19, v6

    cmpl-float v19, v19, p6

    if-gtz v19, :cond_8

    .line 782
    add-float v17, v17, v18

    .line 770
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 789
    .end local v8    # "idx":I
    .end local v18    # "w":F
    :cond_a
    const/4 v11, 0x1

    goto :goto_5

    .line 795
    .end local v7    # "i":I
    .end local v17    # "sum":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 796
    const/4 v13, 0x0

    .local v13, "lsum":F
    const/16 v16, 0x0

    .line 797
    .local v16, "rsum":F
    const/4 v10, 0x0

    .local v10, "left":I
    move v15, v12

    .line 799
    .local v15, "right":I
    sub-float v19, p6, v6

    const/high16 v20, 0x40000000    # 2.0f

    div-float v14, v19, v20

    .line 800
    .local v14, "ravail":F
    move v15, v12

    :goto_6
    if-ltz v15, :cond_c

    .line 802
    add-int/lit8 v19, v15, -0x1

    add-int v19, v19, p2

    sub-int v8, v19, p5

    .line 803
    .restart local v8    # "idx":I
    if-gez v8, :cond_e

    .line 816
    .end local v8    # "idx":I
    :cond_c
    sub-float v19, p6, v6

    sub-float v9, v19, v16

    .line 817
    .local v9, "lavail":F
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v15, :cond_d

    .line 819
    add-int v19, v10, p2

    sub-int v8, v19, p5

    .line 820
    .restart local v8    # "idx":I
    if-gez v8, :cond_f

    .line 833
    .end local v8    # "idx":I
    :cond_d
    move v5, v10

    .line 834
    sub-int v4, v15, v10

    .line 835
    goto/16 :goto_3

    .line 807
    .end local v9    # "lavail":F
    .restart local v8    # "idx":I
    :cond_e
    aget v18, p4, v8

    .line 809
    .restart local v18    # "w":F
    add-float v19, v18, v16

    cmpl-float v19, v19, v14

    if-gtz v19, :cond_c

    .line 813
    add-float v16, v16, v18

    .line 800
    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 824
    .end local v18    # "w":F
    .restart local v9    # "lavail":F
    :cond_f
    aget v18, p4, v8

    .line 826
    .restart local v18    # "w":F
    add-float v19, v18, v13

    cmpl-float v19, v19, v9

    if-gtz v19, :cond_d

    .line 830
    add-float v13, v13, v18

    .line 817
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 836
    .end local v8    # "idx":I
    .end local v9    # "lavail":F
    .end local v10    # "left":I
    .end local v13    # "lsum":F
    .end local v14    # "ravail":F
    .end local v15    # "right":I
    .end local v16    # "rsum":F
    .end local v18    # "w":F
    :cond_10
    const-string v19, "StaticLayout"

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 837
    const-string v19, "StaticLayout"

    const-string v20, "Middle Ellipsis only supported with one line"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static native nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTabOrEmoji"    # Z
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 578
    .local v10, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v10, v2

    .line 579
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 580
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 582
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 583
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    .line 585
    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 589
    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 590
    .local v20, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 591
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 592
    move-object/from16 v25, v20

    .line 595
    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 596
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 597
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 598
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 599
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 601
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 602
    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 603
    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 601
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 607
    :cond_1
    aget-object v2, p11, v22

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 611
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 612
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 613
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 614
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 617
    .end local v22    # "i":I
    :cond_3
    if-nez v10, :cond_10

    const/16 v19, 0x1

    .line 618
    .local v19, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v14, 0x1

    .line 619
    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v14, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_12

    :cond_4
    const/16 v23, 0x1

    .line 621
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v19, :cond_6

    .line 622
    if-eqz p21, :cond_5

    .line 623
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 626
    :cond_5
    if-eqz p20, :cond_6

    .line 627
    move/from16 p4, p6

    .line 633
    :cond_6
    if-eqz v23, :cond_8

    .line 634
    if-eqz p21, :cond_7

    .line 635
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 638
    :cond_7
    if-eqz p20, :cond_8

    .line 639
    move/from16 p5, p7

    .line 645
    :cond_8
    if-eqz p15, :cond_14

    .line 646
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 647
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_13

    .line 648
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .line 656
    .end local v16    # "ex":D
    .local v18, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 657
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 658
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v18

    aput v3, v25, v2

    .line 660
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 661
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 662
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 664
    if-eqz p14, :cond_9

    .line 665
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 667
    :cond_9
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 668
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 672
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_15

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v10

    .line 679
    :goto_6
    if-eqz p25, :cond_f

    .line 682
    if-eqz p29, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_16

    const/4 v13, 0x1

    .line 684
    .local v13, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_b

    :cond_a
    if-eqz v19, :cond_c

    if-nez p29, :cond_c

    :cond_b
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_e

    :cond_c
    if-nez v19, :cond_17

    if-nez v14, :cond_d

    if-nez p29, :cond_17

    :cond_d
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    :cond_e
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_17

    const/4 v15, 0x1

    .line 690
    .local v15, "doEllipsis":Z
    :goto_8
    if-eqz v15, :cond_f

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p23

    move/from16 v7, p24

    move/from16 v8, p26

    move-object/from16 v9, p25

    move/from16 v11, p27

    move-object/from16 v12, p28

    .line 692
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 698
    .end local v13    # "forceEllipsis":Z
    .end local v15    # "doEllipsis":Z
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 699
    return p8

    .line 617
    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v18    # "extra":I
    .end local v19    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 618
    .restart local v19    # "firstLine":Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 619
    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 650
    .restart local v16    # "ex":D
    .restart local v23    # "lastLine":Z
    :cond_13
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 653
    .end local v16    # "ex":D
    .end local v18    # "extra":I
    :cond_14
    const/16 v18, 0x0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 675
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v10

    goto/16 :goto_6

    .line 682
    :cond_16
    const/4 v13, 0x0

    goto :goto_7

    .line 684
    .restart local v13    # "forceEllipsis":Z
    :cond_17
    const/4 v15, 0x0

    goto :goto_8
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 955
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 140
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufStart"    # I
    .param p3, "bufEnd"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerWidth"    # I
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "trackpad"    # Z
    .param p11, "ellipsizedWidth"    # F
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 170
    const/16 v97, 0x0

    .line 171
    .local v97, "breakOpp":[I
    invoke-virtual/range {p4 .. p4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v120

    .line 173
    .local v120, "localeLanguageTag":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 175
    const/4 v14, 0x0

    .line 176
    .local v14, "v":I
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p7, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, p8, v6

    if-eqz v6, :cond_6

    :cond_0
    const/16 v21, 0x1

    .line 178
    .local v21, "needMultiply":Z
    :goto_0
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_1

    .line 179
    const-wide/16 v6, 0x8

    const-string v15, "Text-generate"

    invoke-static {v6, v7, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 180
    const-string v6, "StaticLayout"

    const-string v7, "[generate] start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v94

    .line 183
    .local v94, "beforeTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v19, v0

    .line 184
    .local v19, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v18, 0x0

    .line 186
    .local v18, "chooseHtv":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v121, v0

    .line 188
    .local v121, "measured":Landroid/text/MeasuredText;
    const/16 v134, 0x0

    .line 189
    .local v134, "spanned":Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v6, v0, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    move-object/from16 v134, p1

    .line 190
    check-cast v134, Landroid/text/Spanned;

    .line 193
    :cond_2
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_3

    .line 194
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-0-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_3
    move/from16 v30, p2

    .local v30, "paraStart":I
    :goto_1
    move/from16 v0, v30

    move/from16 v1, p3

    if-gt v0, v1, :cond_3c

    .line 197
    const/16 v6, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, p3

    invoke-static {v0, v6, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v39

    .line 198
    .local v39, "paraEnd":I
    if-gez v39, :cond_7

    .line 199
    move/from16 v39, p3

    .line 203
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v104, v6, 0x1

    .line 204
    .local v104, "firstWidthLineLimit":I
    move/from16 v103, p5

    .line 205
    .local v103, "firstWidth":I
    move/from16 v129, p5

    .line 207
    .local v129, "restWidth":I
    const/16 v17, 0x0

    .line 209
    .local v17, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v134, :cond_f

    .line 210
    const-class v6, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v134

    move/from16 v1, v30

    move/from16 v2, v39

    invoke-static {v0, v1, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/LeadingMarginSpan;

    .line 212
    .local v130, "sp":[Landroid/text/style/LeadingMarginSpan;
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_4

    .line 213
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-1-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_4
    const/16 v113, 0x0

    .local v113, "i":I
    :goto_3
    move-object/from16 v0, v130

    array-length v6, v0

    move/from16 v0, v113

    if-ge v0, v6, :cond_8

    .line 216
    aget-object v117, v130, v113

    .line 217
    .local v117, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v6, v130, v113

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v103, v103, v6

    .line 218
    aget-object v6, v130, v113

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v129, v129, v6

    .line 222
    move-object/from16 v0, v117

    instance-of v6, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v6, :cond_5

    move-object/from16 v118, v117

    .line 223
    check-cast v118, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 224
    .local v118, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v134

    move-object/from16 v1, v118

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v119

    .line 225
    .local v119, "lmsFirstLine":I
    invoke-interface/range {v118 .. v118}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v6

    add-int v6, v6, v119

    move/from16 v0, v104

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v104

    .line 215
    .end local v118    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v119    # "lmsFirstLine":I
    :cond_5
    add-int/lit8 v113, v113, 0x1

    goto :goto_3

    .line 176
    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v18    # "chooseHtv":[I
    .end local v19    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v21    # "needMultiply":Z
    .end local v30    # "paraStart":I
    .end local v39    # "paraEnd":I
    .end local v94    # "beforeTime":J
    .end local v103    # "firstWidth":I
    .end local v104    # "firstWidthLineLimit":I
    .end local v113    # "i":I
    .end local v117    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v121    # "measured":Landroid/text/MeasuredText;
    .end local v129    # "restWidth":I
    .end local v130    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v134    # "spanned":Landroid/text/Spanned;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 201
    .restart local v18    # "chooseHtv":[I
    .restart local v19    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v21    # "needMultiply":Z
    .restart local v30    # "paraStart":I
    .restart local v39    # "paraEnd":I
    .restart local v94    # "beforeTime":J
    .restart local v121    # "measured":Landroid/text/MeasuredText;
    .restart local v134    # "spanned":Landroid/text/Spanned;
    :cond_7
    add-int/lit8 v39, v39, 0x1

    goto :goto_2

    .line 229
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v103    # "firstWidth":I
    .restart local v104    # "firstWidthLineLimit":I
    .restart local v113    # "i":I
    .restart local v129    # "restWidth":I
    .restart local v130    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_9

    .line 230
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-1-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_9
    const-class v6, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v134

    move/from16 v1, v30

    move/from16 v2, v39

    invoke-static {v0, v1, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v17, [Landroid/text/style/LineHeightSpan;

    .line 235
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v17

    array-length v6, v0

    if-eqz v6, :cond_f

    .line 236
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v17

    array-length v7, v0

    if-ge v6, v7, :cond_b

    .line 238
    :cond_a
    move-object/from16 v0, v17

    array-length v6, v0

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v18

    .line 240
    :cond_b
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_c

    .line 241
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-2-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_c
    const/16 v113, 0x0

    :goto_4
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v113

    if-ge v0, v6, :cond_e

    .line 244
    aget-object v6, v17, v113

    move-object/from16 v0, v134

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v122

    .line 246
    .local v122, "o":I
    move/from16 v0, v122

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 250
    move-object/from16 v0, p0

    move/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    aput v6, v18, v113

    .line 243
    :goto_5
    add-int/lit8 v113, v113, 0x1

    goto :goto_4

    .line 254
    :cond_d
    aput v14, v18, v113

    goto :goto_5

    .line 257
    .end local v122    # "o":I
    :cond_e
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_f

    .line 258
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-2-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v113    # "i":I
    .end local v130    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_f
    move-object/from16 v0, v121

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v39

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 264
    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v28, v0

    .line 265
    .local v28, "chs":[C
    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v29, v0

    .line 266
    .local v29, "widths":[F
    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v22, v0

    .line 267
    .local v22, "chdirs":[B
    move-object/from16 v0, v121

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v23, v0

    .line 268
    .local v23, "dir":I
    move-object/from16 v0, v121

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v24, v0

    .line 270
    .local v24, "easy":Z
    sub-int v6, v39, v30

    move-object/from16 v0, v120

    move-object/from16 v1, v28

    move-object/from16 v2, v97

    invoke-static {v0, v1, v6, v2}, Landroid/text/StaticLayout;->nLineBreakOpportunities(Ljava/lang/String;[CI[I)[I

    move-result-object v97

    .line 271
    const/16 v98, 0x0

    .line 273
    .local v98, "breakOppIndex":I
    move/from16 v139, v103

    .line 275
    .local v139, "width":I
    const/16 v63, 0x0

    .line 277
    .local v63, "w":F
    move/from16 v8, v30

    .line 281
    .local v8, "here":I
    move/from16 v123, v30

    .line 282
    .local v123, "ok":I
    move/from16 v128, v63

    .line 283
    .local v128, "okWidth":F
    const/16 v124, 0x0

    .local v124, "okAscent":I
    const/16 v126, 0x0

    .local v126, "okDescent":I
    const/16 v127, 0x0

    .local v127, "okTop":I
    const/16 v125, 0x0

    .line 287
    .local v125, "okBottom":I
    move/from16 v105, v30

    .line 288
    .local v105, "fit":I
    move/from16 v106, v63

    .line 289
    .local v106, "fitWidth":F
    const/16 v40, 0x0

    .local v40, "fitAscent":I
    const/16 v41, 0x0

    .local v41, "fitDescent":I
    const/16 v42, 0x0

    .local v42, "fitTop":I
    const/16 v43, 0x0

    .line 291
    .local v43, "fitBottom":I
    move/from16 v107, v63

    .line 293
    .local v107, "fitWidthGraphing":F
    const/16 v20, 0x0

    .line 294
    .local v20, "hasTabOrEmoji":Z
    const/16 v112, 0x0

    .line 295
    .local v112, "hasTab":Z
    const/16 v136, 0x0

    .line 296
    .local v136, "tabStops":Landroid/text/Layout$TabStops;
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_10

    .line 297
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-3-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_10
    move/from16 v133, v30

    .local v133, "spanStart":I
    :goto_6
    move/from16 v0, v133

    move/from16 v1, v39

    if-ge v0, v1, :cond_38

    .line 301
    if-nez v134, :cond_1b

    .line 302
    move/from16 v131, v39

    .line 303
    .local v131, "spanEnd":I
    sub-int v132, v131, v133

    .line 304
    .local v132, "spanLen":I
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_11

    .line 305
    const-string v6, "StaticLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[generate] addStyleRun-nospan-start "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v132

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_11
    move-object/from16 v0, v121

    move-object/from16 v1, p4

    move/from16 v2, v132

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 308
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_12

    .line 309
    const-string v6, "StaticLayout"

    const-string v7, "[generate] addStyleRun-nospan-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_12
    :goto_7
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v111, v0

    .line 328
    .local v111, "fmTop":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v109, v0

    .line 329
    .local v109, "fmBottom":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v108, v0

    .line 330
    .local v108, "fmAscent":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v110, v0

    .line 331
    .local v110, "fmDescent":I
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_13

    .line 332
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-4-start"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_13
    move/from16 v116, v133

    .local v116, "j":I
    :goto_8
    move/from16 v0, v116

    move/from16 v1, v131

    if-ge v0, v1, :cond_2e

    .line 335
    sub-int v6, v116, v30

    aget-char v99, v28, v6

    .line 337
    .local v99, "c":C
    const/16 v6, 0xa

    move/from16 v0, v99

    if-ne v0, v6, :cond_1d

    .line 388
    :goto_9
    const/16 v6, 0x20

    move/from16 v0, v99

    if-eq v0, v6, :cond_14

    const/16 v6, 0x9

    move/from16 v0, v99

    if-eq v0, v6, :cond_14

    const/16 v6, 0x200b

    move/from16 v0, v99

    if-ne v0, v6, :cond_25

    :cond_14
    const/16 v115, 0x1

    .line 390
    .local v115, "isSpaceOrTab":Z
    :goto_a
    move/from16 v0, v139

    int-to-float v6, v0

    cmpg-float v6, v63, v6

    if-lez v6, :cond_15

    if-eqz v115, :cond_2c

    .line 391
    :cond_15
    move/from16 v106, v63

    .line 392
    if-nez v115, :cond_16

    .line 393
    move/from16 v107, v63

    .line 395
    :cond_16
    add-int/lit8 v105, v116, 0x1

    .line 397
    move/from16 v0, v111

    move/from16 v1, v42

    if-ge v0, v1, :cond_17

    .line 398
    move/from16 v42, v111

    .line 399
    :cond_17
    move/from16 v0, v108

    move/from16 v1, v40

    if-ge v0, v1, :cond_18

    .line 400
    move/from16 v40, v108

    .line 401
    :cond_18
    move/from16 v0, v110

    move/from16 v1, v41

    if-le v0, v1, :cond_19

    .line 402
    move/from16 v41, v110

    .line 403
    :cond_19
    move/from16 v0, v109

    move/from16 v1, v43

    if-le v0, v1, :cond_1a

    .line 404
    move/from16 v43, v109

    .line 407
    :cond_1a
    :goto_b
    aget v6, v97, v98

    const/4 v7, -0x1

    if-eq v6, v7, :cond_26

    aget v6, v97, v98

    sub-int v7, v116, v30

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_26

    .line 408
    add-int/lit8 v98, v98, 0x1

    goto :goto_b

    .line 312
    .end local v99    # "c":C
    .end local v108    # "fmAscent":I
    .end local v109    # "fmBottom":I
    .end local v110    # "fmDescent":I
    .end local v111    # "fmTop":I
    .end local v115    # "isSpaceOrTab":Z
    .end local v116    # "j":I
    .end local v131    # "spanEnd":I
    .end local v132    # "spanLen":I
    :cond_1b
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v134

    move/from16 v1, v133

    move/from16 v2, v39

    invoke-interface {v0, v1, v2, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v131

    .line 314
    .restart local v131    # "spanEnd":I
    sub-int v132, v131, v133

    .line 315
    .restart local v132    # "spanLen":I
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v134

    move/from16 v1, v133

    move/from16 v2, v131

    invoke-interface {v0, v1, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v135

    check-cast v135, [Landroid/text/style/MetricAffectingSpan;

    .line 317
    .local v135, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v135

    move-object/from16 v1, v134

    invoke-static {v0, v1, v6}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v135

    .end local v135    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v135, [Landroid/text/style/MetricAffectingSpan;

    .line 318
    .restart local v135    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_1c

    .line 319
    const-string v6, "StaticLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[generate] addStyleRun-span-start "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v132

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1c
    move-object/from16 v0, v121

    move-object/from16 v1, p4

    move-object/from16 v2, v135

    move/from16 v3, v132

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 322
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_12

    .line 323
    const-string v6, "StaticLayout"

    const-string v7, "[generate] addStyleRun-span-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 339
    .end local v135    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v99    # "c":C
    .restart local v108    # "fmAscent":I
    .restart local v109    # "fmBottom":I
    .restart local v110    # "fmDescent":I
    .restart local v111    # "fmTop":I
    .restart local v116    # "j":I
    :cond_1d
    const/16 v6, 0x9

    move/from16 v0, v99

    if-ne v0, v6, :cond_20

    .line 340
    if-nez v112, :cond_1e

    .line 341
    const/16 v112, 0x1

    .line 342
    const/16 v20, 0x1

    .line 343
    if-eqz v134, :cond_1e

    .line 345
    const-class v6, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v134

    move/from16 v1, v30

    move/from16 v2, v39

    invoke-static {v0, v1, v2, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v135

    check-cast v135, [Landroid/text/style/TabStopSpan;

    .line 347
    .local v135, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v135

    array-length v6, v0

    if-lez v6, :cond_1e

    .line 348
    new-instance v136, Landroid/text/Layout$TabStops;

    .end local v136    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v6, 0x14

    move-object/from16 v0, v136

    move-object/from16 v1, v135

    invoke-direct {v0, v6, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 352
    .end local v135    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v136    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1e
    if-eqz v136, :cond_1f

    .line 353
    move-object/from16 v0, v136

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v63

    goto/16 :goto_9

    .line 355
    :cond_1f
    const/16 v6, 0x14

    move/from16 v0, v63

    invoke-static {v0, v6}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v63

    goto/16 :goto_9

    .line 357
    :cond_20
    const v6, 0xd800

    move/from16 v0, v99

    if-lt v0, v6, :cond_24

    const v6, 0xdfff

    move/from16 v0, v99

    if-gt v0, v6, :cond_24

    add-int/lit8 v6, v116, 0x1

    move/from16 v0, v131

    if-ge v6, v0, :cond_24

    .line 359
    sub-int v6, v116, v30

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v102

    .line 361
    .local v102, "emoji":I
    sget v6, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v102

    if-lt v0, v6, :cond_23

    sget v6, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v102

    if-gt v0, v6, :cond_23

    .line 362
    sget-object v6, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v102

    invoke-virtual {v6, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v96

    .line 364
    .local v96, "bm":Landroid/graphics/Bitmap;
    if-eqz v96, :cond_22

    .line 367
    if-nez v134, :cond_21

    .line 368
    move-object/from16 v137, p4

    .line 373
    .local v137, "whichPaint":Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v137 .. v137}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v138, v6, v7

    .line 375
    .local v138, "wid":F
    add-float v63, v63, v138

    .line 376
    const/16 v20, 0x1

    .line 377
    add-int/lit8 v116, v116, 0x1

    .line 378
    goto/16 :goto_9

    .line 370
    .end local v137    # "whichPaint":Landroid/graphics/Paint;
    .end local v138    # "wid":F
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v137, v0

    .restart local v137    # "whichPaint":Landroid/graphics/Paint;
    goto :goto_c

    .line 379
    .end local v137    # "whichPaint":Landroid/graphics/Paint;
    :cond_22
    sub-int v6, v116, v30

    aget v6, v29, v6

    add-float v63, v63, v6

    goto/16 :goto_9

    .line 382
    .end local v96    # "bm":Landroid/graphics/Bitmap;
    :cond_23
    sub-int v6, v116, v30

    aget v6, v29, v6

    add-float v63, v63, v6

    goto/16 :goto_9

    .line 385
    .end local v102    # "emoji":I
    :cond_24
    sub-int v6, v116, v30

    aget v6, v29, v6

    add-float v63, v63, v6

    goto/16 :goto_9

    .line 388
    :cond_25
    const/16 v115, 0x0

    goto/16 :goto_a

    .line 410
    .restart local v115    # "isSpaceOrTab":Z
    :cond_26
    move-object/from16 v0, v97

    array-length v6, v0

    move/from16 v0, v98

    if-ge v0, v6, :cond_2b

    aget v6, v97, v98

    sub-int v7, v116, v30

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_2b

    const/16 v114, 0x1

    .line 413
    .local v114, "isLineBreak":Z
    :goto_d
    if-eqz v114, :cond_2a

    .line 414
    move/from16 v128, v107

    .line 415
    add-int/lit8 v123, v116, 0x1

    .line 417
    move/from16 v0, v42

    move/from16 v1, v127

    if-ge v0, v1, :cond_27

    .line 418
    move/from16 v127, v42

    .line 419
    :cond_27
    move/from16 v0, v40

    move/from16 v1, v124

    if-ge v0, v1, :cond_28

    .line 420
    move/from16 v124, v40

    .line 421
    :cond_28
    move/from16 v0, v41

    move/from16 v1, v126

    if-le v0, v1, :cond_29

    .line 422
    move/from16 v126, v41

    .line 423
    :cond_29
    move/from16 v0, v43

    move/from16 v1, v125

    if-le v0, v1, :cond_2a

    .line 424
    move/from16 v125, v43

    .line 334
    .end local v114    # "isLineBreak":Z
    :cond_2a
    add-int/lit8 v116, v116, 0x1

    goto/16 :goto_8

    .line 410
    :cond_2b
    const/16 v114, 0x0

    goto :goto_d

    .line 432
    :cond_2c
    move/from16 v0, v123

    if-eq v0, v8, :cond_31

    .line 433
    move/from16 v9, v123

    .line 434
    .local v9, "endPos":I
    move/from16 v10, v124

    .line 435
    .local v10, "above":I
    move/from16 v11, v126

    .line 436
    .local v11, "below":I
    move/from16 v12, v127

    .line 437
    .local v12, "top":I
    move/from16 v13, v125

    .line 438
    .local v13, "bottom":I
    move/from16 v33, v128

    .line 439
    .local v33, "currentTextWidth":F
    add-int/lit8 v6, v116, 0x1

    move/from16 v0, v131

    if-ge v6, v0, :cond_30

    const/16 v35, 0x1

    .local v35, "moreChars":Z
    :goto_e
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v25, p3

    move/from16 v26, p9

    move/from16 v27, p10

    move-object/from16 v31, p12

    move/from16 v32, p11

    move-object/from16 v34, p4

    .line 464
    invoke-direct/range {v6 .. v35}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v14

    .line 471
    move v8, v9

    .line 472
    add-int/lit8 v116, v8, -0x1

    .line 473
    move/from16 v105, v8

    move/from16 v123, v8

    .line 474
    const/16 v63, 0x0

    .line 475
    move/from16 v107, v63

    .line 476
    const/16 v43, 0x0

    move/from16 v42, v43

    move/from16 v41, v43

    move/from16 v40, v43

    .line 477
    const/16 v125, 0x0

    move/from16 v127, v125

    move/from16 v126, v125

    move/from16 v124, v125

    .line 479
    add-int/lit8 v104, v104, -0x1

    if-gtz v104, :cond_2d

    .line 480
    move/from16 v139, v129

    .line 483
    :cond_2d
    move/from16 v0, v133

    if-ge v8, v0, :cond_36

    .line 486
    move-object/from16 v0, v121

    invoke-virtual {v0, v8}, Landroid/text/MeasuredText;->setPos(I)V

    .line 487
    move/from16 v131, v8

    .line 496
    .end local v9    # "endPos":I
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v33    # "currentTextWidth":F
    .end local v35    # "moreChars":Z
    .end local v99    # "c":C
    .end local v115    # "isSpaceOrTab":Z
    :cond_2e
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_2f

    .line 497
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-4-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2f
    move/from16 v133, v131

    goto/16 :goto_6

    .line 439
    .restart local v9    # "endPos":I
    .restart local v10    # "above":I
    .restart local v11    # "below":I
    .restart local v12    # "top":I
    .restart local v13    # "bottom":I
    .restart local v33    # "currentTextWidth":F
    .restart local v99    # "c":C
    .restart local v115    # "isSpaceOrTab":Z
    :cond_30
    const/16 v35, 0x0

    goto :goto_e

    .line 440
    .end local v9    # "endPos":I
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v33    # "currentTextWidth":F
    :cond_31
    move/from16 v0, v105

    if-eq v0, v8, :cond_33

    .line 441
    move/from16 v9, v105

    .line 442
    .restart local v9    # "endPos":I
    move/from16 v10, v40

    .line 443
    .restart local v10    # "above":I
    move/from16 v11, v41

    .line 444
    .restart local v11    # "below":I
    move/from16 v12, v42

    .line 445
    .restart local v12    # "top":I
    move/from16 v13, v43

    .line 446
    .restart local v13    # "bottom":I
    move/from16 v33, v106

    .line 447
    .restart local v33    # "currentTextWidth":F
    add-int/lit8 v6, v116, 0x1

    move/from16 v0, v131

    if-ge v6, v0, :cond_32

    const/16 v35, 0x1

    .restart local v35    # "moreChars":Z
    :goto_f
    goto :goto_e

    .end local v35    # "moreChars":Z
    :cond_32
    const/16 v35, 0x0

    goto :goto_f

    .line 450
    .end local v9    # "endPos":I
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v33    # "currentTextWidth":F
    :cond_33
    add-int/lit8 v9, v8, 0x1

    .line 453
    .restart local v9    # "endPos":I
    :goto_10
    move/from16 v0, v131

    if-ge v9, v0, :cond_34

    sub-int v6, v9, v30

    aget v6, v29, v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_34

    .line 454
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 456
    :cond_34
    move/from16 v10, v108

    .line 457
    .restart local v10    # "above":I
    move/from16 v11, v110

    .line 458
    .restart local v11    # "below":I
    move/from16 v12, v111

    .line 459
    .restart local v12    # "top":I
    move/from16 v13, v109

    .line 460
    .restart local v13    # "bottom":I
    sub-int v6, v8, v30

    aget v33, v29, v6

    .line 461
    .restart local v33    # "currentTextWidth":F
    move/from16 v0, v131

    if-ge v9, v0, :cond_35

    const/16 v35, 0x1

    .restart local v35    # "moreChars":Z
    :goto_11
    goto/16 :goto_e

    .end local v35    # "moreChars":Z
    :cond_35
    const/16 v35, 0x0

    goto :goto_11

    .line 491
    .restart local v35    # "moreChars":Z
    :cond_36
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v6, v7, :cond_2a

    .line 564
    .end local v8    # "here":I
    .end local v9    # "endPos":I
    .end local v10    # "above":I
    .end local v11    # "below":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v20    # "hasTabOrEmoji":Z
    .end local v22    # "chdirs":[B
    .end local v23    # "dir":I
    .end local v24    # "easy":Z
    .end local v28    # "chs":[C
    .end local v29    # "widths":[F
    .end local v33    # "currentTextWidth":F
    .end local v35    # "moreChars":Z
    .end local v39    # "paraEnd":I
    .end local v40    # "fitAscent":I
    .end local v41    # "fitDescent":I
    .end local v42    # "fitTop":I
    .end local v43    # "fitBottom":I
    .end local v63    # "w":F
    .end local v98    # "breakOppIndex":I
    .end local v99    # "c":C
    .end local v103    # "firstWidth":I
    .end local v104    # "firstWidthLineLimit":I
    .end local v105    # "fit":I
    .end local v106    # "fitWidth":F
    .end local v107    # "fitWidthGraphing":F
    .end local v108    # "fmAscent":I
    .end local v109    # "fmBottom":I
    .end local v110    # "fmDescent":I
    .end local v111    # "fmTop":I
    .end local v112    # "hasTab":Z
    .end local v115    # "isSpaceOrTab":Z
    .end local v116    # "j":I
    .end local v123    # "ok":I
    .end local v124    # "okAscent":I
    .end local v125    # "okBottom":I
    .end local v126    # "okDescent":I
    .end local v127    # "okTop":I
    .end local v128    # "okWidth":F
    .end local v129    # "restWidth":I
    .end local v131    # "spanEnd":I
    .end local v132    # "spanLen":I
    .end local v133    # "spanStart":I
    .end local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v139    # "width":I
    :cond_37
    :goto_12
    return-void

    .line 500
    .restart local v8    # "here":I
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v20    # "hasTabOrEmoji":Z
    .restart local v22    # "chdirs":[B
    .restart local v23    # "dir":I
    .restart local v24    # "easy":Z
    .restart local v28    # "chs":[C
    .restart local v29    # "widths":[F
    .restart local v39    # "paraEnd":I
    .restart local v40    # "fitAscent":I
    .restart local v41    # "fitDescent":I
    .restart local v42    # "fitTop":I
    .restart local v43    # "fitBottom":I
    .restart local v63    # "w":F
    .restart local v98    # "breakOppIndex":I
    .restart local v103    # "firstWidth":I
    .restart local v104    # "firstWidthLineLimit":I
    .restart local v105    # "fit":I
    .restart local v106    # "fitWidth":F
    .restart local v107    # "fitWidthGraphing":F
    .restart local v112    # "hasTab":Z
    .restart local v123    # "ok":I
    .restart local v124    # "okAscent":I
    .restart local v125    # "okBottom":I
    .restart local v126    # "okDescent":I
    .restart local v127    # "okTop":I
    .restart local v128    # "okWidth":F
    .restart local v129    # "restWidth":I
    .restart local v133    # "spanStart":I
    .restart local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v139    # "width":I
    :cond_38
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_39

    .line 501
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-3-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_39
    move/from16 v0, v39

    if-eq v0, v8, :cond_3b

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v6, v7, :cond_3b

    .line 505
    or-int v6, v42, v43

    or-int v6, v6, v41

    or-int v6, v6, v40

    if-nez v6, :cond_3a

    .line 507
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 509
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v42, v0

    .line 510
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v43, v0

    .line 511
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v40, v0

    .line 512
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v41, v0

    .line 517
    :cond_3a
    move/from16 v0, v39

    move/from16 v1, p3

    if-eq v0, v1, :cond_41

    const/16 v65, 0x1

    :goto_13
    move-object/from16 v36, p0

    move-object/from16 v37, p1

    move/from16 v38, v8

    move/from16 v44, v14

    move/from16 v45, p7

    move/from16 v46, p8

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move-object/from16 v49, v19

    move/from16 v50, v20

    move/from16 v51, v21

    move-object/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, v24

    move/from16 v55, p3

    move/from16 v56, p9

    move/from16 v57, p10

    move-object/from16 v58, v28

    move-object/from16 v59, v29

    move/from16 v60, v30

    move-object/from16 v61, p12

    move/from16 v62, p11

    move-object/from16 v64, p4

    invoke-direct/range {v36 .. v65}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v14

    .line 529
    :cond_3b
    move/from16 v30, v39

    .line 531
    move/from16 v0, v39

    move/from16 v1, p3

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v6, v7, :cond_42

    .line 534
    .end local v8    # "here":I
    .end local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v20    # "hasTabOrEmoji":Z
    .end local v22    # "chdirs":[B
    .end local v23    # "dir":I
    .end local v24    # "easy":Z
    .end local v28    # "chs":[C
    .end local v29    # "widths":[F
    .end local v39    # "paraEnd":I
    .end local v40    # "fitAscent":I
    .end local v41    # "fitDescent":I
    .end local v42    # "fitTop":I
    .end local v43    # "fitBottom":I
    .end local v63    # "w":F
    .end local v98    # "breakOppIndex":I
    .end local v103    # "firstWidth":I
    .end local v104    # "firstWidthLineLimit":I
    .end local v105    # "fit":I
    .end local v106    # "fitWidth":F
    .end local v107    # "fitWidthGraphing":F
    .end local v112    # "hasTab":Z
    .end local v123    # "ok":I
    .end local v124    # "okAscent":I
    .end local v125    # "okBottom":I
    .end local v126    # "okDescent":I
    .end local v127    # "okTop":I
    .end local v128    # "okWidth":F
    .end local v129    # "restWidth":I
    .end local v133    # "spanStart":I
    .end local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v139    # "width":I
    :cond_3c
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_3d

    .line 535
    const-string v6, "StaticLayout"

    const-string v7, "[generate] for-0-end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_3d
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3e

    add-int/lit8 v6, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3f

    :cond_3e
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v6, v7, :cond_3f

    .line 543
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    .line 545
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v68, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v69, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v70, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v71, v0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v78, 0x0

    move-object/from16 v0, v121

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v80, v0

    move-object/from16 v0, v121

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v81, v0

    move-object/from16 v0, v121

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v82, v0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v91, 0x0

    const/16 v93, 0x0

    move-object/from16 v64, p0

    move-object/from16 v65, p1

    move/from16 v66, p3

    move/from16 v67, p3

    move/from16 v72, v14

    move/from16 v73, p7

    move/from16 v74, p8

    move-object/from16 v77, v19

    move/from16 v79, v21

    move/from16 v83, p3

    move/from16 v84, p9

    move/from16 v85, p10

    move/from16 v88, p2

    move-object/from16 v89, p12

    move/from16 v90, p11

    move-object/from16 v92, p4

    invoke-direct/range {v64 .. v93}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v14

    .line 556
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v100, v6, v94

    .line 557
    .local v100, "diffTime":J
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_37

    .line 558
    const-wide/16 v6, 0x0

    cmp-long v6, v100, v6

    if-lez v6, :cond_40

    .line 559
    const-string v6, "StaticLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[generate] diff "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v100 .. v101}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_40
    const-string v6, "StaticLayout"

    const-string v7, "[generate] end"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_12

    .line 517
    .end local v100    # "diffTime":J
    .restart local v8    # "here":I
    .restart local v17    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v20    # "hasTabOrEmoji":Z
    .restart local v22    # "chdirs":[B
    .restart local v23    # "dir":I
    .restart local v24    # "easy":Z
    .restart local v28    # "chs":[C
    .restart local v29    # "widths":[F
    .restart local v39    # "paraEnd":I
    .restart local v40    # "fitAscent":I
    .restart local v41    # "fitDescent":I
    .restart local v42    # "fitTop":I
    .restart local v43    # "fitBottom":I
    .restart local v63    # "w":F
    .restart local v98    # "breakOppIndex":I
    .restart local v103    # "firstWidth":I
    .restart local v104    # "firstWidthLineLimit":I
    .restart local v105    # "fit":I
    .restart local v106    # "fitWidth":F
    .restart local v107    # "fitWidthGraphing":F
    .restart local v112    # "hasTab":Z
    .restart local v123    # "ok":I
    .restart local v124    # "okAscent":I
    .restart local v125    # "okBottom":I
    .restart local v126    # "okDescent":I
    .restart local v127    # "okTop":I
    .restart local v128    # "okWidth":F
    .restart local v129    # "restWidth":I
    .restart local v133    # "spanStart":I
    .restart local v136    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v139    # "width":I
    :cond_41
    const/16 v65, 0x0

    goto/16 :goto_13

    .line 196
    :cond_42
    move/from16 v30, v39

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 928
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 932
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 937
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 938
    const/4 v0, 0x0

    .line 941
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 908
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 888
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 889
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 891
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 913
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 852
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 853
    .local v1, "high":I
    const/4 v3, -0x1

    .line 855
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 856
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 857
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 858
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 859
    move v1, v0

    goto :goto_0

    .line 861
    :cond_0
    move v3, v0

    goto :goto_0

    .line 864
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 865
    const/4 v3, 0x0

    .line 867
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 898
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 878
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 879
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 881
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 883
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 903
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public isSingleLineRtoL()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 963
    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    aget v2, v2, v0

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 950
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 951
    return-void
.end method
