.class Lcom/mediatek/rns/RnsService$InternalHandler;
.super Landroid/os/Handler;
.source "RnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/RnsService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/mediatek/rns/RnsService$InternalHandler;->this$0:Lcom/mediatek/rns/RnsService;

    .line 550
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 551
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 555
    const-string v0, "RnsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(internal) what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsService$InternalHandler;->this$0:Lcom/mediatek/rns/RnsService;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/rns/RnsService;->toTexted(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/rns/RnsService;->access$600(Lcom/mediatek/rns/RnsService;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 566
    const-string v0, "RnsService"

    const-string v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    :sswitch_0
    return-void

    .line 558
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/rns/RnsService$InternalHandler;->this$0:Lcom/mediatek/rns/RnsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/rns/RnsService;->handleEventWifiRssiUpdate(I)V
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsService;->access$700(Lcom/mediatek/rns/RnsService;I)V

    goto :goto_0

    .line 563
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/rns/RnsService$InternalHandler;->this$0:Lcom/mediatek/rns/RnsService;

    # invokes: Lcom/mediatek/rns/RnsService;->handleEventApplyWifiCallSettings()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsService;->access$800(Lcom/mediatek/rns/RnsService;)V

    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
    .end sparse-switch
.end method
