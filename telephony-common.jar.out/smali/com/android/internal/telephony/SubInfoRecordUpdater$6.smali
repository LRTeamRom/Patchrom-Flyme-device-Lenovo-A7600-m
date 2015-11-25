.class Lcom/android/internal/telephony/SubInfoRecordUpdater$6;
.super Ljava/lang/Thread;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;->readIccIdProperty()Z
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
    .line 904
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$6;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$6;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSimInfoByIccId()V

    .line 907
    return-void
.end method
