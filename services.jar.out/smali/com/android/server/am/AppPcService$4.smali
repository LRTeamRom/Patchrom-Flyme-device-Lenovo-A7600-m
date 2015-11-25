.class Lcom/android/server/am/AppPcService$4;
.super Landroid/os/Handler;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
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
    .line 698
    iput-object p1, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 701
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 724
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 726
    :goto_0
    return-void

    .line 703
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleStopService(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1400(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 706
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSetApplicationEnabledSetting(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1500(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 709
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSetNotificationsEnabledForPackage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1600(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 712
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleStartActivityForResult(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1700(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 715
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSetUidPolicy(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1800(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 718
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$1900(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 721
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/AppPcService$4;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->handleShowNetworkBlockToast(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/am/AppPcService;->access$2000(Lcom/android/server/am/AppPcService;Landroid/os/Message;)V

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
