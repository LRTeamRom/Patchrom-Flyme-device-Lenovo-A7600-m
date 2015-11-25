.class public Lcom/mediatek/anrappmanager/MessageLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field private static c:Lcom/mediatek/anrappmanager/IFrameworks;

.field public static mEnableLooperLog:Z


# instance fields
.field private g:Ljava/util/LinkedList;

.field private h:Ljava/util/LinkedList;

.field private i:Ljava/util/LinkedList;

.field private j:Ljava/util/LinkedList;

.field private k:Ljava/util/LinkedList;

.field private l:Ljava/util/LinkedList;

.field private m:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private n:J

.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field private o:J

.field private p:J

.field private q:I

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:Ljava/util/LinkedList;

    .line 35
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    .line 41
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 43
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->t:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 50
    sput-object p1, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 51
    return-void
.end method

.method public constructor <init>(ZLcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:Ljava/util/LinkedList;

    .line 35
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    .line 41
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 43
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->t:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 54
    sput-boolean p1, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 55
    sput-object p2, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 56
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/mediatek/anrappmanager/IFrameworks;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:Ljava/util/LinkedList;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:Ljava/util/LinkedList;

    .line 35
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->m:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    .line 41
    iput-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 43
    const-string v0, "MSL Waraning:"

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!!! MessageLoggerInstance might not be created !!!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->t:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->mName:Ljava/lang/String;

    .line 60
    sput-boolean p1, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 61
    sput-object p3, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 62
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 144
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private a(Ljava/lang/StringBuilder;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x800

    if-le v1, v2, :cond_1

    if-nez p2, :cond_1

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***Flushing, Current Size Is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "***TAIL\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const/4 p2, 0x1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 156
    const-string v1, "MessageLogger"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    :goto_0
    return p2

    .line 162
    :cond_1
    if-eqz p2, :cond_0

    move p2, v0

    .line 163
    goto :goto_0
.end method


# virtual methods
.method public addTimeToList(Ljava/util/LinkedList;JJ)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public dump()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v6, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    monitor-enter v6

    .line 237
    :try_start_0
    const-string v0, "MessageLogger"

    const-string v1, ">>> Entering MessageLogger.dump. to Dump MSG HISTORY <<<\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">>> Entering MessageLogger.dump. to Dump MSG HISTORY <<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    const-string v0, "MessageLogger"

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->dumpMsgQueueFromCurrentThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 335
    :goto_1
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 263
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 264
    const-string v0, "MSG HISTORY IN MAIN THREAD:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current kernel time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 269
    iget v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 270
    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->p:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    sub-long/2addr v4, v10

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:J

    sub-long/2addr v10, v12

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last record : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v2, "\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last record dispatching elapsedTime:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms/upTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last record dispatching time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v4, v0

    move v5, v3

    .line 286
    :goto_2
    if-lez v4, :cond_4

    .line 287
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-direct {p0, v4}, Lcom/mediatek/anrappmanager/MessageLogger;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/util/LinkedList;

    invoke-direct {p0, v4}, Lcom/mediatek/anrappmanager/MessageLogger;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 289
    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:Ljava/util/LinkedList;

    invoke-direct {p0, v4}, Lcom/mediatek/anrappmanager/MessageLogger;->a(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 290
    const-string v9, ">"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 291
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_3
    invoke-direct {p0, v7, v5}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/StringBuilder;Z)Z

    move-result v1

    .line 286
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v1

    goto :goto_2

    .line 295
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " elapsedTime:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms/upTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 302
    :cond_4
    const-string v0, "=== Finish Dumping MSG HISTORY===\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "=== LONGER MSG HISTORY IN MAIN THREAD ===\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 308
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v1

    move v5, v3

    move v3, v0

    .line 309
    :goto_4
    if-lez v4, :cond_5

    .line 310
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    invoke-direct {p0, v4}, Lcom/mediatek/anrappmanager/MessageLogger;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 312
    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 313
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " elapsedTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms/upTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-direct {p0, v7, v5}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/StringBuilder;Z)Z

    move-result v2

    .line 309
    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v0, v3, -0x2

    move v3, v0

    move v4, v1

    move v5, v2

    goto/16 :goto_4

    .line 318
    :cond_5
    const-string v0, "=== Finish Dumping LONGER MSG HISTORY===\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 321
    const-string v0, "MessageLogger"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/MessageLogger;->dumpMsgQueueFromCurrentThread()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/anrappmanager/IANRManager;->informMessageDump(Ljava/lang/String;I)V

    .line 329
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 334
    :goto_5
    :try_start_5
    monitor-exit v6

    goto/16 :goto_1

    .line 330
    :catch_1
    move-exception v0

    .line 331
    const-string v1, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informMessageDump exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method

.method public dumpMsgQueueFromCurrentThread()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 190
    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    const-string v0, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!! Current MainLooper is Null !!!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! Current MainLooper is Null !!!\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 207
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! Calling thread from PID:%d\'s TID:%d(%s),Thread\'s type is %s!!!\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! get StackTrace: !!!\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v2, v1

    .line 217
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "File:%s\'s Linenumber:%d, Class:%s, Method:%s\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {p0, v3, v2}, Lcom/mediatek/anrappmanager/MessageLogger;->a(Ljava/lang/StringBuilder;Z)Z

    move-result v2

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_0
    sget-object v2, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v2, v0}, Lcom/mediatek/anrappmanager/IFrameworks;->looperGetQueue(Landroid/os/Looper;)Landroid/os/MessageQueue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 199
    const-string v0, "MessageLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!! Current MainLooper\'s MsgQueue is Null !!!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!!! Current MainLooper\'s MsgQueue is Null !!!\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 203
    :cond_1
    sget-object v1, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v1, v0}, Lcom/mediatek/anrappmanager/IFrameworks;->messageQueueDumpMessageQueue(Landroid/os/MessageQueue;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_2
    return-object v0

    .line 227
    :cond_2
    if-nez v2, :cond_3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 229
    const-string v0, "MessageLogger"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public println(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v9, 0x28

    const/4 v6, 0x0

    .line 75
    iget-object v7, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    monitor-enter v7

    .line 76
    :try_start_0
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    .line 77
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 78
    if-le v0, v9, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Msg#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    iget-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->r:J

    .line 86
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->n:J

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->o:J

    .line 89
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v0}, Lcom/mediatek/anrappmanager/IFrameworks;->systemClockCurrentTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->p:J

    .line 90
    iget v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->q:I

    .line 92
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v0}, Lcom/mediatek/anrappmanager/IFrameworks;->systemClockCurrentTimeMicro()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallTime:J

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallTime:J

    .line 94
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->i:Ljava/util/LinkedList;

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallStart:J

    iget-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/anrappmanager/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 95
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->j:Ljava/util/LinkedList;

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallStart:J

    iget-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/anrappmanager/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 97
    iget-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallTime:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_1

    .line 100
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move v0, v6

    .line 101
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->k:Ljava/util/LinkedList;

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallStart:J

    iget-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/anrappmanager/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->l:Ljava/util/LinkedList;

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallStart:J

    iget-wide v4, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/anrappmanager/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 133
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    if-eqz v0, :cond_3

    .line 134
    const-string v0, ">"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    :goto_2
    monitor-exit v7

    .line 141
    return-void

    .line 114
    :cond_4
    sget-object v0, Lcom/mediatek/anrappmanager/MessageLogger;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v0}, Lcom/mediatek/anrappmanager/IFrameworks;->systemClockCurrentTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallStart:J

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrappmanager/MessageLogger;->nonSleepWallStart:J

    goto :goto_1

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :cond_5
    :try_start_1
    const-string v0, "MessageLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debugging_MessageLogger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/anrappmanager/MessageLogger;->wallTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setInitStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/anrappmanager/MessageLogger;->u:Ljava/lang/String;

    .line 148
    return-void
.end method
