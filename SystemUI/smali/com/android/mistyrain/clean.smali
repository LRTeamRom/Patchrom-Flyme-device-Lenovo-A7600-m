.class public Lcom/android/mistyrain/clean;
.super Ljava/lang/Object;
.source "clean.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/mistyrain/clean;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/android/mistyrain/clean;->clearmemory()V

    .line 29
    return-void
.end method

.method private getAvailMemory(Landroid/content/Context;)J
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 73
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 74
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 78
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public clearmemory()V
    .registers 18

    .prologue
    .line 33
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mistyrain/clean;->context:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 34
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 35
    .local v9, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/16 v13, 0x64

    invoke-virtual {v3, v13}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v12

    .line 37
    .local v12, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mistyrain/clean;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mistyrain/clean;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v5

    .line 39
    .local v5, "beforeMem":J
    const/4 v7, 0x0

    .line 40
    .local v7, "count":I
    if-eqz v9, :cond_2a

    .line 41
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-lt v8, v13, :cond_62

    .line 61
    .end local v8    # "i":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mistyrain/clean;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mistyrain/clean;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v1

    .line 66
    .local v1, "afterMem":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mistyrain/clean;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u5df2\u6e05\u7406\u4e86"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v15, v1, v5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M\u5185\u5b58\uff0c\u5f53\u524d\u53ef\u7528\u5185\u5b58\u4e3a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "M"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 67
    return-void

    .line 42
    .end local v1    # "afterMem":J
    .restart local v8    # "i":I
    :cond_62
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 49
    .local v4, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0xc8

    if-le v13, v14, :cond_74

    .line 50
    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 51
    .local v11, "pkgList":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_71
    array-length v13, v11

    if-lt v10, v13, :cond_77

    .line 41
    .end local v10    # "j":I
    .end local v11    # "pkgList":[Ljava/lang/String;
    :cond_74
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 53
    .restart local v10    # "j":I
    .restart local v11    # "pkgList":[Ljava/lang/String;
    :cond_77
    aget-object v13, v11, v10

    invoke-virtual {v3, v13}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 54
    add-int/lit8 v7, v7, 0x1

    .line 51
    add-int/lit8 v10, v10, 0x1

    goto :goto_71
.end method
