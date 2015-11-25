.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field private static final BUILD_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field static final DEBUG:Z = true

.field private static final DO_ATTACH:I = 0xa

.field private static final DO_DETACH:I = 0x14

.field private static final DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final IMAGEWALLPAPER:Ljava/lang/String; = "com.android.systemui.ImageWallpaper"

.field private static final MSG_TOUCH_EVENT:I = 0x2738

.field private static final MSG_UPDATE_SURFACE:I = 0x2710

.field private static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final MSG_WINDOW_MOVED:I = 0x2733

.field private static final MSG_WINDOW_RESIZED:I = 0x272e

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field private static final TABLET:Ljava/lang/String; = "tablet"

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field private static final VIDEOWALLPAPER:Ljava/lang/String; = "com.media.vlw.VideoLiveWallpaper"


# instance fields
.field private final mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWallpaper:Ljava/lang/String;

.field private mPerfService:Lcom/mediatek/perfservice/IPerfService;

.field private mPerfServiceHandle:I

.field private mPerfServiceinited:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceinited:I

    .line 163
    new-instance v0, Landroid/service/wallpaper/WallpaperService$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$1;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1316
    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService;

    .prologue
    .line 89
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/wallpaper/WallpaperService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isTabletBuild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/service/wallpaper/WallpaperService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->mutliCoreEnable(Z)V

    return-void
.end method

.method private isSmartBookSupport()Z
    .locals 2

    .prologue
    .line 1396
    const-string/jumbo v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTabletBuild()Z
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mutliCoreEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1418
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->perfServiceInit()V

    .line 1419
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1420
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mutliCore enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    iget v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    invoke-interface {v1, v2}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V

    .line 1423
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    iget v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    invoke-interface {v1, v2}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :cond_1
    :goto_0
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in mutliCoreEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private perfServiceInit()V
    .locals 7

    .prologue
    .line 1400
    iget v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceinited:I

    if-nez v2, :cond_1

    .line 1401
    const-string/jumbo v2, "mtk-perfservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1402
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1403
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v2

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    .line 1404
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_1

    .line 1406
    :try_start_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 1407
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I

    move-result v2

    iput v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceinited:I

    .line 1415
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    return-void

    .line 1408
    .restart local v0    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in perfServiceInit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1387
    const-string v2, "State of wallpaper "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1389
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 1390
    .local v0, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    const-string v2, "  Engine "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    const-string v2, "    "

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1393
    .end local v0    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1374
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 1337
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1339
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1340
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isTabletBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1346
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/service/wallpaper/WallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1349
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isSmartBookSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mCurrentWallpaper:Ljava/lang/String;

    .line 1352
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Wallpaper : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService;->mCurrentWallpaper:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_1
    return-void
.end method

.method public abstract onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1359
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1360
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1362
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 1361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1365
    return-void
.end method
