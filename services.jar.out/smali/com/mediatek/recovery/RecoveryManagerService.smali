.class public Lcom/mediatek/recovery/RecoveryManagerService;
.super Lcom/mediatek/recovery/IRecoveryManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/recovery/RecoveryManagerService$b;,
        Lcom/mediatek/recovery/RecoveryManagerService$a;
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Lcom/mediatek/recovery/RecoveryManagerService$a;

.field private g:Lcom/mediatek/recovery/RecoveryParser;

.field private h:Lcom/mediatek/recovery/BackupServant;

.field private final i:Lcom/mediatek/recovery/RecoveryManagerService$b;

.field private j:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/mediatek/recovery/IRecoveryManagerService$Stub;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->c:Z

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->j:Z

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v1, Lcom/mediatek/recovery/RecoveryManagerService$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService$b;-><init>(Lcom/mediatek/recovery/RecoveryManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->i:Lcom/mediatek/recovery/RecoveryManagerService$b;

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "framework"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->d:Ljava/io/File;

    .line 146
    new-instance v0, Lcom/mediatek/recovery/RecoveryParser;

    invoke-direct {v0}, Lcom/mediatek/recovery/RecoveryParser;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    .line 147
    new-instance v0, Lcom/mediatek/recovery/BackupServant;

    invoke-direct {v0}, Lcom/mediatek/recovery/BackupServant;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->h:Lcom/mediatek/recovery/BackupServant;

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->d:Ljava/io/File;

    const-string v2, "recovery.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->e:Ljava/io/File;

    .line 149
    new-instance v0, Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/mediatek/recovery/RecoveryManagerService$a;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->f:Lcom/mediatek/recovery/RecoveryManagerService$a;

    .line 152
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    invoke-virtual {v0}, Lcom/mediatek/recovery/RecoveryParser;->read()V

    .line 153
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v1, "RecoveryManagerService"

    const-string v2, "RecoveryManagerService() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/RuntimeException;)I
    .locals 7

    .prologue
    .line 451
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 452
    const/4 v3, -0x1

    .line 453
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v1, v1, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/Module;

    .line 456
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->f:Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v5, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/mediatek/recovery/RecoveryManagerService$a;->a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractExceptionParser;

    iput-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    .line 459
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_0

    .line 460
    const-string v2, "RecoveryManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get exception parser class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from recovery module: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Skip it!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_0
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v2, p1}, Lcom/mediatek/recovery/AbstractExceptionParser;->parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;

    move-result-object v2

    .line 470
    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v1}, Lcom/mediatek/recovery/AbstractExceptionParser;->getLastError()I

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    :cond_2
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returns unavailable pathes, try the other modules!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :cond_3
    const-string v3, "RecoveryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery module: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "match the exception for file"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " start restoring"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 489
    if-eqz v0, :cond_4

    .line 490
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed with erro code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_1
    return v0

    .line 492
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->b()V

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/mediatek/recovery/RecoveryManagerService;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 347
    const-string v0, "Repair"

    invoke-direct {p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService;->b(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    const-string v2, "RecoveryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reboot for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_1

    .line 357
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v2, v3, p1, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    if-nez v0, :cond_0

    .line 367
    const-string v0, "RecoveryManagerService"

    const-string v1, "Fall back to force reboot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/reboot"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 360
    :cond_1
    :try_start_2
    const-string v0, "RecoveryManagerService"

    const-string v2, "Power Manager Service is dead !!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move v0, v1

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    const-string v0, "RecoveryManagerService"

    const-string v2, "Exception happened when performing pm reboot "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 370
    :catch_1
    move-exception v0

    .line 371
    const-string v1, "RecoveryManagerService"

    const-string v2, "Failed to reboot device"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 162
    if-nez v0, :cond_0

    .line 163
    const-string v0, "RecoveryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recovery failed, Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v0, -0xa

    .line 238
    :goto_0
    return v0

    .line 168
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 171
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    iget-object v2, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 175
    if-nez v2, :cond_1

    .line 176
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v0, -0xb

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 189
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    if-nez v2, :cond_5

    .line 190
    const-string v2, "RecoveryManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no defualt recovery action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_4
    iget-object v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 219
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->f:Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/mediatek/recovery/RecoveryManagerService$a;->a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractRecoveryMethod;

    .line 221
    if-nez v2, :cond_7

    .line 222
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, recovery class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instantiation failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, -0x8

    goto/16 :goto_0

    .line 193
    :cond_5
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 194
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_6

    .line 197
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, cannot finish defualt REMOVE action for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, -0x3

    goto/16 :goto_0

    .line 205
    :cond_6
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->h:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/recovery/BackupServant;->restore(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v2

    .line 207
    if-eqz v2, :cond_4

    .line 208
    const-string v0, "RecoveryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery failed, cannot perfomr resotre for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 211
    goto/16 :goto_0

    .line 227
    :cond_7
    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/recovery/AbstractRecoveryMethod;->doRecover(Ljava/lang/Object;)I

    move-result v1

    .line 229
    if-eqz v1, :cond_3

    .line 230
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, recovery method execute failed, error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v0, -0x9

    goto/16 :goto_0

    .line 238
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method a()V
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 266
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 268
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 270
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 272
    iget v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/mediatek/recovery/RecoveryManagerService;->h:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    goto :goto_0

    .line 277
    :cond_2
    return-void
.end method

.method public backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, -0x4

    .line 293
    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->g:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 295
    const/4 v1, 0x0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 298
    if-nez v1, :cond_2

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 304
    :goto_0
    if-nez v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->h:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v0

    .line 307
    :goto_1
    return v0

    :cond_0
    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 302
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    move v1, v3

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    const-string v0, "RecoveryManagerService"

    const-string v1, "getVersion()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v0, "RMSv0.1"

    return-object v0
.end method

.method public handleException(Ljava/lang/RuntimeException;Z)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 376
    const-string v0, "RecoveryManagerService"

    const-string v4, "Catch exception "

    invoke-static {v0, v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v4

    .line 381
    if-nez v4, :cond_8

    .line 382
    const-string v0, "RecoveryManagerService"

    const-string v5, "The exception backtrace is null, stop handle progress"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 386
    :goto_0
    iget-boolean v5, p0, Lcom/mediatek/recovery/RecoveryManagerService;->j:Z

    if-eqz v5, :cond_0

    .line 387
    const-string v0, "RecoveryManagerService"

    const-string v5, "The first exception happened in system server has been caught, stop handle progress"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 390
    :cond_0
    if-nez v0, :cond_7

    .line 391
    iput-boolean v3, p0, Lcom/mediatek/recovery/RecoveryManagerService;->j:Z

    .line 393
    const-string v5, "/data/recovery/RMS_BOOT.log"

    .line 394
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 399
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_1
    :goto_1
    :try_start_1
    new-instance v6, Ljava/util/Scanner;

    new-instance v0, Ljava/io/FileReader;

    const-string v7, "/data/recovery/RMS_BOOT.log"

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 407
    :cond_2
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 408
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v7

    if-nez v7, :cond_2

    .line 409
    const-string v7, "RecoveryManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The Last line is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v7, v4, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v4, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 418
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 419
    const-string v2, "Boot Exception \n"

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v4, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 422
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 423
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 424
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 428
    :goto_3
    sget-object v2, Lcom/mediatek/recovery/RecoveryManager;->ANTIBRICKING_LEVEL:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 430
    const-string v0, "RecoveryManagerService"

    const-string v2, "RMS is partial support, do not recover any files, just record the exception."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_4
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 446
    throw p1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string v6, "RecoveryManagerService"

    const-string v7, "Create RMS Boot log file fail !"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 425
    :catch_1
    move-exception v0

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    .line 426
    :goto_5
    const-string v3, "RecoveryManagerService"

    const-string v4, "Error reading process memory status"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 432
    :cond_3
    if-nez v0, :cond_4

    .line 434
    :try_start_3
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Ljava/lang/RuntimeException;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    goto :goto_4

    .line 435
    :catch_2
    move-exception v0

    .line 437
    const-string v2, "RecoveryManagerService"

    const-string v3, "Exception recovery failed due to RMS excetipn"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 441
    :cond_4
    const-string v0, "RecoveryManagerService"

    const-string v2, "Exception Happen Again, Do not recover !!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 448
    :cond_5
    return-void

    .line 425
    :catch_3
    move-exception v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :cond_7
    move v1, v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public startBootMonitor()V
    .locals 4

    .prologue
    .line 538
    const-string v0, "RecoveryManagerService"

    const-string v1, "Start RMS Boot up monitor !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->i:Lcom/mediatek/recovery/RecoveryManagerService$b;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->i:Lcom/mediatek/recovery/RecoveryManagerService$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/RecoveryManagerService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/recovery/RecoveryManagerService$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 540
    return-void
.end method

.method public stopBootMonitor()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 547
    const-string v0, "RecoveryManagerService"

    const-string v1, "Stop RMS Boot up monitor !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->i:Lcom/mediatek/recovery/RecoveryManagerService$b;

    invoke-virtual {v0, v2}, Lcom/mediatek/recovery/RecoveryManagerService$b;->removeMessages(I)V

    .line 551
    const-string v0, "/data/recovery/RMS_BOOT.log"

    .line 552
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 557
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "Boot Success \n"

    .line 565
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 567
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 568
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    :goto_1
    return-void

    .line 558
    :catch_0
    move-exception v1

    .line 559
    const-string v2, "RecoveryManagerService"

    const-string v3, "Create RMS Boot log file fail !"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 569
    :catch_1
    move-exception v0

    .line 570
    const-string v1, "RecoveryManagerService"

    const-string v2, "Error reading process memory status"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "RecoveryManagerService"

    const-string v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->a()V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->c:Z

    .line 287
    return-void
.end method
