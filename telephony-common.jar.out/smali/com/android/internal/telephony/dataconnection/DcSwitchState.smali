.class public Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.super Lcom/android/internal/util/StateMachine;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x43000

.field private static final DBG:Z = true

.field public static final DCSTATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final DCSTATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final DCSTATE_DETACHING:Ljava/lang/String; = "detaching"

.field public static final DCSTATE_IDLE:Ljava/lang/String; = "idle"

.field private static final EVENT_CONNECTED:I = 0x43000

.field private static final EVENT_DATA_DETACH_DONE:I = 0x43001

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchState"

.field private static final VDBG:Z


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;

.field private mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

.field private mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;

.field private mId:I

.field private mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

.field private mNeedAttach:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mNeedAttach:Z

    .line 73
    const-string v0, "DcSwitchState constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->setInitialState(Lcom/android/internal/util/State;)V

    .line 83
    const-string v0, "DcSwitchState constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachedState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DetachingState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAttachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$AttachingState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mNeedAttach:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mNeedAttach:Z

    return p1
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string v0, "DcSwitchState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method public notifyDataConnection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apnName"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "unavailable"    # Z

    .prologue
    .line 88
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const v0, 0x43000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->sendMessage(Landroid/os/Message;)V

    .line 92
    :cond_0
    return-void
.end method
