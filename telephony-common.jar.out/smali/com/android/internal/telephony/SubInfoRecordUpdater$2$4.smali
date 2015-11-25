.class Lcom/android/internal/telephony/SubInfoRecordUpdater$2$4;
.super Ljava/lang/Thread;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SubInfoRecordUpdater$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater$2;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$4;->this$1:Lcom/android/internal/telephony/SubInfoRecordUpdater$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$4;->this$1:Lcom/android/internal/telephony/SubInfoRecordUpdater$2;

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    .line 311
    return-void
.end method
