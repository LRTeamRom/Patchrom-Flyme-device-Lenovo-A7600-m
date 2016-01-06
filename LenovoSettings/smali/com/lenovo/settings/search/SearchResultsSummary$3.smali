.class Lcom/lenovo/settings/search/SearchResultsSummary$3;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 183
    add-int/lit8 p3, p3, -0x1

    .line 186
    if-gez p3, :cond_0

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mSuggestionsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;
    invoke-static {v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$400(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;->access$500(Lcom/lenovo/settings/search/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mShowResults:Z
    invoke-static {v1, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$602(Lcom/lenovo/settings/search/SearchResultsSummary;Z)Z

    .line 194
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$702(Lcom/lenovo/settings/search/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$800(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/search/SearchResultsSummary$3;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$700(Lcom/lenovo/settings/search/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
