.class public Lcom/lenovo/settings/search/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;,
        Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SearchResult;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionItem;
    }
.end annotation


# static fields
.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final SAVE_KEY_SHOW_RESULTS:Ljava/lang/String; = ":search:show_results"

.field private static final TAG:Ljava/lang/String; = "SearchResultsSummary"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 775
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/search/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/settings/search/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/settings/search/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/settings/search/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/settings/search/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/settings/search/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/SearchResultsSummary;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 370
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 374
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 376
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 336
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 338
    :cond_0
    invoke-direct {p0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 339
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 319
    iput-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 321
    :cond_0
    invoke-direct {p0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 322
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v3, 0x0

    .line 363
    :goto_0
    return-object v3

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 358
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 359
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 280
    :cond_0
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 344
    .local v0, "oldCursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->setQuery(Ljava/lang/String;)V

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 349
    .end local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    :cond_0
    return-void

    .line 265
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 327
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 331
    .end local v0    # "oldCursor":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    :cond_0
    return-void

    .line 271
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 389
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearAllTasks()V

    .line 390
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v3}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 392
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 396
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearAllTasks()V

    .line 380
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 381
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 385
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected loadSearchContent()V
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->access$200(Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSearchResults()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->showSomeSuggestions()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    .line 71
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v0, ":search:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 76
    :cond_0
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/search/SearchResultsSummary$1;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 91
    const v1, 0x7f0400d7

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 94
    const v1, 0x7f0e023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 95
    const v1, 0x7f0e023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 96
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/lenovo/settings/search/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/search/SearchResultsSummary$2;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    const v2, 0x7f0400d8

    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    const v1, 0x7f0e023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 177
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/lenovo/settings/search/SearchResultsSummary$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/search/SearchResultsSummary$3;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    const v2, 0x7f0400d9

    iget-object v3, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 203
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 237
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    .line 238
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSearchResultsTask;

    .line 240
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 241
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    .line 242
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/lenovo/settings/search/SearchResultsSummary$UpdateSuggestionsTask;

    .line 244
    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 247
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 291
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 292
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSuggestions()V

    .line 298
    :goto_0
    return v2

    .line 294
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 295
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 296
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 302
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 303
    iput-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 305
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSearchResults()V

    .line 306
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->saveQueryToDatabase()V

    .line 307
    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 210
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/search/Index;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->loadSearchContent()V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 214
    invoke-direct {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a03ce

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 216
    new-instance v0, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;-><init>(Lcom/lenovo/settings/search/SearchResultsSummary;Lcom/lenovo/settings/search/SearchResultsSummary$1;)V

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary$LoadingSearchIndexThread;->start()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v0, ":search:show_results"

    iget-boolean v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 230
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearSuggestions()V

    .line 231
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->clearResults()V

    .line 232
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 251
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lcom/lenovo/settings/search/SearchResultsSummary;->updateSuggestions()V

    .line 314
    return-void
.end method
