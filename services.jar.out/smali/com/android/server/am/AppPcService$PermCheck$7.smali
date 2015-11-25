.class Lcom/android/server/am/AppPcService$PermCheck$7;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemPermissionLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService$PermCheck;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck$7;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1563
    const/4 v7, 0x0

    .line 1565
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$7;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$3700(Lcom/android/server/am/AppPcService$PermCheck;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcService$PermCheck;->access$4300()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1566
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$7;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$4400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1568
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1569
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    if-eqz v7, :cond_0

    .line 1592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$7;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$4400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1572
    const-string v1, "package"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1573
    .local v11, "packageColumnIndex":I
    const-string v1, "permission"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1574
    .local v13, "permissionColumnIndex":I
    const-string v1, "permission_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1575
    .local v15, "permissionStatusColumnIndex":I
    const-string v1, "modify"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1577
    .local v10, "modifyColumnIndex":I
    :cond_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1578
    .local v12, "packageName":Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1579
    .local v14, "permissionName":Ljava/lang/String;
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1580
    .local v16, "status":I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1581
    .local v9, "modify":I
    if-nez v9, :cond_3

    .line 1582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$7;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$4400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v12, v14}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1585
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1591
    .end local v9    # "modify":I
    .end local v10    # "modifyColumnIndex":I
    .end local v11    # "packageColumnIndex":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "permissionColumnIndex":I
    .end local v14    # "permissionName":Ljava/lang/String;
    .end local v15    # "permissionStatusColumnIndex":I
    .end local v16    # "status":I
    :cond_5
    if-eqz v7, :cond_6

    .line 1592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1595
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$7;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPcService$PermCheck;->access$4502(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 1585
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1587
    :catch_0
    move-exception v8

    .line 1588
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "Security_PermCheck"

    const-string v2, "startSyncSystemPermissionLists error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1591
    if-eqz v7, :cond_6

    .line 1592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1591
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v7, :cond_7

    .line 1592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method
