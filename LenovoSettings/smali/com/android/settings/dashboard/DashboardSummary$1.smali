.class Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;
.super Landroid/os/Handler;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    # invokes: Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->access$000(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;Landroid/content/Context;)V

    goto :goto_0

    .line 102
    .end local v0    # "context":Landroid/content/Context;
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary$1;->this$0:Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    # invokes: Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->moveToHeaderIfNeeded(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;->access$100(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
