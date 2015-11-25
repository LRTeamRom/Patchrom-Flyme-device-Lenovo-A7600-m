.class Lcom/android/server/am/AppPcService$1;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->getNetworkPromptListForSystemApp()Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$100(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/android/server/am/AppPcService;->mNetworkPrompt:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService;->access$002(Lcom/android/server/am/AppPcService;Ljava/util/List;)Ljava/util/List;

    .line 235
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkPrompt.size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mNetworkPrompt:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$000(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->getNotNetworkPromptListFor3App()Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$300(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/android/server/am/AppPcService;->mNotNetworkPrompt:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService;->access$202(Lcom/android/server/am/AppPcService;Ljava/util/List;)Ljava/util/List;

    .line 237
    const-string v0, "Security_AppPcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotNetworkPrompt.size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mNotNetworkPrompt:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$200(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$400(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    iget-object v2, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->getControllableSystemApps()Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$500(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/am/AppPcService;->access$402(Lcom/android/server/am/AppPcService;Ljava/util/List;)Ljava/util/List;

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
