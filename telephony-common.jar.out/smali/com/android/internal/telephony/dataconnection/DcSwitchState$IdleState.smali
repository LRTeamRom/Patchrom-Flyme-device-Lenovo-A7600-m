.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 101
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const-string v2, "idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->notifyDcSwitchStateChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "DctController is not ready"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 148
    const/4 v0, 0x0

    .line 151
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 114
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: REQ_CONNECT"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44001

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 121
    const/4 v0, 0x1

    .line 122
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 127
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: Receive invalid event EVENT_CONNECTED!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    .line 130
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 134
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: REQ_DISCONNECT_ALL, shouldn\'t in this state,but regards it had disconnected"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44004

    const/4 v3, 0x4

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 140
    const/4 v0, 0x1

    .line 141
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x43000 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44004 -> :sswitch_2
    .end sparse-switch
.end method
