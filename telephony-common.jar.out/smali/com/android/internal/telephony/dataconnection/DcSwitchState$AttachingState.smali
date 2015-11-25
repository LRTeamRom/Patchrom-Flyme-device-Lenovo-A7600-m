.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "AttachingState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mNeedAttach:Z
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 161
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 166
    .end local v0    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const-string v2, "attaching"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->notifyDcSwitchStateChange(Ljava/lang/String;)V

    .line 167
    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "AttachingState: caused by lost connection, don\'t attach again"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mNeedAttach:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$902(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Z)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 173
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 214
    const/4 v1, 0x0

    .line 217
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 176
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "AttachingState: REQ_CONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 180
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 182
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44001

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 184
    const/4 v1, 0x1

    .line 185
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 190
    .end local v0    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v1    # "retVal":Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "AttachingState: EVENT_DATA_ATTACHED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 193
    const/4 v1, 0x1

    .line 194
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 198
    .end local v1    # "retVal":Z
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44005

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 205
    const/4 v1, 0x1

    .line 206
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_0
        0x44004 -> :sswitch_2
        0x4400a -> :sswitch_1
    .end sparse-switch
.end method
