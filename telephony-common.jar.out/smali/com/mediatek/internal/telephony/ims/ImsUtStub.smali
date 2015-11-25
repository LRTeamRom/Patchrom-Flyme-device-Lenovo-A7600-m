.class public Lcom/mediatek/internal/telephony/ims/ImsUtStub;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtStub.java"


# static fields
.field private static final DBG:Z = true

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final TAG:Ljava/lang/String; = "ImsUtService"

.field private static final mLock:Ljava/lang/Object;

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 72
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->getInstance()Lcom/android/internal/telephony/MMTelSSTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 69
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->registerUtService(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method private getCFActionFromAction(I)I
    .locals 1
    .param p1, "cfAction"    # I

    .prologue
    const/4 v0, 0x0

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 370
    :goto_0
    :pswitch_0
    return v0

    .line 361
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 365
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 374
    packed-switch p1, :pswitch_data_0

    .line 393
    :goto_0
    :pswitch_0
    return v0

    .line 376
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 384
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 386
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 388
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 416
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 399
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 405
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 407
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 409
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 411
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 352
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 330
    :pswitch_0
    const-string v0, "AI"

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v0, "AO"

    goto :goto_0

    .line 334
    :pswitch_2
    const-string v0, "OI"

    goto :goto_0

    .line 336
    :pswitch_3
    const-string v0, "OX"

    goto :goto_0

    .line 338
    :pswitch_4
    const-string v0, "IR"

    goto :goto_0

    .line 341
    :pswitch_5
    const-string v0, "ACR"

    goto :goto_0

    .line 343
    :pswitch_6
    const-string v0, "AB"

    goto :goto_0

    .line 345
    :pswitch_7
    const-string v0, "AG"

    goto :goto_0

    .line 347
    :pswitch_8
    const-string v0, "AC"

    goto :goto_0

    .line 350
    :pswitch_9
    const-string v0, "BS_MT"

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 420
    new-instance v0, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 421
    .local v0, "imsCfInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 422
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 424
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 425
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 426
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 427
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public queryCLIP()I
    .locals 6

    .prologue
    .line 527
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 528
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 529
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 530
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCLIP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 536
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCLIP(Landroid/os/Message;)V

    .line 538
    return v1

    .line 530
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCLIR()I
    .locals 6

    .prologue
    .line 506
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 507
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 508
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 509
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;)V

    .line 517
    return v1

    .line 509
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCOLP()I
    .locals 6

    .prologue
    .line 569
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 570
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 571
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 572
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCOLP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 578
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLP(Landroid/os/Message;)V

    .line 580
    return v1

    .line 572
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCOLR()I
    .locals 6

    .prologue
    .line 548
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 549
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 550
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 551
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLR(Landroid/os/Message;)V

    .line 559
    return v1

    .line 551
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallBarring(I)I
    .locals 8
    .param p1, "cbType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 439
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 440
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 441
    .local v2, "requestId":I
    sget v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 442
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    const-string v3, "ImsUtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryCallBarring(): requestId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v2, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 449
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v7, v6, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 451
    return v2

    .line 442
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 463
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 464
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 465
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 466
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallForward(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 472
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    invoke-virtual {v2, v3, v5, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 475
    return v1

    .line 466
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallWaiting()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 485
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 486
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 487
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 488
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v5, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    .line 496
    return v1

    .line 488
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 771
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 591
    sget-object v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 592
    :try_start_0
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 593
    .local v0, "requestId":I
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 594
    monitor-exit v2

    .line 596
    return v0

    .line 594
    .end local v0    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCLIP(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 705
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 706
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 707
    .local v2, "requestId":I
    sget v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 708
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const-string v4, "ImsUtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCLIP(): requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 714
    .local v0, "enableClip":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 715
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIP(ILandroid/os/Message;)V

    .line 717
    return v2

    .line 708
    .end local v0    # "enableClip":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "requestId":I
    :cond_0
    move v0, v3

    .line 713
    goto :goto_0
.end method

.method public updateCLIR(I)I
    .locals 6
    .param p1, "clirMode"    # I

    .prologue
    .line 683
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 684
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 685
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 686
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;)V

    .line 694
    return v1

    .line 686
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCOLP(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 750
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 751
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 752
    .local v2, "requestId":I
    sget v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 753
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    const-string v4, "ImsUtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCOLP(): requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 759
    .local v0, "enableColp":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 760
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLP(ILandroid/os/Message;)V

    .line 762
    return v2

    .line 753
    .end local v0    # "enableColp":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "requestId":I
    :cond_0
    move v0, v3

    .line 758
    goto :goto_0
.end method

.method public updateCOLR(I)I
    .locals 6
    .param p1, "presentation"    # I

    .prologue
    .line 728
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 729
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 730
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 731
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLR(ILandroid/os/Message;)V

    .line 739
    return v1

    .line 731
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "enable"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 610
    sget-object v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    :try_start_0
    sget v6, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 612
    .local v6, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 613
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    const-string v0, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallBarring(): requestId = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "facility":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2, v6, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 620
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 623
    return v6

    .line 613
    .end local v1    # "facility":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallForward(IILjava/lang/String;I)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I

    .prologue
    const/4 v3, 0x0

    .line 637
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    sget v7, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 639
    .local v7, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 640
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForward(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 646
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 650
    return v7

    .line 640
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallWaiting(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 661
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 662
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 663
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 664
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 670
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v5, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    .line 672
    return v1

    .line 664
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
