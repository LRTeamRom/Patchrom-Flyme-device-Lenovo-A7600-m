.class Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$2;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;Z)V
    .locals 1
    .param p1, "sweep"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$2;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    # invokes: Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->access$300(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;)V

    .line 305
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$2;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    # getter for: Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->access$400(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$2;->this$0:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;

    # getter for: Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->mListener:Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;->access$400(Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView;)Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/deviceoriginalsettings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 308
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "sweep"    # Lcom/flyme/deviceoriginalsettings/widget/ChartSweepView;

    .prologue
    .line 313
    return-void
.end method
