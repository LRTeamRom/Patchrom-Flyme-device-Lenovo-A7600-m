.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1312
    return-void
.end method

.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$800(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;J)V

    .line 1322
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mChart:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;J)V

    .line 1317
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1332
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$12;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    .line 1327
    return-void
.end method
