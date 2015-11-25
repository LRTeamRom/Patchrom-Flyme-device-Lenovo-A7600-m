.class Lcom/android/server/am/AppPcService$PermCheck$8;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserPermissionLists()V
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
    .line 1605
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1608
    const/4 v6, 0x0

    .line 1610
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$3700(Lcom/android/server/am/AppPcService$PermCheck;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcService$PermCheck;->access$4600()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1611
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1612
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4700(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1613
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1614
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1615
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1639
    if-eqz v6, :cond_0

    .line 1640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4700(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1618
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1619
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1620
    .local v8, "packageColumnIndex":I
    const-string v0, "permission"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1621
    .local v10, "permissionColumnIndex":I
    const-string v0, "permission_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1623
    .local v12, "permissionStatusColumnIndex":I
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1624
    .local v9, "packageName":Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1625
    .local v11, "permissionName":Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1626
    .local v13, "status":I
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4700(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v9, v11}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # invokes: Lcom/android/server/am/AppPcService$PermCheck;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v0, v9}, Lcom/android/server/am/AppPcService$PermCheck;->access$4800(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 1628
    .local v14, "uid":Ljava/lang/Integer;
    if-eqz v14, :cond_3

    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1629
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1632
    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1633
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1639
    .end local v8    # "packageColumnIndex":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionColumnIndex":I
    .end local v11    # "permissionName":Ljava/lang/String;
    .end local v12    # "permissionStatusColumnIndex":I
    .end local v13    # "status":I
    .end local v14    # "uid":Ljava/lang/Integer;
    :cond_5
    if-eqz v6, :cond_6

    .line 1640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1643
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$4902(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 1633
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1635
    :catch_0
    move-exception v7

    .line 1636
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncUserPermissionLists error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1639
    if-eqz v6, :cond_6

    .line 1640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1639
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    if-eqz v6, :cond_7

    .line 1640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
