.class Lcom/mediatek/epdg/EpdgConnection;
.super Lcom/android/internal/util/StateMachine;
.source "EpdgConnection.java"

# interfaces
.implements Lcom/mediatek/epdg/EpdgCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epdg/EpdgConnection$1;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;,
        Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;
    }
.end annotation


# static fields
.field private static final ALL_MATCH_APN:Ljava/lang/String; = "*"

.field static final BASE:I = 0x0

.field static final CMD_DISCONNECT:I = 0x2

.field static final CMD_RECONNECT:I = 0x1

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z = true

.field static final EVENT_CONNECTED_DONE:I = 0x10

.field static final EVENT_CONNECTED_FAILURE:I = 0x12

.field static final EVENT_DISCONNECTED_DONE:I = 0x11

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final NETWORKT_TYPE:Ljava/lang/String; = "Wi-Fi"

.field private static final OK_AKA_RESPONSE:B = -0x25t

.field private static final PROPERTIES_DIR:Ljava/lang/String;

.field private static final RETRY_INTERVAL:I = 0x7530

.field private static final SYNC_FAIL_RESPONSE:B = -0x24t

.field private static final TAG:Ljava/lang/String; = "EpdgConnection"

.field private static final TELEPHONY_CONTACT:Ljava/lang/String; = "content://telephony/carriers"


# instance fields
.field private mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

.field private mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

.field private mApnType:I

.field private mApnTypeName:Ljava/lang/String;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

.field private mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

.field private mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

.field private mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

.field private mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

.field private mItelEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOuterInterface:Ljava/lang/String;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProperties:Ljava/util/Properties;

.field private mReasonCode:I

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private mRetryCount:I

.field private mRetryingState:Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgConnection;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/epdg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILcom/mediatek/epdg/EpdgConnector;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 5
    .param p1, "netType"    # I
    .param p2, "epdgConnector"    # Lcom/mediatek/epdg/EpdgConnector;
    .param p3, "target"    # Landroid/os/Handler;
    .param p4, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCountLock:Ljava/lang/Object;

    .line 91
    iput v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    .line 93
    iput v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 94
    iput v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    .line 789
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    .line 825
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    .line 841
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryingState:Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

    .line 879
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    .line 918
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    .line 940
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;-><init>(Lcom/mediatek/epdg/EpdgConnection;Lcom/mediatek/epdg/EpdgConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    .line 125
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->setLogRecSize(I)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/mediatek/epdg/EpdgConnection;->setLogOnlyTransitions(Z)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryingState:Lcom/mediatek/epdg/EpdgConnection$EpdgRetryingState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mDisconnectingState:Lcom/mediatek/epdg/EpdgConnection$EpdgDisconnectingState;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mDefaultState:Lcom/mediatek/epdg/EpdgConnection$EpdgDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 136
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 138
    iput p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    .line 139
    iput-object p4, p0, Lcom/mediatek/epdg/EpdgConnection;->mOuterInterface:Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, "Wi-Fi"

    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-direct {v0, v4, p1, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 144
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 145
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    invoke-direct {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->makeNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 146
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 147
    iput-object p2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/epdg/EpdgConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/epdg/EpdgConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/epdg/EpdgConnection;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgActiveState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mInactiveState:Lcom/mediatek/epdg/EpdgConnection$EpdgInactiveState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/epdg/EpdgConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->disconnect()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$402(Lcom/mediatek/epdg/EpdgConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/epdg/EpdgConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->prepareConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/epdg/EpdgConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->connect()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/epdg/EpdgConnection;)Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mActivatingState:Lcom/mediatek/epdg/EpdgConnection$EpdgActivatingState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/epdg/EpdgConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/epdg/EpdgConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private canHandleType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    .line 330
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 331
    .local v3, "t":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    const/4 v4, 0x1

    .line 336
    .end local v3    # "t":Ljava/lang/String;
    :goto_1
    return v4

    .line 330
    .restart local v3    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v3    # "t":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private connect()V
    .locals 4

    .prologue
    .line 359
    const-string v0, ""

    .line 361
    .local v0, "connectCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-boolean v2, v2, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    if-nez v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectCmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendEpdgCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    return-void

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "se":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 378
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgCommand;->getCommandByType(Lcom/mediatek/epdg/EpdgConfig;I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "disconnectCmd":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendEpdgCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "se":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method private getApnName(Ljava/lang/String;)V
    .locals 9
    .param p1, "apnTypeName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, "operator":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 266
    const-string v0, "No operator info"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/epdg/EpdgConnection;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 277
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    :cond_2
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "types":[Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/mediatek/epdg/EpdgConnection;->canHandleType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "apn"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "protocol"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/epdg/EpdgConnection;->parseIpProtocol(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    .line 294
    .end local v8    # "types":[Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 298
    const-string v0, "No APN info in database; Use default setting"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const-string v1, "tmus"

    iput-object v1, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mediatek/epdg/EpdgConfig;->accessIpType:I

    goto/16 :goto_0

    .line 290
    .restart local v8    # "types":[Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1
.end method

.method private getAutoEpdgServer()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 487
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "plmn":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 493
    :cond_1
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "mnc":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    :cond_2
    const-string v4, "epdg.epc.mnc%s.mcc%s.pub.3gppnetwork.org"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "addr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EPDG Server:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 502
    return-object v0
.end method

.method private getEpdgConfig()Lcom/mediatek/epdg/EpdgConfig;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 151
    new-instance v0, Lcom/mediatek/epdg/EpdgConfig;

    invoke-direct {v0}, Lcom/mediatek/epdg/EpdgConfig;-><init>()V

    .line 153
    .local v0, "config":Lcom/mediatek/epdg/EpdgConfig;
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "server"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "auth"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 159
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "sim_index"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 161
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "mobility_protocol"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "cert_path"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "ikea_algo"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v3, "esp_algo"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPDG config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 178
    return-object v0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 165
    iput v5, v0, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 166
    iput v5, v0, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 167
    iput v5, v0, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    goto :goto_0
.end method

.method private getIntFromByte(B)I
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "ret":I
    move v0, p1

    .line 667
    if-gez p1, :cond_0

    .line 668
    add-int/lit16 v0, p1, 0x100

    .line 671
    :cond_0
    return v0
.end method

.method private getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 220
    packed-switch p1, :pswitch_data_0

    .line 230
    const-string v0, ""

    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    const-string v0, "FAST"

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "IMS"

    goto :goto_0

    .line 226
    :pswitch_2
    const-string v0, "NET"

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isMatchApn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v0, v0, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeNetworkCapabilities(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # I

    .prologue
    .line 675
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 676
    .local v0, "result":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 691
    const-string v1, "EpdgConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reserved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_0
    :pswitch_0
    return-object v0

    .line 680
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 681
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 684
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 686
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseIpProtocol(Ljava/lang/String;)I
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v0, 0x1

    .line 320
    .local v0, "protocolId":I
    const-string v1, "IPV4V6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    const/4 v0, 0x3

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    const-string v1, "IPV6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 307
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 309
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 314
    :goto_0
    return-object v0

    .line 311
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private prepareConfig()Z
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 395
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "operator":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 398
    :cond_0
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v8, v10, :cond_2

    .line 399
    const-string v8, "No sim is inserted"

    invoke-virtual {p0, v8}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 400
    iput v13, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 401
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "No SIM"

    invoke-direct {p0, v8, v10}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    move v8, v9

    .line 483
    :cond_1
    :goto_0
    return v8

    .line 404
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sim is not ready: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 405
    iget v10, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    if-le v10, v12, :cond_3

    .line 406
    const-string v8, "Failure to establish ePDG due to SIM is not ready"

    invoke-virtual {p0, v8}, Lcom/mediatek/epdg/EpdgConnection;->loge(Ljava/lang/String;)V

    .line 407
    iput v13, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 408
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "SIM Not Ready"

    invoke-direct {p0, v8, v10}, Lcom/mediatek/epdg/EpdgConnection;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 409
    iput v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    move v8, v9

    .line 410
    goto :goto_0

    .line 412
    :cond_3
    const-wide/16 v10, 0x7530

    invoke-virtual {p0, v8, v10, v11}, Lcom/mediatek/epdg/EpdgConnection;->sendMessageDelayed(IJ)V

    .line 413
    iget v8, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/mediatek/epdg/EpdgConnection;->mRetryCount:I

    move v8, v9

    .line 414
    goto :goto_0

    .line 417
    :cond_4
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/mediatek/epdg/EpdgConfig;->mcc:Ljava/lang/String;

    .line 418
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->mnc:Ljava/lang/String;

    .line 419
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/mediatek/epdg/EpdgConnection;->getApnName(Ljava/lang/String;)V

    .line 420
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->imsi:Ljava/lang/String;

    .line 423
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v9, v9, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 424
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->getAutoEpdgServer()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 428
    :cond_5
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    if-nez v9, :cond_6

    .line 429
    const-string v9, "connectivity"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v9

    iput-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    .line 433
    :cond_6
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 436
    .local v2, "linkProperty":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 437
    .local v1, "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_7

    .line 438
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv4Address:Ljava/net/InetAddress;

    .line 443
    .end local v1    # "l":Landroid/net/LinkAddress;
    :cond_8
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 444
    .restart local v1    # "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    if-eqz v9, :cond_9

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_9

    .line 446
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->wifiIpv6Address:Ljava/net/InetAddress;

    .line 451
    .end local v1    # "l":Landroid/net/LinkAddress;
    :cond_a
    iget v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-eq v8, v9, :cond_b

    iget v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-nez v9, :cond_1

    .line 452
    :cond_b
    iget v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    if-ne v9, v8, :cond_f

    const/16 v5, 0xb

    .line 455
    .local v5, "nwType":I
    :goto_1
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v9, v5}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 457
    .local v4, "nwInfo":Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    .line 458
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 459
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v9, v5}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 461
    .local v3, "mobileLinkProperty":Landroid/net/LinkProperties;
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/mediatek/epdg/EpdgConfig;->isHandOver:Z

    .line 463
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 464
    .restart local v1    # "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_c

    .line 465
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv4Address:Ljava/net/InetAddress;

    .line 470
    .end local v1    # "l":Landroid/net/LinkAddress;
    :cond_d
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 471
    .restart local v1    # "l":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    if-eqz v9, :cond_e

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v9

    if-nez v9, :cond_e

    .line 473
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, v9, Lcom/mediatek/epdg/EpdgConfig;->epdgIpv6Address:Ljava/net/InetAddress;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 479
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/net/LinkAddress;
    .end local v2    # "linkProperty":Landroid/net/LinkProperties;
    .end local v3    # "mobileLinkProperty":Landroid/net/LinkProperties;
    .end local v4    # "nwInfo":Landroid/net/NetworkInfo;
    .end local v5    # "nwType":I
    :catch_0
    move-exception v7

    .line 480
    .local v7, "re":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 452
    .end local v7    # "re":Landroid/os/RemoteException;
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "linkProperty":Landroid/net/LinkProperties;
    :cond_f
    const/4 v5, 0x2

    goto :goto_1
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 9
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, p2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mCsHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const-string v4, "EpdgNetworkAgent"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    const/16 v8, 0x50

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;-><init>(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 522
    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 524
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 525
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 526
    const-string v0, "send disconnected"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 528
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 529
    iput-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_0

    .line 530
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    .line 531
    const-string v0, "failure"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 533
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 534
    iput-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    goto :goto_0
.end method


# virtual methods
.method decRefCount()V
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRefCountLock(-)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->teardown()Z

    .line 259
    :cond_0
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 950
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgConfig:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference counter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 957
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 969
    return-void
.end method

.method getApnType()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    return v0
.end method

.method getConfiguration()Lcom/mediatek/epdg/EpdgConfig;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    return-object v0
.end method

.method getReasonCode()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    return v0
.end method

.method incRefCount()V
    .locals 4

    .prologue
    .line 238
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 240
    :try_start_0
    const-string v1, "epdg.force.run"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 242
    .local v0, "forRun":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRefCountLock(+):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 244
    iget v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mRefCount:I

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->reconnect()Z

    .line 249
    :cond_0
    :goto_0
    monitor-exit v2

    .line 250
    return-void

    .line 246
    :cond_1
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->reconnect()Z

    goto :goto_0

    .line 249
    .end local v0    # "forRun":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onEpdgConnectFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 594
    iput p2, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 595
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 597
    :cond_0
    return-void
.end method

.method public onEpdgConnected(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "nwInterface"    # Ljava/lang/String;
    .param p4, "tunnelIpv4"    # Ljava/lang/String;
    .param p5, "tunnelIpv6"    # Ljava/lang/String;
    .param p6, "pcscfIpv4Addr"    # Ljava/lang/String;
    .param p7, "pcscfIpv6Addr"    # Ljava/lang/String;
    .param p8, "dnsIpv4Addr"    # Ljava/lang/String;
    .param p9, "dnsIpv6Addr"    # Ljava/lang/String;

    .prologue
    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEpdgConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v3, v3, Lcom/mediatek/epdg/EpdgConfig;->apnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 546
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 547
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 551
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 552
    .local v0, "ia":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    const/16 v3, 0x20

    invoke-direct {v2, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 553
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 557
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 559
    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 560
    .restart local v0    # "ia":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    const/16 v3, 0x80

    invoke-direct {v2, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 561
    new-instance v2, Landroid/net/RouteInfo;

    sget-object v3, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v2, v3}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 564
    .end local v0    # "ia":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 565
    invoke-static {p8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 568
    :cond_2
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 569
    invoke-static {p9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 572
    :cond_3
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 573
    invoke-static {p6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    .line 576
    :cond_4
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 577
    invoke-static {p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    .line 580
    :cond_5
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 581
    iget-object v2, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->clear()V

    .line 582
    iput-object v1, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 585
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLinkProperties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 586
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 588
    .end local v1    # "newLp":Landroid/net/LinkProperties;
    :cond_7
    return-void
.end method

.method public onEpdgDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 603
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/epdg/EpdgConnection;->mReasonCode:I

    .line 604
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 606
    :cond_0
    return-void
.end method

.method public onEpdgSimAuthenticate(Ljava/lang/String;[B[B)V
    .locals 11
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B

    .prologue
    const/4 v10, 0x2

    .line 611
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgConnection;->isMatchApn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 612
    const-string v0, ""

    .line 613
    .local v0, "cmdStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 616
    .local v2, "res":[B
    :try_start_0
    const-string v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mItelEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    .line 619
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mItelEx:Lcom/mediatek/internal/telephony/ITelephonyEx;

    iget-object v8, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v8, v8, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x3

    invoke-interface {v7, v8, v9, p2, p3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->simAkaAuthentication(II[B[B)[B

    move-result-object v4

    .line 622
    .local v4, "response":[B
    if-nez v4, :cond_1

    .line 623
    const-string v7, "EpdgConnection"

    const-string v8, "Can\'t get SIM Response"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v7, "EAUTH:%d,%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x98

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x62

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V

    .line 657
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "res":[B
    .end local v4    # "response":[B
    :cond_0
    :goto_0
    return-void

    .line 629
    .restart local v0    # "cmdStr":Ljava/lang/String;
    .restart local v2    # "res":[B
    .restart local v4    # "response":[B
    :cond_1
    const/16 v5, 0x90

    .line 630
    .local v5, "sw1":I
    const/4 v6, 0x0

    .line 632
    .local v6, "sw2":I
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    const/16 v8, -0x25

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    aget-byte v7, v4, v7

    const/16 v8, -0x24

    if-ne v7, v8, :cond_4

    .line 633
    :cond_2
    array-length v7, v4

    add-int/lit8 v3, v7, -0x2

    .line 634
    .local v3, "resLen":I
    new-array v2, v3, [B

    .line 635
    const/4 v7, 0x0

    invoke-static {v4, v7, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 637
    array-length v7, v4

    add-int/lit8 v8, v3, 0x2

    if-lt v7, v8, :cond_3

    .line 638
    aget-byte v7, v4, v3

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v5

    .line 639
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v6

    .line 642
    :cond_3
    const-string v7, "EAUTH:%d,%d,\"%s\""

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x90

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 644
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v3    # "resLen":I
    .end local v4    # "response":[B
    .end local v5    # "sw1":I
    .end local v6    # "sw2":I
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 646
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "response":[B
    .restart local v5    # "sw1":I
    .restart local v6    # "sw2":I
    :cond_4
    :try_start_1
    array-length v7, v4

    if-ne v7, v10, :cond_0

    .line 647
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v5

    .line 648
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-direct {p0, v7}, Lcom/mediatek/epdg/EpdgConnection;->getIntFromByte(B)I

    move-result v6

    .line 649
    const-string v7, "EAUTH:%d,%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 650
    iget-object v7, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    invoke-virtual {v7, v0}, Lcom/mediatek/epdg/EpdgConnector;->sendSimCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method reconnect()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 353
    const-string v0, "reconnect"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v1}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 355
    return v1
.end method

.method setConfiguration(Lcom/mediatek/epdg/EpdgConfig;)V
    .locals 7
    .param p1, "newConfig"    # Lcom/mediatek/epdg/EpdgConfig;

    .prologue
    .line 723
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    .line 724
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v4, p1, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    iput v4, v3, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    .line 725
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v4, p1, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    iput v4, v3, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    .line 726
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v4, p1, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    iput v4, v3, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    .line 727
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    .line 728
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    .line 729
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v4, p1, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    .line 731
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "server"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->edpgServerAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 732
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "auth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v6, v6, Lcom/mediatek/epdg/EpdgConfig;->authType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 733
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "sim_index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v6, v6, Lcom/mediatek/epdg/EpdgConfig;->simIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 734
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "mobility_protocol"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget v6, v6, Lcom/mediatek/epdg/EpdgConfig;->mobilityProtocol:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "cert_path"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->certPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "ikea_algo"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->ikeaAlgo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 738
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    const-string v4, "esp_algo"

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    iget-object v5, v5, Lcom/mediatek/epdg/EpdgConfig;->espAlgo:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 741
    :try_start_0
    const-string v3, "commit EPDG config"

    invoke-virtual {p0, v3}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 742
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 744
    .local v2, "stream":Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 188
    iput-object p2, p0, Lcom/mediatek/epdg/EpdgConnection;->mCsHandler:Landroid/os/Handler;

    .line 189
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    .line 191
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 195
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    .line 197
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnTypeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v3, "stream":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mProperties:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 200
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/epdg/EpdgConnection;->getEpdgConfig()Lcom/mediatek/epdg/EpdgConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConfig:Lcom/mediatek/epdg/EpdgConfig;

    .line 212
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 213
    iget-object v4, p0, Lcom/mediatek/epdg/EpdgConnection;->mEpdgConnector:Lcom/mediatek/epdg/EpdgConnector;

    iget v5, p0, Lcom/mediatek/epdg/EpdgConnection;->mApnType:I

    invoke-virtual {v4, v5, p0}, Lcom/mediatek/epdg/EpdgConnector;->registerEpdgCallback(ILcom/mediatek/epdg/EpdgCallback;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/epdg/EpdgConnection;->start()V

    .line 217
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "EpdgConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open configuration file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/mediatek/epdg/EpdgConnection;->PROPERTIES_DIR:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    const-string v4, "EpdgConnection"

    const-string v5, "Make epdg directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method teardown()Z
    .locals 1

    .prologue
    .line 344
    const-string v0, "teardown"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->log(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 346
    const/4 v0, 0x1

    return v0
.end method
