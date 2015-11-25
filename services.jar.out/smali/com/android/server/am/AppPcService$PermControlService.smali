.class Lcom/android/server/am/AppPcService$PermControlService;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermControlService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_TIMER:I = 0x14

.field private static final DELAY_TIME:I = 0x3e8

.field private static final EXTRA_TIMER:I = 0x1388

.field private static final MAX_WATI_TIME:I = 0x4e20

.field private static final MSG_CANCEL_CONF_DLG:I = 0x69

.field private static final MSG_COUNT_DOWN:I = 0x68

.field private static final MSG_RESET:I = 0x65

.field private static final MSG_SHOW_CONF_DLG:I = 0x67

.field private static final MSG_SHOW_TOAST:I = 0x66

.field private static final TOAST_ACTIVE_TIME:J = 0xea60L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlertDlg:Landroid/app/AlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGranted:Z

.field private mLastToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

.field private mTimeCountDown:Landroid/widget/TextView;

.field private mUserConfirmLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    const-string v0, "Security_PermControlService"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->TAG:Ljava/lang/String;

    .line 820
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    .line 830
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    .line 904
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcService$PermControlService$1;-><init>(Lcom/android/server/am/AppPcService$PermControlService;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    .line 833
    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    .line 834
    new-instance v0, Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {v0, p2}, Lcom/android/server/am/AppPcService$PermCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    .line 835
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/AppPcService$PermControlService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->handleDenyToastMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/AppPcService$PermControlService;Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;
    .param p1, "x1"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "x2"    # I

    .prologue
    .line 804
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppPcService$PermControlService;->handleConfirmDlgMsg(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/am/AppPcService$PermControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->handleCancelConfirmDlgMsg()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelConfirmDlg()V
    .locals 3

    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 941
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 942
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 943
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 944
    return-void
.end method

.method private checkCurrentUid()Z
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x1

    return v0
.end method

.method private getFirstTask()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1167
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v5, :cond_0

    .line 1168
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1171
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v8, v8, v6}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v3

    .line 1173
    .local v3, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1174
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1176
    .local v2, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v0, Landroid/content/Intent;

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1177
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 1178
    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1180
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x200001

    and-int/2addr v5, v6

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1182
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1183
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1185
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    .line 1186
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1189
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getMessageBody(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 880
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources;->sPermissionLabels:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/am/AppPcService$AppPcServiceResources;->sPermissionLabels:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown Permission"

    goto :goto_0
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1220
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1223
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1224
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1225
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 1226
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    monitor-exit v3

    .line 1232
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1227
    .restart local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1231
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameByUid fail uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleCancelConfirmDlgMsg()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "Security_PermControlService"

    const-string v1, "handleCancelConfirmDlgMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    .line 1113
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1117
    :cond_0
    return-void
.end method

.method private declared-synchronized handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z
    .locals 7
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "flag"    # I

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase record.mPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1011
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/AppPcService$PermCheck;->getNotifyType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1012
    .local v1, "notifyType":I
    packed-switch v1, :pswitch_data_0

    .line 1022
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .line 1023
    invoke-direct {p0, p2}, Lcom/android/server/am/AppPcService$PermControlService;->showConfirmDlg(I)V

    .line 1031
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    .end local v1    # "notifyType":I
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1037
    :try_start_3
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase mIsGranted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-boolean v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit p0

    return v2

    .line 1014
    .restart local v1    # "notifyType":I
    :pswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1015
    const/4 v2, 0x0

    :try_start_5
    monitor-exit v3

    goto :goto_1

    .line 1036
    .end local v1    # "notifyType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1007
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1017
    .restart local v1    # "notifyType":I
    :pswitch_2
    const/4 v2, 0x1

    :try_start_7
    monitor-exit v3

    goto :goto_1

    .line 1032
    .end local v1    # "notifyType":I
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Security_PermControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCheckCase error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleConfirmDlgMsg(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V
    .locals 11
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "flag"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1075
    const-string v5, "Security_PermControlService"

    const-string v6, "handleConfirmDlgMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1077
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1078
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->accept_perm:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1079
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->deny_perm:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1080
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1084
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;->permission_notify_dialog_customview:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getLayoutFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 1085
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1088
    sget v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1089
    .local v2, "messageText":Landroid/widget/TextView;
    sget v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->hint:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mTimeCountDown:Landroid/widget/TextView;

    .line 1090
    sget v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->checkbox:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    .line 1091
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1093
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "label":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_msg_body:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/am/AppPcService$PermControlService;->getMessageBody(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1098
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1101
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1102
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1103
    invoke-direct {p0, v9}, Lcom/android/server/am/AppPcService$PermControlService;->setStatusBarEnableStatus(Z)V

    .line 1105
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1106
    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/android/server/am/AppPcService$PermControlService;->updateCount(I)V

    .line 1107
    return-void
.end method

.method private handleDenyToastMsg(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 926
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .line 927
    .local v0, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    .line 928
    return-void
.end method

.method private recordCheckHistory(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "perms"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z

    .prologue
    .line 1044
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermControlService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/AppPcService$PermControlService$2;-><init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "recordCheckHistory"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1068
    return-void
.end method

.method private releaseLock()V
    .locals 2

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1072
    monitor-exit v1

    .line 1073
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCountText(I)V
    .locals 6
    .param p1, "timer"    # I

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->time_count_down_hint:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mTimeCountDown:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    return-void
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1204
    const-string v0, "Security_PermControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void
.end method

.method private showConfirmDlg(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 933
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 934
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 935
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 936
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 937
    return-void
.end method

.method private showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1136
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1137
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1138
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    return-void
.end method

.method private showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    .locals 10
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    const/4 v9, 0x0

    .line 1141
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "fistTaskPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    if-ltz v4, :cond_3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1147
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1149
    .local v3, "time":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 1150
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1154
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/Long;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->toast_deny_msg_body:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/am/AppPcService$PermControlService;->getMessageBody(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateCount(I)V
    .locals 4
    .param p1, "timer"    # I

    .prologue
    .line 1192
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->setCountText(I)V

    .line 1193
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1194
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1195
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1196
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1197
    return-void
.end method


# virtual methods
.method public getPackageName(II)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 1235
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 1236
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1237
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1238
    const-string v4, "Security_PermControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageName from mPermCheck.mUidPackageNameMaps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    monitor-exit v5

    .line 1272
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1241
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    const/4 v1, 0x0

    .line 1244
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v4, :cond_1

    .line 1245
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1248
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1250
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_2

    .line 1251
    const-string v4, "Security_PermControlService"

    const-string v5, "getPackageName l == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1241
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1255
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "Security_PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName l.size() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1258
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1260
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v4, p2, :cond_4

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_3

    .line 1261
    :cond_4
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 1262
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1263
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 1264
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3100(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1270
    :cond_5
    const-string v4, "Security_PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName fail uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public handleCheckCase(ILjava/lang/String;II)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const/16 v10, 0x15

    const/4 v9, 0x0

    .line 962
    const-string v1, "Security_PermControlService"

    const-string v2, "handleCheckCase(int code, int uid, int pid)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->checkCurrentUid()Z

    move-result v1

    if-nez v1, :cond_0

    move v7, v9

    .line 1004
    :goto_0
    return v7

    .line 967
    :cond_0
    if-ltz p1, :cond_1

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 969
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 972
    :cond_2
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 977
    .local v0, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppPcService$PermCheck;->getNotifyType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 978
    .local v8, "notifyType":I
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase notifyType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v7, 0x0

    .line 980
    .local v7, "checkResult":Z
    packed-switch v8, :pswitch_data_0

    .line 1000
    const/4 v7, 0x1

    .line 1003
    :goto_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 982
    :pswitch_0
    if-ne p1, v10, :cond_3

    .line 983
    const/4 v7, 0x0

    goto :goto_1

    .line 985
    :cond_3
    invoke-direct {p0, v0, v9}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z

    move-result v7

    .line 987
    goto :goto_1

    .line 989
    :pswitch_1
    const/4 v7, 0x0

    .line 990
    if-ne p1, v10, :cond_4

    .line 991
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refuse auto boot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 993
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    goto :goto_1

    .line 997
    :pswitch_2
    const/4 v7, 0x1

    .line 998
    goto :goto_1

    .line 980
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected handleCountDownMsg(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1119
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v1, -0x1

    .line 1120
    .local v0, "timer":I
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    if-lez v0, :cond_1

    .line 1122
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->updateCount(I)V

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    const-string v1, "Security_PermControlService"

    const-string v2, "time out and deny the permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    .line 1127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    .line 1128
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public inWhiteList(ILjava/lang/String;II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 946
    const-string v1, "Security_PermControlService"

    const-string v2, "inWhiteList(int code, int uid, int pid)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object p2

    .line 951
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppPcService$PermControlService;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppPcService;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 959
    :cond_1
    :goto_0
    return v0

    .line 956
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->inWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 889
    if-nez p1, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v4

    .line 892
    :cond_1
    const/4 v0, 0x0

    .line 894
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 895
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 896
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 899
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 900
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1306
    const-string v3, "Security_PermControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick which="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v1, 0x0

    .line 1308
    .local v1, "enable":Z
    const/4 v2, 0x0

    .line 1309
    .local v2, "status":I
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 1310
    const/4 v1, 0x1

    .line 1311
    const/4 v2, 0x1

    .line 1316
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1318
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v0

    .line 1319
    .local v0, "code":I
    if-ltz v0, :cond_1

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1320
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/am/AppPcService$PermCheck;->changePermissionByCode(Ljava/lang/String;II)V

    .line 1329
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    .line 1330
    return-void

    .line 1312
    .end local v0    # "code":I
    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 1313
    const/4 v2, -0x1

    .line 1314
    const/4 v1, 0x0

    goto :goto_0

    .line 1323
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2700(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v0

    .line 1324
    .restart local v0    # "code":I
    if-ltz v0, :cond_1

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1325
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/AppPcService$PermCheck;->saveLastCheckResult(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1334
    const-string v0, "Security_PermControlService"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->setStatusBarEnableStatus(Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1338
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->releaseLock()V

    .line 1339
    return-void
.end method
