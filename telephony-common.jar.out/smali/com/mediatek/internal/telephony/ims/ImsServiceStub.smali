.class public Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
.super Lcom/android/ims/internal/IImsService$Stub;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsServiceStub$1;,
        Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x8

.field protected static final EVENT_CALL_RING:I = 0x9

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x5

.field private static final EVENT_IMS_REGISTRATION_INFO:I = 0x1

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x7

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x2

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x4

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x3

.field private static final EVENT_VIRTUAL_SIM_ON:I = 0x6

.field private static final IMS_ALLOW_INCOMING_CALL_INDICATION:I = 0x0

.field private static final IMS_DISALLOW_INCOMING_CALL_INDICATION:I = 0x1

.field private static final IMS_MAX_FEATURE_SUPPORT_SIZE:I = 0x4

.field private static final IMS_RCS_OVER_LTE:I = 0x2

.field private static final IMS_SMS_OVER_LTE:I = 0x4

.field private static final IMS_VIDEO_OVER_LTE:I = 0x8

.field private static final IMS_VOICE_OVER_LTE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceStub"

.field private static final VDBG:Z

.field private static sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

.field private static sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPendingECPI0Event:Z

.field private mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

.field private mImsExtInfo:I

.field private mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

.field private mImsRegInfo:I

.field private mImsState:I

.field private mListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mPendingMT:Lcom/android/ims/internal/IImsCallSession;

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 77
    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/ims/internal/IImsService$Stub;-><init>()V

    .line 71
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 72
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 73
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I

    .line 82
    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsExtInfo:I

    .line 83
    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mServiceId:I

    .line 84
    iput v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I

    .line 85
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z

    .line 116
    new-instance v0, Lcom/mediatek/ims/ImsAdapter;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/ImsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    .line 117
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    .line 119
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Lcom/mediatek/internal/telephony/ims/ImsServiceStub$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    .line 122
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 126
    :cond_0
    const-string v0, "ims"

    invoke-static {v0, p0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForImsDisable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsRegistrationListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sendIncomingCallIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRegInfo:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsExtInfo:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsExtInfo:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Lcom/android/ims/internal/IImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p1, "x1"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/ims/ImsServiceStub;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsServiceStub;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHasPendingECPI0Event:Z

    return p1
.end method

.method private sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 271
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 272
    .local v0, "callId":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 273
    .local v1, "dialString":Ljava/lang/String;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v3, v5, v6

    .line 274
    .local v3, "seqNum":Ljava/lang/String;
    const/4 v4, 0x1

    .line 276
    .local v4, "serviceId":I
    const-string v5, "ImsServiceStub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS: sendIncomingCallIndication() call_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dialString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seqNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.ims.IMS_INCOMING_CALL_INDICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android:imsCallID"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v5, "android:imsDialString"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v5, "android:imsSeqNum"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v5, "android:imsServiceId"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private sendIncomingCallIntent()V
    .locals 9

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "callId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 294
    .local v2, "dialString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 297
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-eqz v6, :cond_1

    .line 299
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v6}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v6}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    .line 304
    const-string v6, "oi"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 312
    :cond_0
    const/4 v5, 0x1

    .line 314
    .local v5, "serviceId":I
    const-string v6, "ImsServiceStub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMS: sendIncomingCallIntent() call_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dialString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.ims.IMS_INCOMING_CALL"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "android:imsCallID"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v6, "android:imsDialString"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v6, "android:imsServiceId"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "serviceId":I
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v3

    .line 309
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "ImsServiceStub"

    const-string v7, "Can\'t get call information from PendingMT !!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v6, "ImsServiceStub"

    const-string v7, "PendingMT is null!!! Something wrong!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public SetCallIndication(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "seqNum"    # I
    .param p3, "isAllow"    # Z

    .prologue
    .line 258
    if-eqz p3, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setCallIndication(III)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setCallIndication(III)V

    goto :goto_0
.end method

.method public close(I)V
    .locals 0
    .param p1, "serviceId"    # I

    .prologue
    .line 158
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 194
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    invoke-direct {v0, p2, p3}, Lcom/android/ims/ImsCallProfile;-><init>(II)V

    return-object v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .prologue
    .line 200
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    return-object v0
.end method

.method public disableImsAdapter(Z)V
    .locals 1
    .param p1, "isNormalDisable"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsAdapter;->disableImsAdapter(Z)V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I

    .line 142
    return-void
.end method

.method public enableImsAdapter()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->enableImsAdapter()V

    .line 137
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/mediatek/ims/ImsConfigStub;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsConfigStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    .line 240
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsConfig:Lcom/mediatek/ims/ImsConfigStub;

    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 249
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsEcbmProxy;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/ImsEcbmProxy;-><init>()V

    return-object v0
.end method

.method public getImsState()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I

    return v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mPendingMT:Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 2
    .param p1, "serviceId"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    .line 229
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->sImsUtStub:Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    return-object v0
.end method

.method public isConnected(III)Z
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public isOpened(I)Z
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsAdapter:Lcom/mediatek/ims/ImsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter;->getImsAdapterEnable()Z

    move-result v0

    return v0
.end method

.method public notifySrvccDone()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    if-nez v0, :cond_0

    .line 343
    const-string v0, "ImsServiceStub"

    const-string v1, "IMS: notifySrvccDone error, mImsRILAdapter is null "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->notifySrvccDone()V

    goto :goto_0
.end method

.method public open(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0, p3}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 153
    return v0
.end method

.method public setImsPhoneInstance(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "mPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->setImsPhoneInstance(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 339
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .prologue
    .line 189
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 190
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->turnOffIms(Landroid/os/Message;)V

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I

    .line 185
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->turnOnIms(Landroid/os/Message;)V

    .line 173
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->mImsState:I

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ims/ImsServiceStub;->enableImsAdapter()V

    .line 175
    return-void
.end method
