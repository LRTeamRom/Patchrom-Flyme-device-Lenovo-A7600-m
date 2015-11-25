.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 647
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 648
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 652
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 654
    :pswitch_0
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/MountService$UnmountCallBack;

    .line 656
    .local v23, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v24, 0x0

    .line 657
    .local v24, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 658
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    .line 659
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    if-nez v24, :cond_1

    .line 661
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_PM_UPDATE volume is not exist!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    .line 665
    :cond_1
    const-string v25, "ro.mtk_owner_sdcard_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUserId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)I

    move-result v25

    if-nez v25, :cond_3

    .line 668
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_PM_UPDATE stop unmount because of user changed to owner"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "mounted"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 672
    const-string v25, "MountService"

    const-string v26, "updateDefaultpath Environment.MEDIA_MOUNTED"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 675
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "android.intent.action.MEDIA_MOUNTED"

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 679
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "android.intent.action.MEDIA_EJECT"

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 680
    const-string v25, "ro.mtk_2sdcard_swap"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "/storage/sdcard1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 681
    const/16 v22, 0x0

    .line 682
    .local v22, "swapVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 683
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v25

    const-string v27, "/storage/sdcard1"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    .line 684
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "android.intent.action.MEDIA_EJECT"

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 687
    .end local v22    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)I

    move-result v25

    if-lez v25, :cond_5

    .line 688
    const-wide/16 v26, 0x1f4

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    .line 693
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    const-string v25, "MountService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " registered = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 697
    const-string v25, "MountService"

    const-string v26, "Updating external media status on PackageManager"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual/range {v24 .. v24}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v25

    const-string v26, "/storage/usbotg"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 700
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 684
    .restart local v22    # "swapVolume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v25

    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v25

    .line 690
    .end local v22    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_5
    const-wide/16 v26, 0x5dc

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 704
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/MountService;->finishMediaUpdate()V

    goto/16 :goto_0

    .line 719
    .end local v23    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v24    # "volume":Landroid/os/storage/StorageVolume;
    :pswitch_1
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v25, "MountService"

    const-string v26, "Updated status. Processing requests"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 723
    .local v18, "size":I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 724
    .local v19, "sizeArr":[I
    const/16 v20, 0x0

    .line 726
    .local v20, "sizeArrN":I
    const-string v25, "activity"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 728
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v21, v20

    .end local v20    # "sizeArrN":I
    .local v21, "sizeArrN":I
    :goto_2
    move/from16 v0, v18

    if-ge v8, v0, :cond_18

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/MountService$UnmountCallBack;

    .line 731
    .restart local v23    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v24, 0x0

    .line 732
    .restart local v24    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 733
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    .line 734
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 735
    if-nez v24, :cond_7

    .line 736
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_PM_DONE volume is not exist!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "sizeArrN":I
    .restart local v20    # "sizeArrN":I
    aput v8, v19, v21

    .line 728
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v21, v20

    .end local v20    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    goto :goto_2

    .line 734
    :catchall_2
    move-exception v25

    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v25

    .line 740
    :cond_7
    const-string v25, "ro.mtk_owner_sdcard_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUserId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)I

    move-result v25

    if-nez v25, :cond_9

    .line 743
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "sizeArrN":I
    .restart local v20    # "sizeArrN":I
    aput v8, v19, v21

    .line 744
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_PM_DONE stop unmount because of user changed to owner"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "mounted"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 748
    const-string v25, "MountService"

    const-string v26, "updateDefaultpath Environment.MEDIA_MOUNTED"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 751
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "android.intent.action.MEDIA_MOUNTED"

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    .line 755
    .end local v20    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    :cond_9
    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 756
    .local v15, "path":Ljava/lang/String;
    const/4 v13, 0x0

    .line 757
    .local v13, "needKill":Z
    const/4 v6, 0x0

    .line 758
    .local v6, "done":Z
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 759
    const/4 v6, 0x1

    .line 801
    :cond_a
    :goto_4
    if-nez v6, :cond_16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    .line 803
    const-string v25, "MountService"

    const-string v26, "Retrying to kill storage users again"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v28, v0

    add-int/lit8 v29, v28, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x1e

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v20, v21

    .end local v21    # "sizeArrN":I
    .restart local v20    # "sizeArrN":I
    goto/16 :goto_3

    .line 761
    .end local v20    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v16

    .line 762
    .local v16, "pids":[I
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 763
    :cond_c
    const/4 v6, 0x1

    goto :goto_4

    .line 764
    :cond_d
    if-eqz v4, :cond_15

    .line 765
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 766
    .local v17, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v17, :cond_13

    .line 767
    move-object/from16 v0, v16

    array-length v11, v0

    .line 768
    .local v11, "len":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    if-ge v10, v11, :cond_e

    .line 769
    if-eqz v13, :cond_10

    .line 785
    .end local v10    # "k":I
    .end local v11    # "len":I
    :cond_e
    :goto_6
    if-eqz v13, :cond_14

    .line 787
    const-string v25, "unmount media"

    const/16 v26, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v16

    .line 790
    if-eqz v16, :cond_f

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 791
    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 772
    .restart local v10    # "k":I
    .restart local v11    # "len":I
    :cond_10
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 773
    .local v14, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    aget v26, v16, v10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 774
    const/4 v13, 0x1

    .line 775
    const-string v25, "MountService"

    const-string v26, "java process, need kill!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v14    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 782
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "k":I
    .end local v11    # "len":I
    :cond_13
    const-string v25, "MountService"

    const-string v26, "runningList from AMS is null!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 794
    :cond_14
    const-string v25, "MountService"

    const-string v26, "all native process, don\'t need kill!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 798
    .end local v17    # "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_15
    const-string v25, "MountService"

    const-string v26, "Fail to get AMS while unmount!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 809
    .end local v16    # "pids":[I
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_17

    .line 810
    const-string v25, "MountService"

    const-string v26, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_17
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "sizeArrN":I
    .restart local v20    # "sizeArrN":I
    aput v8, v19, v21

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v26

    const/16 v27, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 819
    .end local v6    # "done":Z
    .end local v13    # "needKill":Z
    .end local v15    # "path":Ljava/lang/String;
    .end local v20    # "sizeArrN":I
    .end local v23    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v24    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v21    # "sizeArrN":I
    :cond_18
    add-int/lit8 v8, v21, -0x1

    :goto_7
    if-ltz v8, :cond_0

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    aget v26, v19, v8

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 819
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 825
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v8    # "i":I
    .end local v18    # "size":I
    .end local v19    # "sizeArr":[I
    .end local v21    # "sizeArrN":I
    :pswitch_2
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_MS"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/MountService$UnmountCallBack;

    .line 828
    .restart local v23    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v24, 0x0

    .line 829
    .restart local v24    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 830
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v24, v0

    .line 831
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 832
    if-nez v24, :cond_19

    .line 833
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_MS volume is not exist!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 831
    :catchall_3
    move-exception v25

    :try_start_7
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v25

    .line 836
    :cond_19
    const-string v25, "ro.mtk_owner_sdcard_support"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUserId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)I

    move-result v25

    if-nez v25, :cond_1b

    .line 839
    const-string v25, "MountService"

    const-string v26, "H_UNMOUNT_MS stop unmount because of user changed to owner"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "mounted"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v25

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v25

    if-nez v25, :cond_1a

    .line 843
    const-string v25, "MountService"

    const-string v26, "updateDefaultpath Environment.MEDIA_MOUNTED"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 846
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    const-string v26, "android.intent.action.MEDIA_MOUNTED"

    sget-object v27, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 850
    :cond_1b
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 855
    .end local v23    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v24    # "volume":Landroid/os/storage/StorageVolume;
    :pswitch_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 856
    :catch_0
    move-exception v7

    .line 857
    .local v7, "ex":Ljava/lang/Exception;
    const-string v25, "MountService"

    const-string v26, "Boot-time mount exception"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 862
    .end local v7    # "ex":Ljava/lang/Exception;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)V

    .line 863
    const-string v25, "MountService"

    const-string v26, "Running fstrim idle maintenance"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v25 .. v25}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v25

    const-string v26, "fstrim"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string v29, "dotrim"

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_9} :catch_1

    .line 873
    :goto_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 874
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 875
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 869
    .end local v5    # "callback":Ljava/lang/Runnable;
    :catch_1
    move-exception v12

    .line 870
    .local v12, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v25, "MountService"

    const-string v26, "Failed to run fstrim!"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
