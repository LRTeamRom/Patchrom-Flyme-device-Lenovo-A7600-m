.class Lcom/android/server/am/AppPcService$PermControlService$2;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field final synthetic val$isGranted:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$perms:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$perms:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$isGranted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1048
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService;->access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1049
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.lenovo.lsf.bwprovider/user_permissions_blocked"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1050
    .local v1, "historyUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1051
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "package"

    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v4, "permission"

    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$perms:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-boolean v4, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$isGranted:Z

    if-eqz v4, :cond_0

    .line 1054
    const-string v4, "deny_content"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :goto_0
    const-string v4, "deny_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1060
    const-string v4, "_id IN (SELECT _id FROM user_permissions_blocked ORDER BY deny_time DESC LIMIT -1 OFFSET 100)"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1066
    .end local v1    # "historyUri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 1056
    .restart local v1    # "historyUri":Landroid/net/Uri;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v4, "deny_content"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    .end local v1    # "historyUri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
