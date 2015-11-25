.class Lcom/mediatek/rns/RnsService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsService;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsService;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/mediatek/rns/RnsService$3;->this$0:Lcom/mediatek/rns/RnsService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 524
    const-string v0, "RnsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallback - onAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/mediatek/rns/RnsService$3;->this$0:Lcom/mediatek/rns/RnsService;

    # invokes: Lcom/mediatek/rns/RnsService;->isHandoverInProgress()Z
    invoke-static {v0}, Lcom/mediatek/rns/RnsService;->access$400(Lcom/mediatek/rns/RnsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/mediatek/rns/RnsService$3;->this$0:Lcom/mediatek/rns/RnsService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/rns/RnsService;->mState:I
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsService;->access$502(Lcom/mediatek/rns/RnsService;I)I

    .line 528
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 537
    const-string v0, "RnsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCallback - onLost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .prologue
    .line 532
    const-string v0, "RnsService"

    const-string v1, "NetworkCallback - onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void
.end method
