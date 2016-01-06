.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1049
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$300(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1054
    :cond_0
    move v1, p2

    .line 1055
    .local v1, "dataEnabled":Z
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$400(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "currentTab":Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1057
    if-eqz v1, :cond_2

    .line 1058
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    const/4 v3, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$500(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    .line 1066
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    const/4 v3, 0x0

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$600(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    goto :goto_0

    .line 1062
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$4;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    goto :goto_1
.end method
