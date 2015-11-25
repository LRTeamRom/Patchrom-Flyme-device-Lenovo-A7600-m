.class Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;
.super Landroid/os/Handler;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Lcom/mediatek/internal/telephony/ims/ImsServiceStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub$1;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)V

    return-void
.end method

.method private notifyRegistrationCapabilityChange(I)V
    .locals 8
    .param p1, "imsExtInfo"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 377
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 405
    :goto_0
    return-void

    .line 381
    :cond_0
    new-array v1, v7, [I

    .line 382
    .local v1, "enabledFeatures":[I
    new-array v0, v7, [I

    .line 384
    .local v0, "disabledFeatures":[I
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v4, :cond_1

    .line 385
    aput v3, v1, v3

    .line 390
    :goto_1
    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 391
    aput v4, v1, v4

    .line 397
    :goto_2
    aput v5, v0, v5

    .line 398
    aput v6, v0, v6

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v2

    goto :goto_0

    .line 387
    :cond_1
    aput v3, v0, v3

    goto :goto_1

    .line 393
    :cond_2
    aput v4, v0, v4

    goto :goto_2
.end method

.method private notifyRegistrationStateChange(I)V
    .locals 3
    .param p1, "imsRegInfo"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 358
    :cond_0
    const-string v0, "ImsServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS: notifyRegistrationStateChange imsRegInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-nez p1, :cond_1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0

    .line 368
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$100(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 369
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 410
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 412
    :pswitch_1
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 429
    .local v8, "ar":Landroid/os/AsyncResult;
    const/4 v14, 0x3

    .line 430
    .local v14, "newImsRegInfo":I
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 431
    const/4 v14, 0x0

    .line 436
    :goto_1
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x1

    aget v13, v1, v2

    .line 438
    .local v13, "newImsExtInfo":I
    const-string v1, "ImsServiceStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newImsRegInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "oldImsRegInfo"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$200(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$200(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I

    move-result v1

    if-eq v14, v1, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I
    invoke-static {v1, v14}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$202(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$200(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->notifyRegistrationStateChange(I)V

    .line 447
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsExtInfo:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$300(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I

    move-result v1

    if-eq v13, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$200(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I

    move-result v1

    if-nez v1, :cond_0

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsExtInfo:I
    invoke-static {v1, v13}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$302(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsExtInfo:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$300(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->notifyRegistrationCapabilityChange(I)V

    goto/16 :goto_0

    .line 433
    .end local v13    # "newImsExtInfo":I
    :cond_2
    const/4 v14, 0x1

    goto :goto_1

    .line 453
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "newImsRegInfo":I
    :pswitch_2
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_SET_IMS_ENABLED"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$400(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$502(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I

    goto/16 :goto_0

    .line 458
    :pswitch_3
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_SET_IMS_DISABLE_DONE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$400(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 462
    :pswitch_4
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_IMS_DISABLED_URC"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->disableImsAdapter(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$502(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I

    goto/16 :goto_0

    .line 467
    :pswitch_5
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_INCOMING_CALL_INDICATION"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 469
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    invoke-static {v1, v8}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$600(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 472
    .end local v8    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_CALL_INFO_INDICATION"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    .line 475
    .restart local v8    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 476
    .local v7, "CallInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v6, v7, v1

    .line 477
    .local v6, "callId":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v12, v7, v1

    .line 478
    .local v12, "msg_type":Ljava/lang/String;
    const/4 v1, 0x5

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 480
    .local v9, "callMode":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 482
    :sswitch_0
    const/16 v1, 0x16

    if-eq v9, v1, :cond_0

    .line 483
    const-string v1, "ImsServiceStub"

    const-string v2, "IMS: +ECPI : 0(msg_type), assign call id"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v3, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v3}, Lcom/android/ims/ImsCallProfile;-><init>()V

    .line 485
    .local v3, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string v1, "oi"

    const/4 v2, 0x6

    aget-object v2, v7, v2

    invoke-virtual {v3, v1, v2}, Lcom/android/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    new-instance v1, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$400(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$800(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Ljava/lang/String;)V

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    invoke-static {v15, v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$702(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Lcom/android/ims/internal/IImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$902(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Z)Z

    goto/16 :goto_0

    .line 493
    .end local v3    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$700(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 495
    const/4 v11, 0x0

    .line 497
    .local v11, "localCallId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$700(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 502
    :goto_2
    if-eqz v11, :cond_3

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$702(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Lcom/android/ims/internal/IImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    .line 506
    .end local v11    # "localCallId":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$902(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Z)Z

    goto/16 :goto_0

    .line 498
    .restart local v11    # "localCallId":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 500
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "ImsServiceStub"

    const-string v2, "Can\'t get PendingMT Call Id:"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 511
    .end local v6    # "callId":Ljava/lang/String;
    .end local v7    # "CallInfo":[Ljava/lang/String;
    .end local v8    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "callMode":I
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "localCallId":Ljava/lang/String;
    .end local v12    # "msg_type":Ljava/lang/String;
    :pswitch_7
    const-string v1, "ImsServiceStub"

    const-string v2, "receive EVENT_CALL_RING"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$900(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sendIncomingCallIntent()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->access$902(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Z)Z

    goto/16 :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 480
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x85 -> :sswitch_1
    .end sparse-switch
.end method
