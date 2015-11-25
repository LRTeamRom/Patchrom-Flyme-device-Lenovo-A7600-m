.class Lcom/android/internal/telephony/SubInfoRecordUpdater$5;
.super Ljava/lang/Object;
.source "SubInfoRecordUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;
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
    .line 880
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # ++operator for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I
    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$404(Lcom/android/internal/telephony/SubInfoRecordUpdater;)I

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I
    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$400(Lcom/android/internal/telephony/SubInfoRecordUpdater;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->readIccIdProperty()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1700(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1800(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 888
    :cond_0
    return-void
.end method
