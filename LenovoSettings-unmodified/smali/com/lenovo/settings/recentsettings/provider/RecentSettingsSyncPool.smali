.class public Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;
.super Ljava/lang/Object;
.source "RecentSettingsSyncPool.java"


# static fields
.field private static final LINKED_LIST_MAX_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RecentSettingsSyncPool"

.field private static mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sSyncLinkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static sWriteDbThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sSyncLinkedList:Ljava/util/LinkedList;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sWriteDbThread:Ljava/lang/Thread;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->writePollToDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 20
    sput-object p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sWriteDbThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static addToCache(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "count":I
    sget-object v2, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sSyncLinkedList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 43
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sSyncLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sSyncLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 45
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 47
    sget-object v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool$1;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    return-void

    .line 45
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getCachedValue()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 71
    sget-object v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sSyncLinkedList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sSyncLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    .line 76
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static syncPollToDb(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->writePollToDb(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private static writeDb(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 98
    const/4 v13, 0x0

    .line 100
    .local v13, "cursor":Landroid/database/Cursor;
    const-string v3, "titleStringId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 101
    .local v21, "titleStringId":Ljava/lang/Integer;
    const-string v3, "titleStringPackageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 102
    .local v24, "titleStringPackageName":Ljava/lang/String;
    const-string v3, "itemType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    .line 103
    .local v25, "type":Ljava/lang/Integer;
    if-eqz v25, :cond_0

    if-eqz v24, :cond_0

    if-nez v21, :cond_1

    .line 105
    :cond_0
    const-string v3, "RecentSettingsSyncPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", titleStringPackageName: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", titleStringId: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v3, "fragmentClassName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "fragmentClassName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 113
    .local v5, "selectionForQuery":Ljava/lang/String;
    const/4 v6, 0x0

    .line 114
    .local v6, "selectionArgsForQuery":[Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 116
    const-string v5, "titleStringId=? AND titleStringPackageName=? AND fragmentClassName=?"

    .line 119
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    .end local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v24, v6, v3

    const/4 v3, 0x2

    aput-object v15, v6, v3

    .line 173
    .restart local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    :goto_1
    const/4 v14, 0x0

    .line 174
    .local v14, "existsItem":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 177
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 179
    if-eqz v13, :cond_a

    .line 180
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 181
    new-instance v19, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;-><init>(Landroid/database/Cursor;)V

    .line 182
    .local v19, "item":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mItemType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_8

    .line 183
    move-object/from16 v14, v19

    goto :goto_2

    .line 122
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v14    # "existsItem":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    .end local v19    # "item":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    :cond_2
    const-string v3, "intentAction"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "intentAction":Ljava/lang/String;
    const-string v3, "intentTargetPackage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 124
    .local v18, "intentTargetPackage":Ljava/lang/String;
    const-string v3, "intentTargetClass"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, "intentTargetClass":Ljava/lang/String;
    const-string v3, "pluginPrefKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 126
    .local v20, "pluginPrefKey":Ljava/lang/String;
    if-nez v16, :cond_3

    if-eqz v18, :cond_6

    if-eqz v17, :cond_6

    .line 127
    :cond_3
    if-eqz v16, :cond_4

    if-eqz v18, :cond_4

    if-eqz v17, :cond_4

    .line 129
    const-string v5, "titleStringId=? AND titleStringPackageName=? AND intentAction=? AND intentTargetPackage=? AND intentTargetClass=?"

    .line 134
    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/String;

    .end local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v24, v6, v3

    const/4 v3, 0x2

    aput-object v16, v6, v3

    const/4 v3, 0x3

    aput-object v18, v6, v3

    const/4 v3, 0x4

    aput-object v17, v6, v3

    .restart local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    goto :goto_1

    .line 137
    :cond_4
    if-eqz v16, :cond_5

    .line 138
    const-string v5, "titleStringId=? AND titleStringPackageName=? AND intentAction=?"

    .line 141
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    .end local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v24, v6, v3

    const/4 v3, 0x2

    aput-object v16, v6, v3

    .restart local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    goto/16 :goto_1

    .line 144
    :cond_5
    const-string v5, "titleStringId=? AND titleStringPackageName=? AND intentTargetPackage=? AND intentTargetClass=?"

    .line 148
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    .end local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v24, v6, v3

    const/4 v3, 0x2

    aput-object v18, v6, v3

    const/4 v3, 0x3

    aput-object v17, v6, v3

    .restart local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    goto/16 :goto_1

    .line 151
    :cond_6
    if-eqz v20, :cond_7

    .line 152
    const-string v5, "titleStringId=? AND titleStringPackageName=? AND pluginPrefKey=?"

    .line 155
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    .end local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v24, v6, v3

    const/4 v3, 0x2

    aput-object v20, v6, v3

    .restart local v6    # "selectionArgsForQuery":[Ljava/lang/String;
    goto/16 :goto_1

    .line 165
    :cond_7
    const-string v3, "RecentSettingsSyncPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException fragmentClassName: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", intentAction: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", intentTargetPackage: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", intentTargetClass: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .end local v16    # "intentAction":Ljava/lang/String;
    .end local v17    # "intentTargetClass":Ljava/lang/String;
    .end local v18    # "intentTargetPackage":Ljava/lang/String;
    .end local v20    # "pluginPrefKey":Ljava/lang/String;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v14    # "existsItem":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    .restart local v19    # "item":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    :cond_8
    :try_start_1
    const-string v3, "RecentSettingsSyncPool"

    const-string v4, "update may be some error type != item.mItemType"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "RecentSettingsSyncPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update may be some error selectionForQuery = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "RecentSettingsSyncPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update may be some error selectionArgsForQuery = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v3, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mId:J

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 197
    .end local v19    # "item":Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_9

    .line 198
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    .line 197
    :cond_a
    if-eqz v13, :cond_b

    .line 198
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_b
    const-wide/16 v22, 0x0

    .line 205
    .local v22, "timestamp":J
    :try_start_2
    sget-object v8, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "timestamp"

    aput-object v4, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "timestamp DESC"

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 209
    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 210
    const-string v3, "timestamp"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v22

    .line 213
    :cond_c
    if-eqz v13, :cond_d

    .line 214
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_d
    if-nez v14, :cond_f

    .line 220
    const-string v3, "frequency"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v3, "timestamp"

    const-wide/16 v8, 0x1

    add-long v8, v8, v22

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    sget-object v3, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 213
    :catchall_1
    move-exception v3

    if-eqz v13, :cond_e

    .line 214
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v3

    .line 225
    :cond_f
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v26, "updteValues":Landroid/content/ContentValues;
    const-string v3, "frequency"

    iget-wide v8, v14, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFrequency:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v3, "timestamp"

    const-wide/16 v8, 0x1

    add-long v8, v8, v22

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    sget-object v3, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    iget-wide v8, v14, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mId:J

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static writePollToDb(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "values":Landroid/content/ContentValues;
    :goto_0
    invoke-static {}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->getCachedValue()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p0, v0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->writeDb(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
