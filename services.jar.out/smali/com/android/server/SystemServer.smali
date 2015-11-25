.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 366
    :try_start_0
    sget-boolean v2, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 367
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 369
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 370
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 377
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 398
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 399
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 235
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 381
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 387
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 388
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 395
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 390
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 359
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 248
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 253
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 257
    const-string v0, "1"

    const-string v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 258
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 268
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 274
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 275
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 284
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 288
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 292
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 296
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 299
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 302
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 304
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 305
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 308
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 313
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 324
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 327
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 328
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 332
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 333
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 334
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :catch_0
    move-exception v6

    .line 315
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 336
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_2

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v8}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_1
.end method

.method private startBootstrapServices()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 414
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Installer;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 417
    sget-boolean v5, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v5, :cond_0

    .line 419
    const/4 v3, 0x0

    .line 420
    .local v3, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_0
    new-instance v4, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v4}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v3    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_1
    const-string v5, "SystemServer"

    const-string v7, "Create message monitor service successfully ."

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v5, "msgmonitorservice"

    invoke-virtual {v4}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 432
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 434
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 436
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 443
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 447
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 451
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 454
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 457
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "cryptState":Ljava/lang/String;
    const-string v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 459
    const-string v5, "SystemServer"

    const-string v7, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 467
    :cond_1
    :goto_1
    const-string v5, "0"

    const-string v7, "ro.mtk_antibricking_level"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 468
    .local v1, "disabled":Z
    if-nez v1, :cond_2

    .line 470
    :try_start_2
    const-string v5, "SystemServer"

    const-string v7, "Recovery Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v5, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 472
    iget-object v5, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v5, :cond_2

    .line 473
    const-string v5, "recovery"

    iget-object v7, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v7}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 474
    iget-object v5, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v5}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 483
    :cond_2
    :goto_2
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v7, v8, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 486
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 487
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 489
    const/16 v5, 0xf

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V

    .line 491
    const-string v5, "SystemServer"

    const-string v6, "User Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v5, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 495
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 498
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 499
    return-void

    .line 425
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v3    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const-string v5, "SystemServer"

    const-string v7, "Starting message monitor service exception "

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 461
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 462
    const-string v5, "SystemServer"

    const-string v7, "Device encrypted - only parsing core apps"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 476
    .restart local v1    # "disabled":Z
    :catch_1
    move-exception v2

    .line 477
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting Recovery Manager"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 484
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 425
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v3    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 509
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 512
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 513
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 518
    return-void
.end method

.method private startOtherServices()V
    .locals 117
    .annotation build Landroid/annotation/VibeHook;
        module = .enum Landroid/annotation/VibeHook$VibeHookModule;->THEME:Landroid/annotation/VibeHook$VibeHookModule;
        note = "Lenovo-SW huangzb1 modify 2014-09-26 ,new LenovoAppIconManager,fixed PATCHROM-347"
        type = .enum Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;
    .end annotation

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 527
    .local v3, "context":Landroid/content/Context;
    const/16 v36, 0x0

    .line 528
    .local v36, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v56, 0x0

    .line 529
    .local v56, "contentService":Lcom/android/server/content/ContentService;
    const/16 v110, 0x0

    .line 530
    .local v110, "vibrator":Lcom/android/server/VibratorService;
    const/16 v38, 0x0

    .line 531
    .local v38, "alarm":Landroid/app/IAlarmManager;
    const/16 v85, 0x0

    .line 532
    .local v85, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 533
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 534
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v87, 0x0

    .line 535
    .local v87, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v52, 0x0

    .line 536
    .local v52, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v88, 0x0

    .line 537
    .local v88, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v102, 0x0

    .line 538
    .local v102, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v116, 0x0

    .line 539
    .local v116, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 540
    .local v47, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v109, 0x0

    .line 541
    .local v109, "usb":Lcom/android/server/usb/UsbService;
    const/16 v100, 0x0

    .line 542
    .local v100, "serial":Lcom/android/server/SerialService;
    const/16 v91, 0x0

    .line 543
    .local v91, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v49, 0x0

    .line 544
    .local v49, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 545
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v105, 0x0

    .line 546
    .local v105, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v54, 0x0

    .line 547
    .local v54, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v45, 0x0

    .line 548
    .local v45, "audioService":Landroid/media/AudioService;
    const/16 v82, 0x0

    .line 551
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v83, 0x0

    .line 553
    .local v83, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v68, 0x0

    .line 556
    .local v68, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const/16 v39, 0x0

    .line 563
    .local v39, "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    const/16 v41, 0x0

    .line 567
    .local v41, "appPcService":Lcom/android/server/am/AppPcService;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 568
    .local v64, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 569
    .local v61, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 570
    .local v59, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 571
    .local v66, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 572
    .local v60, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 573
    .local v65, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 574
    .local v63, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 575
    .local v62, "disableNetwork":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    .line 579
    .local v74, "isEmulator":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 582
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 585
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v106, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v106

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4c

    .line 587
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v106, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v106

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 589
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 592
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v37, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 599
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v37, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4d

    move-object/from16 v36, v37

    .line 604
    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v56

    .line 609
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v84, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 613
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v84, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_6
    const-string v4, "mobile"

    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4e

    move-object/from16 v83, v84

    .line 620
    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_0
    :goto_2
    :try_start_7
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 623
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v111, Lcom/android/server/VibratorService;

    move-object/from16 v0, v111

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 625
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .local v111, "vibrator":Lcom/android/server/VibratorService;
    :try_start_8
    const-string v4, "vibrator"

    move-object/from16 v0, v111

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 627
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v55, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v55

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4f

    .line 629
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v55, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_9
    const-string v4, "consumer_ir"

    move-object/from16 v0, v55

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 632
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v38

    .line 635
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v115

    .line 637
    .local v115, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v115

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 639
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v73, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_50

    .line 642
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2e

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v73

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v116

    .line 646
    const-string v4, "window"

    move-object/from16 v0, v116

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 647
    const-string v4, "input"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v4, v116

    invoke-static {v0, v4}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v116

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 651
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 652
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/input/InputManagerService;->start()V

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 660
    if-eqz v74, :cond_30

    .line 661
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    :goto_5
    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v110, v111

    .line 685
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .end local v115    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1
    :goto_6
    const/16 v103, 0x0

    .line 686
    .local v103, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v93, 0x0

    .line 687
    .local v93, "notification":Landroid/app/INotificationManager;
    const/16 v70, 0x0

    .line 688
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v113, 0x0

    .line 689
    .local v113, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v75, 0x0

    .line 690
    .local v75, "location":Lcom/android/server/LocationManagerService;
    const/16 v57, 0x0

    .line 691
    .local v57, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v107, 0x0

    .line 692
    .local v107, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v77, 0x0

    .line 693
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v94, 0x0

    .line 694
    .local v94, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v97, 0x0

    .line 695
    .local v97, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v43, 0x0

    .line 696
    .local v43, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v79, 0x0

    .line 699
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 703
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v71, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v116

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 705
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v4, "input_method"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4b

    move-object/from16 v70, v71

    .line 711
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 715
    const/16 v4, 0x50

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 724
    :cond_2
    :goto_8
    :try_start_e
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 729
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 730
    if-nez v64, :cond_3

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 737
    :try_start_f
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v86, Lcom/android/server/MountService;

    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 739
    .end local v85    # "mountService":Lcom/android/server/MountService;
    .local v86, "mountService":Lcom/android/server/MountService;
    :try_start_10
    const-string v4, "mount"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4a

    move-object/from16 v85, v86

    .line 747
    .end local v86    # "mountService":Lcom/android/server/MountService;
    .restart local v85    # "mountService":Lcom/android/server/MountService;
    :cond_3
    :goto_a
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 753
    :goto_b
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_49

    .line 760
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_37

    .line 761
    if-nez v63, :cond_5

    .line 763
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v78, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 765
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_14
    const-string v4, "lock_settings"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_48

    move-object/from16 v77, v78

    .line 770
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 776
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 779
    :cond_5
    if-nez v65, :cond_6

    .line 781
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v104, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v116

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 783
    .end local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v104, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_16
    const-string v4, "statusbar"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_47

    move-object/from16 v103, v104

    .line 789
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v63, :cond_7

    .line 791
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 799
    :cond_7
    :goto_f
    if-nez v62, :cond_8

    .line 801
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    :cond_8
    :goto_10
    if-nez v63, :cond_9

    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v108, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 813
    .end local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v108, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1a
    const-string v4, "textservices"

    move-object/from16 v0, v108

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_46

    move-object/from16 v107, v108

    .line 819
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v62, :cond_36

    .line 821
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v89, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v89

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 823
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1c
    const-string v4, "network_score"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_45

    move-object/from16 v88, v89

    .line 829
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v90, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v90

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 831
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v90, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v4, "netstats"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_44

    move-object/from16 v6, v90

    .line 837
    .end local v90    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 842
    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_43

    .line 847
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 848
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V

    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v53, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v53

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 862
    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v53, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v4, "connectivity"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 863
    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 864
    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_42

    move-object/from16 v52, v53

    .line 870
    .end local v53    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v102

    .line 872
    const-string v4, "servicediscovery"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 879
    :goto_16
    if-nez v63, :cond_b

    .line 881
    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 894
    :cond_b
    :goto_17
    if-eqz v85, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_c

    .line 895
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 899
    :cond_c
    if-eqz v36, :cond_d

    .line 900
    :try_start_25
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_14

    .line 906
    :cond_d
    :goto_18
    if-eqz v56, :cond_e

    .line 907
    :try_start_26
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 912
    :cond_e
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 913
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v93

    .line 915
    move-object/from16 v0, v93

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 919
    if-nez v60, :cond_f

    .line 921
    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 923
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .local v76, "location":Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string v4, "location"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_41

    move-object/from16 v75, v76

    .line 929
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-instance v58, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v58

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .line 931
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v58, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string v4, "country_detector"

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_40

    move-object/from16 v57, v58

    .line 937
    .end local v58    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_1b
    if-nez v63, :cond_10

    .line 939
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_18

    .line 948
    :goto_1c
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v4, "search_engine"

    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_19

    .line 958
    :cond_10
    :goto_1d
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 965
    :goto_1e
    if-nez v63, :cond_11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 968
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v114, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b

    .line 970
    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v114, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2f
    const-string v4, "wallpaper"

    move-object/from16 v0, v114

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_3f

    move-object/from16 v113, v114

    .line 976
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_11
    :goto_1f
    if-nez v61, :cond_12

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 978
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v46, Landroid/media/AudioService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1c

    .line 980
    .end local v45    # "audioService":Landroid/media/AudioService;
    .local v46, "audioService":Landroid/media/AudioService;
    :try_start_31
    const-string v4, "audio"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_3e

    move-object/from16 v45, v46

    .line 988
    .end local v46    # "audioService":Landroid/media/AudioService;
    .restart local v45    # "audioService":Landroid/media/AudioService;
    :cond_12
    :goto_20
    if-nez v61, :cond_13

    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    const-string v5, "ro.mtk_audio_profiles"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_13

    .line 991
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v4, "audioprofile"

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 1000
    :cond_13
    :goto_21
    const-string v4, "1"

    const-string v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1002
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v4, "sensorhubservice"

    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 1010
    :cond_14
    :goto_22
    if-nez v63, :cond_15

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1014
    :cond_15
    if-nez v61, :cond_16

    .line 1016
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v72

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    .line 1025
    :cond_16
    :goto_23
    if-nez v63, :cond_19

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1030
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1034
    :cond_18
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v101, Lcom/android/server/SerialService;

    move-object/from16 v0, v101

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_20

    .line 1037
    .end local v100    # "serial":Lcom/android/server/SerialService;
    .local v101, "serial":Lcom/android/server/SerialService;
    :try_start_36
    const-string v4, "serial"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_3d

    move-object/from16 v100, v101

    .line 1043
    .end local v101    # "serial":Lcom/android/server/SerialService;
    .restart local v100    # "serial":Lcom/android/server/SerialService;
    :cond_19
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1053
    if-nez v63, :cond_1c

    .line 1054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1058
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1062
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1068
    :cond_1c
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 1079
    :goto_25
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    .line 1086
    :goto_26
    if-nez v62, :cond_1d

    .line 1088
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    new-instance v92, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_23

    .end local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v91, v92

    .line 1095
    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1d
    :goto_27
    if-nez v61, :cond_1e

    .line 1097
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v50, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_24

    .line 1099
    .end local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v50, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3b
    const-string v4, "commontime_management"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_3c

    move-object/from16 v49, v50

    .line 1105
    .end local v50    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1e
    :goto_28
    if-nez v62, :cond_1f

    .line 1107
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 1114
    :cond_1f
    :goto_29
    if-nez v63, :cond_20

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1119
    :cond_20
    if-nez v63, :cond_21
    
    goto :goto_flyme_0

    const-string v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_21

    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    new-instance v44, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_26

    .line 1123
    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v44, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3e
    const-string v4, "assetatlas"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_3b

    move-object/from16 v43, v44

    .end local v44    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_21
    :goto_2a
    :goto_flyme_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_24
    if-nez v63, :cond_25

    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v80, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_27

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_40
    const-string v4, "media_router"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3a

    move-object/from16 v79, v80

    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    :cond_25
    :goto_2c
    const/16 v4, 0x64

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    :try_start_42
    const-string v4, "SystemServer"

    const-string v5, "PerfMgr state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v95, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v95 .. v95}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v95, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v95

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_39

    move-object/from16 v94, v95

    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_2d
    :try_start_44
    new-instance v98, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v98

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v98, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v96, 0x0

    .local v96, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_45
    new-instance v96, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v96

    move-object/from16 v1, v98

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .restart local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v96, :cond_26

    const-string v4, "mtk-perfservice"

    invoke-interface/range {v96 .. v96}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_38

    :cond_26
    move-object/from16 v97, v98

    .end local v96    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_27
    :goto_2e
    if-nez v63, :cond_28

    const-string v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    :try_start_46
    const-string v4, "SystemServer"

    const-string v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v69, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2b

    .end local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v69, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_47
    const-string v4, "mtkhdmi"

    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_37

    move-object/from16 v68, v69

    .end local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :cond_28
    :goto_2f
    :try_start_48
    const-string v4, "SystemServer"

    const-string v5, "AppIconThemeServices"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v40, Lvibeui/content/res/AppIconThemeServices;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lvibeui/content/res/AppIconThemeServices;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2c

    .end local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .local v40, "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :try_start_49
    const-string v4, "AppIconThemeServices"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_36

    move-object/from16 v39, v40

    .end local v40    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :goto_30
    :try_start_4a
    const-string v4, "SystemServer"

    const-string v5, "AppPcService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v42, Lcom/android/server/am/AppPcService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2d

    .end local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    .local v42, "appPcService":Lcom/android/server/am/AppPcService;
    :try_start_4b
    const-string v4, "lenovopermission"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_35

    move-object/from16 v41, v42

    .end local v42    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    :goto_31
    if-nez v63, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_29
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v99

    .local v99, "safeMode":Z
    if-eqz v99, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v82

    .end local v82    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v82, Lcom/android/server/MmsServiceBroker;

    .restart local v82    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v4, v116

    move-object/from16 v5, v113

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_4c
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2e

    :goto_33
    if-eqz v77, :cond_2a

    :try_start_4d
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2f

    :cond_2a
    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_4e
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    :goto_35
    if-eqz v99, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_2b
    :goto_36
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    .local v51, "config":Landroid/content/res/Configuration;
    new-instance v81, Landroid/util/DisplayMetrics;

    invoke-direct/range {v81 .. v81}, Landroid/util/DisplayMetrics;-><init>()V

    .local v81, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/view/WindowManager;

    .local v112, "w":Landroid/view/WindowManager;
    invoke-interface/range {v112 .. v112}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v51

    move-object/from16 v1, v81

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    :goto_37
    :try_start_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_32

    :goto_38
    :try_start_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v99

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_33

    :goto_39
    move-object/from16 v12, v85

    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v7

    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v6

    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v2

    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v52

    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v88

    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v113

    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v70

    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v75

    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v57

    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v91

    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v49

    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v107

    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v103

    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v43

    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v72

    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v105

    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v79

    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v45

    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v31, v82

    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v83

    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v35, v0

    .local v35, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v34, v97

    .local v34, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v32, v39

    .local v32, "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    move-object/from16 v33, v41

    .local v33, "appPcServiceF":Lcom/android/server/am/AppPcService;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v11, v3

    invoke-direct/range {v8 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lvibeui/content/res/AppIconThemeServices;Lcom/android/server/am/AppPcService;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    :try_start_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_34

    :cond_2c
    :goto_3a
    return-void

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .end local v33    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v34    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v51    # "config":Landroid/content/res/Configuration;
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "notification":Landroid/app/INotificationManager;
    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v99    # "safeMode":Z
    .end local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v112    # "w":Landroid/view/WindowManager;
    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v67

    .local v67, "e":Ljava/lang/Throwable;
    :goto_3b
    :try_start_53
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_1

    goto/16 :goto_0

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v67

    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v67, "e":Ljava/lang/RuntimeException;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_3c
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v67

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_6

    .end local v67    # "e":Ljava/lang/RuntimeException;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v67

    .local v67, "e":Ljava/lang/Throwable;
    :goto_3d
    :try_start_54
    const-string v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_1

    goto/16 :goto_2

    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2e
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_30
    :try_start_55
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_3
    move-exception v67

    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v110, v111

    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_3c

    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    :cond_31
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_32
    if-eqz v59, :cond_33

    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_33
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v48, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_3

    .end local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v48, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_56
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_51

    move-object/from16 v47, v48

    .end local v48    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_5

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .end local v115    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v93    # "notification":Landroid/app/INotificationManager;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v67

    move-object/from16 v2, v87

    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting AudioProfile Service"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting SensorHub Service"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v4, "SystemServer"

    const-string v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v4, "SystemServer"

    const-string v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting appIconThemeServices"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting AppPcService"

    move-object/from16 v0, v67

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v99    # "safeMode":Z
    :cond_34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_32

    :catch_2e
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v67    # "e":Ljava/lang/Throwable;
    :cond_35
    const-string v4, "ro.lenovo.check_safeapp"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "row"

    const-string v5, "ro.lenovo.region"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->checkSystemSafeApp()V

    goto/16 :goto_36

    .restart local v51    # "config":Landroid/content/res/Configuration;
    .restart local v81    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v112    # "w":Landroid/view/WindowManager;
    :catch_31
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v67    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v67    # "e":Ljava/lang/Throwable;
    .restart local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v12    # "mountServiceF":Lcom/android/server/MountService;
    .restart local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v18    # "audioServiceF":Landroid/media/AudioService;
    .restart local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v32    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .restart local v33    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .restart local v34    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_34
    move-exception v67

    .restart local v67    # "e":Ljava/lang/Throwable;
    const-string v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .end local v33    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v34    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    .end local v51    # "config":Landroid/content/res/Configuration;
    .end local v67    # "e":Ljava/lang/Throwable;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v99    # "safeMode":Z
    .end local v112    # "w":Landroid/view/WindowManager;
    .restart local v42    # "appPcService":Lcom/android/server/am/AppPcService;
    :catch_35
    move-exception v67

    move-object/from16 v41, v42

    .end local v42    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    goto/16 :goto_53

    .end local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v40    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :catch_36
    move-exception v67

    move-object/from16 v39, v40

    .end local v40    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    goto/16 :goto_52

    .end local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :catch_37
    move-exception v67

    move-object/from16 v68, v69

    .end local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto/16 :goto_51

    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_38
    move-exception v67

    move-object/from16 v97, v98

    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_50

    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :catch_39
    move-exception v67

    move-object/from16 v94, v95

    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_4f

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_3a
    move-exception v67

    move-object/from16 v79, v80

    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_4e

    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v44    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3b
    move-exception v67

    move-object/from16 v43, v44

    .line 1129
    .end local v44    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_4d

    .end local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v50    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3c
    move-exception v67

    move-object/from16 v49, v50

    .end local v50    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_4c

    .end local v100    # "serial":Lcom/android/server/SerialService;
    .restart local v101    # "serial":Lcom/android/server/SerialService;
    :catch_3d
    move-exception v67

    move-object/from16 v100, v101

    .end local v101    # "serial":Lcom/android/server/SerialService;
    .restart local v100    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_4b

    .end local v45    # "audioService":Landroid/media/AudioService;
    .restart local v46    # "audioService":Landroid/media/AudioService;
    :catch_3e
    move-exception v67

    move-object/from16 v45, v46

    .end local v46    # "audioService":Landroid/media/AudioService;
    .restart local v45    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_4a

    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3f
    move-exception v67

    move-object/from16 v113, v114

    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_49

    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_40
    move-exception v67

    move-object/from16 v57, v58

    .end local v58    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_48

    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :catch_41
    move-exception v67

    move-object/from16 v75, v76

    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_47

    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v53    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_42
    move-exception v67

    move-object/from16 v52, v53

    .end local v53    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_46

    :catch_43
    move-exception v67

    goto/16 :goto_45

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_44
    move-exception v67

    move-object/from16 v6, v90

    .end local v90    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_44

    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_45
    move-exception v67

    move-object/from16 v88, v89

    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_43

    .end local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v67

    move-object/from16 v107, v108

    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_42

    .end local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_47
    move-exception v67

    move-object/from16 v103, v104

    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_41

    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_48
    move-exception v67

    move-object/from16 v77, v78

    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_40

    :catch_49
    move-exception v4

    goto/16 :goto_c

    .end local v85    # "mountService":Lcom/android/server/MountService;
    .restart local v86    # "mountService":Lcom/android/server/MountService;
    :catch_4a
    move-exception v67

    move-object/from16 v85, v86

    .end local v86    # "mountService":Lcom/android/server/MountService;
    .restart local v85    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_3f

    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_4b
    move-exception v67

    move-object/from16 v70, v71

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3e

    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v93    # "notification":Landroid/app/INotificationManager;
    .end local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4c
    move-exception v67

    goto/16 :goto_3c

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4d
    move-exception v67

    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3c

    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4e
    move-exception v67

    move-object/from16 v83, v84

    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3c

    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4f
    move-exception v67

    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v110, v111

    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3c

    .line 643
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    :catch_50
    move-exception v67

    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v110, v111

    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3c

    .line 672
    .end local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "watchdog":Lcom/android/server/Watchdog;
    :catch_51
    move-exception v67

    move-object/from16 v54, v55

    .line 706
    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v105, v106

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v47, v48

    .end local v48    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v110, v111

    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3c

    .line 614
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v115    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_52
    move-exception v67

    move-object/from16 v83, v84

    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_3d

    .line 600
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_53
    move-exception v67

    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3b

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v93    # "notification":Landroid/app/INotificationManager;
    .restart local v94    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v103    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v105    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_36
    move-object/from16 v2, v87

    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_37
    move-object/from16 v2, v87

    .end local v87    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2f
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1605
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1606
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1609
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1610
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1589
    const/4 v1, 0x0

    .line 1590
    .local v1, "ret":Landroid/content/ComponentName;
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1595
    if-eqz v1, :cond_0

    .line 1596
    const-string v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_0
    return-object v1

    .line 1598
    :cond_0
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
