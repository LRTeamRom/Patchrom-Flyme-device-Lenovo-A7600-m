.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/flyme/deviceoriginalsettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/deviceoriginalsettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    new-instance v0, Lcom/flyme/deviceoriginalsettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/flyme/deviceoriginalsettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/flyme/deviceoriginalsettings/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/flyme/deviceoriginalsettings/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/deviceoriginalsettings/net/ChartData;",
            ">;",
            "Lcom/flyme/deviceoriginalsettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/flyme/deviceoriginalsettings/net/ChartData;>;"
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # setter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1702(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/net/ChartData;)Lcom/flyme/deviceoriginalsettings/net/ChartData;

    .line 1233
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1234
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1237
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    .line 1238
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1800(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1241
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1700(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1244
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1224
    check-cast p2, Lcom/flyme/deviceoriginalsettings/net/ChartData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->onLoadFinished(Landroid/content/Loader;Lcom/flyme/deviceoriginalsettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/flyme/deviceoriginalsettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/flyme/deviceoriginalsettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1248
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # setter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChartData:Lcom/flyme/deviceoriginalsettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1702(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Lcom/flyme/deviceoriginalsettings/net/ChartData;)Lcom/flyme/deviceoriginalsettings/net/ChartData;

    .line 1249
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1250
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$10;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1251
    return-void
.end method
