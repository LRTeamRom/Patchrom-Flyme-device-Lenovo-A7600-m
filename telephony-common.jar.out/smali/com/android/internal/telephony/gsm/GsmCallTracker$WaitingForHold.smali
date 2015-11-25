.class Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingForHold"
.end annotation


# instance fields
.field private mClirMode:I

.field private mDialString:Ljava/lang/String;

.field private mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mWaiting:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 124
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 125
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 126
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->handleOperation()Z

    move-result v0

    return v0
.end method

.method private handleOperation()Z
    .locals 5

    .prologue
    .line 163
    const-string v0, "GsmCallTracker"

    const-string v1, "handleWaitingOperation begin"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->reset()V

    .line 169
    const-string v0, "GsmCallTracker"

    const-string v1, "handleWaitingOperation end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method isWaiting()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    const-string v0, "GsmCallTracker"

    const-string v1, "Reset WaitingForHoldRequest variables"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 152
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 153
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 154
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 155
    return-void
.end method

.method set()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 138
    return-void
.end method

.method public set(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 1
    .param p1, "dialSting"    # Ljava/lang/String;
    .param p2, "clir"    # I
    .param p3, "uusinfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mWaiting:Z

    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mDialString:Ljava/lang/String;

    .line 143
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mClirMode:I

    .line 144
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$WaitingForHold;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 145
    return-void
.end method
