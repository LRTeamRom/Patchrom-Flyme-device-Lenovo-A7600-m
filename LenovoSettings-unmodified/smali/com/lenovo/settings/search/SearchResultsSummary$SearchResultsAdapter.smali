.class Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DOLLAR_REPLACE:Ljava/lang/String; = "$s"

.field private static final PERCENT_RECLACE:Ljava/lang/String; = "%s"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    .line 525
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 526
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 528
    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private getIconResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "iconResStr"    # Ljava/lang/String;
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    invoke-static {p2}, Lcom/lenovo/settings/search/SearchPluginMapping;->getPluginIconRes(Ljava/lang/String;)I

    move-result v0

    .line 652
    .local v0, "iconResId":I
    if-lez v0, :cond_0

    .line 656
    .end local v0    # "iconResId":I
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f020063

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private updateResultView(Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;)V
    .locals 17
    .param p1, "holder"    # Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;
    .param p2, "result"    # Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;

    .prologue
    .line 661
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 666
    .local v2, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p2

    iget v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->iconResId:I

    const v14, 0x7f020063

    if-eq v13, v14, :cond_2

    .line 667
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 670
    .local v5, "packageContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->iconResId:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 671
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "packageContext":Landroid/content/Context;
    :goto_1
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    .line 682
    .local v11, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    .line 684
    .local v8, "summary":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 685
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    .end local v8    # "summary":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .restart local v5    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v4

    .line 674
    .local v4, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v13, "SearchResultsSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot load Drawable for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 677
    .end local v4    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "packageContext":Landroid/content/Context;
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    const v13, 0x7f020063

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 682
    .restart local v11    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    goto :goto_2

    .line 688
    .restart local v8    # "summary":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 690
    .local v6, "queryLength":I
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 691
    .local v12, "titleSsb":Landroid/text/SpannableStringBuilder;
    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0048

    invoke-direct {v13, v14, v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x22

    invoke-virtual/range {v12 .. v16}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 695
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 696
    .local v3, "keywordIdx":I
    if-ltz v3, :cond_5

    .line 697
    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0049

    invoke-direct {v13, v14, v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    add-int v14, v3, v6

    const/16 v15, 0x22

    invoke-virtual {v12, v13, v3, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 700
    :cond_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 703
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 705
    :cond_6
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 706
    .local v10, "summarySsb":Landroid/text/SpannableStringBuilder;
    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0b004a

    invoke-direct {v13, v14, v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 709
    const/4 v9, 0x0

    .line 710
    .local v9, "summaryIdx":I
    const/4 v7, 0x0

    .line 711
    .local v7, "start":I
    :cond_7
    :goto_3
    if-ltz v9, :cond_8

    .line 712
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 713
    if-ltz v9, :cond_7

    .line 714
    add-int v7, v9, v6

    .line 715
    new-instance v13, Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0b004b

    invoke-direct {v13, v14, v15}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v14, 0x22

    invoke-virtual {v10, v13, v9, v7, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 720
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 16
    .param p1, "position"    # I

    .prologue
    .line 560
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x1

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x2

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x3

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "summaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x4

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "entries":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v14, 0x6

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0x8

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 567
    .local v11, "iconResStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xa

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 568
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xb

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 569
    .local v12, "intentTargetClass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v14, 0xd

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 572
    .local v8, "key":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 574
    .local v2, "packageContext":Landroid/content/Context;
    if-nez v2, :cond_0

    .line 576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v8}, Lcom/lenovo/settings/search/SearchPluginMapping;->getPluginIconRes(Ljava/lang/String;)I

    move-result v7

    .local v7, "iconResId":I
    if-lez v7, :cond_3

    .line 594
    if-lez v7, :cond_1

    .line 595
    const/4 v2, 0x0

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 607
    :cond_1
    :goto_1
    new-instance v1, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 610
    .end local v2    # "packageContext":Landroid/content/Context;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "summaryOn":Ljava/lang/String;
    .end local v5    # "summaryOff":Ljava/lang/String;
    .end local v6    # "entries":Ljava/lang/String;
    .end local v7    # "iconResId":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v11    # "iconResStr":Ljava/lang/String;
    .end local v12    # "intentTargetClass":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 577
    .restart local v2    # "packageContext":Landroid/content/Context;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v4    # "summaryOn":Ljava/lang/String;
    .restart local v5    # "summaryOff":Ljava/lang/String;
    .restart local v6    # "entries":Ljava/lang/String;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v11    # "iconResStr":Ljava/lang/String;
    .restart local v12    # "intentTargetClass":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 578
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SearchResultsSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot create Context for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    goto :goto_2

    .line 584
    .end local v2    # "packageContext":Landroid/content/Context;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .restart local v2    # "packageContext":Landroid/content/Context;
    goto :goto_0

    .line 599
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v7, 0x7f020063

    .line 601
    .restart local v7    # "iconResId":I
    :goto_3
    if-nez v7, :cond_1

    .line 602
    const/high16 v7, 0x7f030000

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 599
    .end local v7    # "iconResId":I
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    .line 610
    .end local v2    # "packageContext":Landroid/content/Context;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "summaryOn":Ljava/lang/String;
    .end local v5    # "summaryOff":Ljava/lang/String;
    .end local v6    # "entries":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v11    # "iconResStr":Ljava/lang/String;
    .end local v12    # "intentTargetClass":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 615
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 620
    iget-boolean v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    .line 621
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "this should only be called when the cursor is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 625
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t move cursor to position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 630
    :cond_1
    if-nez p2, :cond_2

    .line 631
    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400da

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 633
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    .line 634
    .local v0, "holder":Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;
    const v3, 0x7f0e0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 635
    const/high16 v3, 0x7f0e0000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 636
    const v3, 0x7f0e0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 637
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 643
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;

    .line 644
    .local v1, "result":Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;
    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->updateResultView(Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;)V

    .line 646
    return-object v2

    .line 639
    .end local v0    # "holder":Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;
    .end local v1    # "result":Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    move-object v2, p2

    .line 640
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 543
    :goto_0
    return-object v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 535
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 536
    if-eqz p1, :cond_1

    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 538
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 540
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 541
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
