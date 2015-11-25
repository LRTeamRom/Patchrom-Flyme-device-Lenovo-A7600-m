.class public Lcom/android/internal/telephony/SubInfoRecordUpdater;
.super Landroid/os/Handler;
.source "SubInfoRecordUpdater.java"


# static fields
.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field private static final EVENT_ICC_CHANGED:I = 0x4

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x3

.field private static final EVENT_OFFSET:I = 0x8

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x2

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x5

.field private static final EVENT_SIM_PLUG_IN:I = 0x68

.field private static final EVENT_SIM_PLUG_OUT:I = 0x69

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final LOG_TAG:Ljava/lang/String; = "SUB"

.field private static final PROJECT_SIM_NUM:I

.field static PROPERTY_ICCID_SIM:[Ljava/lang/String; = null

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mAllowShowNewSim:[Z = null

.field private static mCommonSlotResetDone:Z = false

.field private static mDetectType:I = 0x0

.field private static mSimStateCount:[I = null

.field private static sContext:Landroid/content/Context; = null

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler; = null

.field private static sIccId:[Ljava/lang/String; = null

.field private static sInsertSimState:[I = null

.field private static sIsUpdateAvailable:[I = null

.field private static sNeedUpdate:Z = false

.field private static sPhone:[Lcom/android/internal/telephony/Phone; = null

.field private static final sReadICCID_retry_time:I = 0x3e8

.field private static sTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private static sUpdateIntent:Landroid/content/Intent;


# instance fields
.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private mReadIccIdCount:I

.field private mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    .line 104
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    .line 106
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 107
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    .line 108
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    .line 109
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 110
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIsUpdateAvailable:[I

    .line 112
    sput-boolean v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 113
    sput-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sUpdateIntent:Landroid/content/Intent;

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 127
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mDetectType:I

    .line 128
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z

    .line 132
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    .line 133
    sput-boolean v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCommonSlotResetDone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 114
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 117
    iput v7, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    .line 118
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mLock:Ljava/lang/Object;

    .line 188
    new-instance v3, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 880
    new-instance v3, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$5;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    .line 136
    const-string v3, "Constructor invoked"

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 138
    sput-object p1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    .line 139
    sput-object p2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    .line 140
    iput-object p3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_1

    .line 144
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIsUpdateAvailable:[I

    aput v6, v3, v0

    .line 145
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    aput v6, v3, v0

    .line 146
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 147
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SIM insert :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 151
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIccId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 153
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z

    aput-boolean v7, v3, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    new-instance v3, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater$1;->start()V

    .line 167
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v3, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 174
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 175
    .local v1, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/4 v4, 0x5

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/4 v4, 0x2

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 177
    const-string v3, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x68

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x69

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_4
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->startNewSimActivityIfNeed()V

    return-void
.end method

.method static synthetic access$1100()[Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method static synthetic access$1200()[Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->clearIccId(I)V

    return-void
.end method

.method static synthetic access$1500()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sUpdateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->registerForSimRecordEvents(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->readIccIdProperty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    return p0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubInfoRecordUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/internal/telephony/SubInfoRecordUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V

    return-void
.end method

.method static synthetic access$700()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$702(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .param p0, "x0"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 63
    sput-object p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SubInfoRecordUpdater;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubInfoRecordUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSubName(J)V

    return-void
.end method

.method private checkIsAvailable()Z
    .locals 4

    .prologue
    .line 938
    const/4 v1, 0x1

    .line 939
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 940
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIsUpdateAvailable:[I

    aget v2, v2, v0

    if-gtz v2, :cond_1

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsUpdateAvailable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIsUpdateAvailable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 942
    const/4 v1, 0x0

    .line 946
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsAvailable result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 947
    return v1

    .line 939
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearIccId(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearIccId], slotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 796
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 797
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static encodeEventId(II)I
    .locals 1
    .param p0, "event"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 185
    mul-int/lit8 v0, p1, 0x8

    shl-int v0, p0, v0

    return v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 917
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 924
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 925
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 926
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 934
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 927
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 928
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 929
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 930
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_5

    .line 321
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait for SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IccId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 344
    :cond_1
    :goto_1
    return v2

    .line 325
    :cond_2
    const-string v3, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_2
    sget v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_4

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllIccIdQueryDone, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 329
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    aget v3, v3, v1

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_1

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllIccIdQueryDone, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 334
    sget-boolean v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCommonSlotResetDone:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 320
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 342
    :cond_5
    const-string v2, "All IccIds query complete"

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private static isAllowedToShowSimDialog()Z
    .locals 3

    .prologue
    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 705
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isAllowedToShowSimDialog] slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 707
    const/4 v1, 0x0

    .line 711
    :goto_1
    return v1

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    const-string v1, "[isAllowedToShowSimDialog] all slots allowed"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 711
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 764
    const/4 v1, 0x1

    .line 765
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 766
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 767
    const/4 v1, 0x0

    .line 771
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 773
    return v1

    .line 765
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string v0, "SUB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SubInfoRecordUpdater]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private processIccRecordEvents(II)V
    .locals 6
    .param p1, "eventCode"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 828
    packed-switch p1, :pswitch_data_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 830
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processIccRecordEvents], IccRecords.EVENT_MSISDN, slotId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v1

    aget-wide v2, v1, v5

    .line 833
    .local v2, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "msisdn":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processIccRecordEvents], msisdn = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 835
    if-eqz v0, :cond_0

    .line 836
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;JZ)I

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method private queryIccId(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryIccId: slotid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 480
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 481
    const-string v1, "Getting IccFileHandler"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 482
    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    aput-object v1, v2, p1

    .line 484
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    .line 485
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 486
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    :cond_1
    const-string v1, "Querying IccId"

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 488
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget-object v1, v1, p1

    const/16 v2, 0x2fe2

    const/4 v3, 0x1

    invoke-static {v3, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->encodeEventId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 496
    .end local v0    # "iccId":Ljava/lang/String;
    :goto_0
    return-void

    .line 491
    .restart local v0    # "iccId":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFh["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null, ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readIccIdProperty()Z
    .locals 4

    .prologue
    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readIccIdProperty +, retry_count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_3

    .line 894
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 895
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 896
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No SIM insert :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 899
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sIccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 893
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 904
    new-instance v1, Lcom/android/internal/telephony/SubInfoRecordUpdater$6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$6;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater$6;->start()V

    .line 909
    const/4 v1, 0x1

    .line 911
    :goto_1
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized registerForSimRecordEvents(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registerForSimRecordEvents], slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x1

    .line 804
    .local v0, "family":I
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 805
    const/4 v0, 0x2

    .line 807
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 808
    .local v1, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 809
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForSimRecordEvents: family = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newIccRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 812
    if-eq v2, v1, :cond_2

    .line 813
    if-eqz v2, :cond_1

    .line 814
    const-string v3, "Removing stale icc objects."

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 816
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 818
    :cond_1
    if-eqz v1, :cond_2

    .line 819
    const-string v3, "New records found"

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 820
    iget-object v3, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 821
    const/4 v3, 0x3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->encodeEventId(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_2
    monitor-exit p0

    return-void

    .line 802
    .end local v0    # "family":I
    .end local v1    # "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static setAllDefaultSub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    const-string v0, "[setAllDefaultSub]+ "

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 787
    invoke-static {p0}, Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;->setSmsTalkDefaultSim(Ljava/util/List;)V

    .line 788
    const-string v0, "[setSmsTalkDefaultSim]- "

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 789
    invoke-static {p0}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->setVoiceCallDefaultSub(Ljava/util/List;)V

    .line 790
    const-string v0, "[setVoiceCallDefaultSub]- "

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public static setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p0, "newSubName"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "newNameSource"    # I

    .prologue
    .line 348
    int-to-long v4, p1

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v2

    .line 349
    .local v2, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_3

    .line 351
    iget v0, v2, Landroid/telephony/SubInfoRecord;->nameSource:I

    .line 352
    .local v0, "oldNameSource":I
    iget-object v1, v2, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    .line 353
    .local v1, "oldSubName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] mSubInfoIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 356
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 360
    :cond_1
    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    int-to-long v6, p2

    invoke-static {p0, v4, v5, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    .line 366
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 364
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setUpdatedData(III)V
    .locals 6
    .param p0, "detectedType"    # I
    .param p1, "subCount"    # I
    .param p2, "newSimStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[setUpdatedData]+ "

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 738
    if-ne p0, v2, :cond_1

    .line 739
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v1, "newSIMSlot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast intent ACTION_SUBINFO_RECORD_UPDATED : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 758
    sput-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sUpdateIntent:Landroid/content/Intent;

    .line 759
    sget-object v1, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sUpdateIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 760
    const-string v1, "[setUpdatedData]- "

    invoke-static {v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 761
    return-void

    .line 743
    :cond_1
    if-ne p0, v4, :cond_2

    .line 744
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 746
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 747
    :cond_2
    if-ne p0, v3, :cond_3

    .line 748
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 750
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 751
    :cond_3
    if-ne p0, v5, :cond_0

    .line 752
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startNewSimActivityIfNeed()V
    .locals 5

    .prologue
    .line 714
    sget v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mDetectType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllowedToShowSimDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    const-string v3, "Lenovo:startNewSimActivityIfNeed..."

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 717
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.geminisettings"

    const-string v4, "com.lenovo.geminisettings.dialog.NewSimActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 720
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v3, -0x1

    sput v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mDetectType:I

    .line 725
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v3, :cond_0

    .line 726
    sget-object v3, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 721
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "Lenovo:NewSimActivity no Found!"

    invoke-static {v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    return-void
.end method

.method private updateSubName(J)V
    .locals 11
    .param p1, "subId"    # J

    .prologue
    const/4 v5, 0x1

    .line 845
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v9

    .line 848
    .local v9, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v9, :cond_0

    iget v2, v9, Landroid/telephony/SubInfoRecord;->nameSource:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 850
    new-instance v1, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .line 852
    .local v1, "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, "carrierName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v8

    .line 854
    .local v8, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubName, carrierName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 856
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 858
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "operator":Ljava/lang/String;
    const-string v2, "OP01"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(JLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "nameToSet":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPN Found, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 872
    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I

    .line 878
    .end local v0    # "nameToSet":Ljava/lang/String;
    .end local v1    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v4    # "carrierName":Ljava/lang/String;
    .end local v7    # "operator":Ljava/lang/String;
    .end local v8    # "slotId":I
    :cond_0
    :goto_1
    return-void

    .line 863
    .restart local v1    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .restart local v4    # "carrierName":Ljava/lang/String;
    .restart local v7    # "operator":Ljava/lang/String;
    .restart local v8    # "slotId":I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 864
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(JLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nameToSet":Ljava/lang/String;
    goto :goto_0

    .line 867
    .end local v0    # "nameToSet":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(JLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nameToSet":Ljava/lang/String;
    goto :goto_0

    .line 874
    .end local v0    # "nameToSet":Ljava/lang/String;
    .end local v7    # "operator":Ljava/lang/String;
    :cond_3
    const-string v2, "SPN Not found"

    invoke-static {v2}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 777
    const-string v0, "[dispose]"

    invoke-static {v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 779
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 370
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 371
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    .line 374
    .local v5, "msgNum":I
    const/4 v7, 0x0

    .local v7, "slotId":I
    :goto_0
    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    .line 375
    mul-int/lit8 v8, v7, 0x8

    shl-int v6, v9, v8

    .line 376
    .local v6, "pivot":I
    if-lt v5, v6, :cond_0

    .line 374
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 382
    .end local v6    # "pivot":I
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 383
    mul-int/lit8 v8, v7, 0x8

    shr-int v2, v5, v8

    .line 384
    .local v2, "event":I
    sparse-switch v2, :sswitch_data_0

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 476
    :cond_1
    :goto_1
    return-void

    .line 386
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 387
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    .line 388
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 389
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v1, v8

    check-cast v1, [B

    .line 390
    .local v1, "data":[B
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    array-length v9, v1

    invoke-static {v1, v11, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 405
    .end local v1    # "data":[B
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    if-eqz v8, :cond_1

    .line 407
    new-instance v8, Lcom/android/internal/telephony/SubInfoRecordUpdater$3;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$3;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater$3;->start()V

    goto :goto_1

    .line 392
    :cond_2
    const-string v8, "Null ar"

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 393
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v9, "N/A"

    aput-object v9, v8, v7

    goto :goto_2

    .line 396
    :cond_3
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_4

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_4

    .line 399
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v7

    .line 403
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query IccId fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 401
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    const-string v9, "N/A"

    aput-object v9, v8, v7

    goto :goto_3

    .line 415
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v4

    .line 416
    .local v4, "index":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 417
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v11, v8, v9

    goto/16 :goto_1

    .line 420
    .end local v4    # "index":Ljava/lang/Integer;
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v4

    .line 421
    .restart local v4    # "index":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_RADIO_AVAILABLE> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 422
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->checkIsAvailable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    sget v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v8, :cond_5

    .line 425
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->clearIccId(I)V

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 427
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->clearSubInfo()I

    .line 428
    iput v11, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I

    .line 429
    invoke-direct {p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->readIccIdProperty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 430
    iget-object v8, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 435
    .end local v3    # "i":I
    .end local v4    # "index":Ljava/lang/Integer;
    :sswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_ICC_RECORD_EVENTS> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 436
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->processIccRecordEvents(II)V

    goto/16 :goto_1

    .line 439
    :sswitch_4
    new-instance v8, Lcom/android/internal/telephony/SubInfoRecordUpdater$4;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$4;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater$4;->start()V

    .line 451
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 452
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 456
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v4

    .line 459
    .restart local v4    # "index":Ljava/lang/Integer;
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v8, v8, v9

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCommonSlotResetDone:Z

    if-eqz v8, :cond_1

    .line 460
    :cond_6
    sput-boolean v11, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCommonSlotResetDone:Z

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Common Slot] reset mCollectSimState, ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 462
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    sget v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    if-ge v3, v8, :cond_1

    .line 463
    sget-object v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I

    aput v11, v8, v3

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 470
    .end local v3    # "i":I
    .end local v4    # "index":Ljava/lang/Integer;
    :sswitch_6
    sput-boolean v9, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_1

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
    .end sparse-switch
.end method

.method public declared-synchronized updateSimInfoByIccId()V
    .locals 28

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 500
    :try_start_1
    const-string v22, "[updateSimInfoByIccId]+ Start"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 501
    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z

    .line 503
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearSubInfo()V

    .line 505
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v10

    .line 506
    .local v10, "mDefaultSub":J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[updateSimInfoByIccId] mDefaultSub = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 508
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_0

    .line 509
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, 0x0

    aput v24, v22, v6

    .line 508
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 512
    :cond_0
    sget v8, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    .line 513
    .local v8, "insertedSimCount":I
    const/4 v6, 0x0

    :goto_1
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_2

    .line 514
    const-string v22, "N/A"

    sget-object v24, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 515
    add-int/lit8 v8, v8, -0x1

    .line 516
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, -0x63

    aput v24, v22, v6

    .line 513
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 519
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "insertedSimCount = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 521
    const/4 v7, 0x0

    .line 522
    .local v7, "index":I
    const/4 v6, 0x0

    :goto_2
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_6

    .line 523
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x63

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 522
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 526
    :cond_4
    const/4 v7, 0x2

    .line 527
    add-int/lit8 v9, v6, 0x1

    .local v9, "j":I
    :goto_3
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_3

    .line 528
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v9

    if-nez v22, :cond_5

    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    sget-object v24, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v24, v24, v9

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 529
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, 0x1

    aput v24, v22, v6

    .line 530
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aput v7, v22, v9

    .line 531
    add-int/lit8 v7, v7, 0x1

    .line 527
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 536
    .end local v9    # "j":I
    :cond_6
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 537
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 538
    .local v16, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_4
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_b

    .line 539
    const/16 v22, 0x0

    aput-object v22, v16, v6

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v17

    .line 543
    .local v17, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v17, :cond_9

    .line 544
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v16, v6

    .line 545
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oldSubId = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 546
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-nez v22, :cond_7

    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    aget-object v24, v16, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 547
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, -0x1

    aput v24, v22, v6

    .line 549
    :cond_7
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-eqz v22, :cond_8

    .line 550
    new-instance v21, Landroid/content/ContentValues;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/content/ContentValues;-><init>(I)V

    .line 551
    .local v21, "value":Landroid/content/ContentValues;
    const-string v22, "sim_id"

    const/16 v24, -0x3e8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    sget-object v24, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_id="

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubInfoRecord;

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 538
    .end local v21    # "value":Landroid/content/ContentValues;
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 557
    :cond_9
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-nez v22, :cond_a

    .line 559
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, -0x1

    aput v24, v22, v6

    .line 561
    :cond_a
    const-string v22, "N/A"

    aput-object v22, v16, v6

    .line 562
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No SIM in slot "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " last time"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 699
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "insertedSimCount":I
    .end local v10    # "mDefaultSub":J
    .end local v16    # "oldIccId":[Ljava/lang/String;
    .end local v17    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 499
    :catchall_1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 566
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "insertedSimCount":I
    .restart local v10    # "mDefaultSub":J
    .restart local v16    # "oldIccId":[Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    :goto_6
    :try_start_3
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_c

    .line 567
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "oldIccId["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "] = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v24, v16, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", sIccId["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "] = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 566
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 571
    :cond_c
    const/4 v13, 0x0

    .line 572
    .local v13, "nNewCardCount":I
    const/4 v14, 0x0

    .line 573
    .local v14, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_7
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    .line 574
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x63

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 575
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No SIM inserted in slot "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " this time"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 573
    :cond_d
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 577
    :cond_e
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    if-lez v22, :cond_f

    .line 580
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v24, v24, v6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 582
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SUB"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v24, v6, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " has invalid IccId"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 586
    :goto_9
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 587
    add-int/lit8 v13, v13, 0x1

    .line 588
    packed-switch v6, :pswitch_data_0

    .line 605
    :goto_a
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, -0x2

    aput v24, v22, v6

    goto :goto_8

    .line 584
    :cond_f
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_9

    .line 590
    :pswitch_0
    or-int/lit8 v14, v14, 0x1

    .line 591
    goto :goto_a

    .line 593
    :pswitch_1
    or-int/lit8 v14, v14, 0x2

    .line 594
    goto :goto_a

    .line 596
    :pswitch_2
    or-int/lit8 v14, v14, 0x4

    .line 597
    goto :goto_a

    .line 610
    :cond_10
    const/4 v6, 0x0

    :goto_b
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_12

    .line 611
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 612
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    const/16 v24, -0x3

    aput v24, v22, v6

    .line 614
    :cond_11
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sInsertSimState["

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "] = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v24, v24, v6

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 610
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 617
    :cond_12
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v19

    .line 618
    .local v19, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-nez v19, :cond_16

    const/4 v15, 0x0

    .line 619
    .local v15, "nSubCount":I
    :goto_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nSubCount = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 620
    const/4 v6, 0x0

    :goto_d
    if-ge v6, v15, :cond_17

    .line 621
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubInfoRecord;

    .line 622
    .local v20, "temp":Landroid/telephony/SubInfoRecord;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v22

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v12

    .line 625
    .local v12, "msisdn":Ljava/lang/String;
    if-eqz v12, :cond_13

    .line 626
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;JZ)I

    .line 630
    :cond_13
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/telephony/SubInfoRecord;->subId:J

    move-wide/from16 v24, v0

    cmp-long v22, v24, v10

    if-nez v22, :cond_14

    .line 631
    invoke-static {v10, v11}, Landroid/telephony/SubscriptionManager;->setDefaultSubId(J)V

    .line 632
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setDefaultSub back, defaultsubId = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 635
    :cond_14
    move-object/from16 v0, v20

    iget v0, v0, Landroid/telephony/SubInfoRecord;->slotId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->registerForSimRecordEvents(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/telephony/SubInfoRecord;->slotId:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 637
    .local v18, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v18, :cond_15

    .line 638
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v22

    const/16 v24, 0x4

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 620
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    .line 618
    .end local v12    # "msisdn":Ljava/lang/String;
    .end local v15    # "nSubCount":I
    .end local v18    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v20    # "temp":Landroid/telephony/SubInfoRecord;
    :cond_16
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v15

    goto/16 :goto_c

    .line 643
    .restart local v15    # "nSubCount":I
    :cond_17
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setAllDefaultSub(Ljava/util/List;)V

    .line 646
    const/4 v5, 0x0

    .line 647
    .local v5, "hasSimRemoved":Z
    const/4 v6, 0x0

    :goto_e
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_18

    .line 648
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    if-eqz v22, :cond_1b

    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string v24, "N/A"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    aget-object v22, v16, v6

    const-string v24, "N/A"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b

    .line 650
    const/4 v5, 0x1

    .line 655
    :cond_18
    if-nez v13, :cond_20

    .line 657
    if-eqz v5, :cond_1d

    .line 659
    const/4 v6, 0x0

    :goto_f
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_19

    .line 660
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 661
    const-string v22, "No new SIM detected and SIM repositioned"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 662
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-static {v0, v15, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 667
    :cond_19
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_1a

    .line 669
    const-string v22, "No new SIM detected and SIM removed"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 670
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-static {v0, v15, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 698
    :cond_1a
    :goto_10
    const-string v22, "[updateSimInfoByIccId]- SimInfo update complete"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 699
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    .line 647
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 659
    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 675
    :cond_1d
    const/4 v6, 0x0

    :goto_11
    :try_start_4
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v6, v0, :cond_1e

    .line 676
    sget-object v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->sInsertSimState:[I

    aget v22, v22, v6

    const/16 v24, -0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 677
    const-string v22, "No new SIM detected and SIM repositioned"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 678
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-static {v0, v15, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 683
    :cond_1e
    sget v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_1a

    .line 685
    const-string v22, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 686
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-static {v0, v15, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    goto :goto_10

    .line 675
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 691
    :cond_20
    const-string v22, "New SIM detected"

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V

    .line 692
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v0, v15, v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->setUpdatedData(III)V

    .line 694
    const/16 v22, 0x1

    sput v22, Lcom/android/internal/telephony/SubInfoRecordUpdater;->mDetectType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_10

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
