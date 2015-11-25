.class Lcom/android/internal/telephony/SubInfoRecordUpdater$4;
.super Ljava/lang/Thread;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$4;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 441
    const-string v3, "handleMessage : <EVENT_ICC_CHANGED>"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    .line 443
    .local v2, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 444
    .local v1, "nSubCount":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSubCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 446
    iget-object v4, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$4;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubInfoRecord;

    iget v3, v3, Landroid/telephony/SubInfoRecord;->slotId:I

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->registerForSimRecordEvents(I)V
    invoke-static {v4, v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1600(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "i":I
    .end local v1    # "nSubCount":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 448
    .restart local v0    # "i":I
    .restart local v1    # "nSubCount":I
    :cond_1
    return-void
.end method
