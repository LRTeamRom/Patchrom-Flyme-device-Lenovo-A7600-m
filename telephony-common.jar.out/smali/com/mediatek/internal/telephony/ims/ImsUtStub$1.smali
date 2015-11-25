.class Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;
.super Landroid/os/Handler;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage(): event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 315
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown Event: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 81
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 83
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    .line 84
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 85
    .local v7, "result":[I
    const/4 v10, 0x1

    new-array v6, v10, [Lcom/android/ims/ImsSsInfo;

    .line 86
    .local v6, "info":[Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    new-instance v11, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v11}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v11, v6, v10

    .line 87
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, v10, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 91
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallBarringQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v7    # "result":[I
    :cond_1
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 100
    .local v9, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    iget v14, v9, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    iget v15, v9, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v3

    .line 105
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CB: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 114
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 116
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_3

    .line 117
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v10

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 118
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .line 120
    .local v5, "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_2

    array-length v10, v2

    if-eqz v10, :cond_2

    .line 121
    array-length v10, v2

    new-array v5, v10, [Lcom/android/ims/ImsCallForwardInfo;

    .line 122
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v2

    if-ge v4, v10, :cond_2

    .line 123
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    aget-object v11, v2, v4

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v10

    aput-object v10, v5, v4

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v4    # "i":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v5}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsCallForwardInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 130
    :catch_2
    move-exception v3

    .line 131
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallForwardQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "imsCfInfo":[Lcom/android/ims/ImsCallForwardInfo;
    :cond_3
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_4

    .line 136
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 138
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    iget v14, v9, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    iget v15, v9, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 142
    :catch_3
    move-exception v3

    .line 143
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v13}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 151
    :catch_4
    move-exception v3

    .line 152
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CF: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 161
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 162
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 164
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 165
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 166
    .restart local v7    # "result":[I
    const/4 v10, 0x1

    new-array v6, v10, [Lcom/android/ims/ImsSsInfo;

    .line 167
    .restart local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    new-instance v11, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v11}, Lcom/android/ims/ImsSsInfo;-><init>()V

    aput-object v11, v6, v10

    .line 168
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    iput v11, v10, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 172
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/ImsSsInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 174
    :catch_5
    move-exception v3

    .line 175
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in utConfigurationCallWaitingQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 179
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":[Lcom/android/ims/ImsSsInfo;
    .end local v7    # "result":[I
    :cond_5
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 181
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    iget v14, v9, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    iget v15, v9, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 185
    :catch_6
    move-exception v3

    .line 186
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CW: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 194
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 195
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 197
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_6

    .line 198
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 199
    .restart local v7    # "result":[I
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v6, "info":Landroid/os/Bundle;
    const-string v10, "queryClir"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 203
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 204
    :catch_7
    move-exception v3

    .line 205
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueried"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 210
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":Landroid/os/Bundle;
    .end local v7    # "result":[I
    :cond_6
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 212
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    iget v14, v9, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    iget v15, v9, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 216
    :catch_8
    move-exception v3

    .line 217
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    const-string v11, "RemoteException in IMS_UT_EVENT_GET_CLIR: utConfigurationQueryFailed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 227
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 228
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 230
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_7

    .line 231
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v7, v10

    check-cast v7, [I

    .line 232
    .restart local v7    # "result":[I
    new-instance v8, Lcom/android/ims/ImsSsInfo;

    invoke-direct {v8}, Lcom/android/ims/ImsSsInfo;-><init>()V

    .line 233
    .local v8, "ssInfo":Lcom/android/ims/ImsSsInfo;
    const/4 v10, 0x0

    aget v10, v7, v10

    iput v10, v8, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 234
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 235
    .restart local v6    # "info":Landroid/os/Bundle;
    const-string v10, "imsSsInfo"

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    :try_start_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12, v6}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 239
    :catch_9
    move-exception v3

    .line 240
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueried, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 245
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "info":Landroid/os/Bundle;
    .end local v7    # "result":[I
    .end local v8    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_7
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_8

    .line 246
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 248
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    iget v14, v9, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    iget v15, v9, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 252
    :catch_a
    move-exception v3

    .line 253
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 259
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v13}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 261
    :catch_b
    move-exception v3

    .line 262
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 277
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 278
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 280
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_9

    .line 282
    :try_start_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 283
    :catch_c
    move-exception v3

    .line 284
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationUpdated, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 289
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v10, v10, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v10, :cond_a

    .line 290
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v9, Lcom/mediatek/simservs/xcap/XcapException;

    .line 292
    .restart local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    iget v14, v9, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    iget v15, v9, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    invoke-direct {v13, v14, v15}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 296
    :catch_d
    move-exception v3

    .line 297
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 303
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    new-instance v13, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v13}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-interface {v10, v11, v12, v13}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILcom/android/ims/ImsReasonInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 305
    :catch_e
    move-exception v3

    .line 306
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ImsUtService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RemoteException in utConfigurationQueryFailed, event = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
