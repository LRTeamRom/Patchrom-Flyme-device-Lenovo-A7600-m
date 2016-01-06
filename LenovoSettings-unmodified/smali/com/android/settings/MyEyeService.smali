.class public Lcom/android/settings/MyEyeService;
.super Landroid/app/Service;
.source "MyEyeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ADD_MYEYE_VIEW:Ljava/lang/String; = "com.android.settings.myeyeservice.addview"

.field public static final REMOVE_MYEYE_VIEW:Ljava/lang/String; = "com.android.settings.myeyeservice.rmview"

.field public static final TAG:Ljava/lang/String; = "MyEyeService"

.field public static final TIP_SECURE_BUTTON:Ljava/lang/String; = "com.android.settings.myeyeservice.monitor"


# instance fields
.field private mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MyEyeService;->mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MyEyeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MyEyeService;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/MyEyeService;->showNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/MyEyeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MyEyeService;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/MyEyeService;->cancelNotification()V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 126
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/MyEyeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 128
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0xa7dd0c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 129
    return-void
.end method

.method private createFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.settings.myeyeservice.addview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.android.settings.myeyeservice.rmview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "com.android.settings.myeyeservice.monitor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    return-object v0
.end method

.method private showNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 104
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/settings/MyEyeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 107
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    const v6, 0x7f020067

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 110
    .local v4, "notification":Landroid/app/Notification;
    const/16 v6, 0x10

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 111
    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 113
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.settings.myeyeservice.rmview"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    const v6, 0x7f0a035f

    invoke-virtual {p0, v6}, Lcom/android/settings/MyEyeService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    const v6, 0x7f0a0360

    invoke-virtual {p0, v6}, Lcom/android/settings/MyEyeService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "contentText":Ljava/lang/CharSequence;
    invoke-static {p0, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 119
    .local v0, "contentItent":Landroid/app/PendingIntent;
    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 122
    const v6, 0xa7dd0c

    invoke-virtual {v5, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "MyEyeService"

    const-string v1, " onCreate register receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;-><init>(Lcom/android/settings/MyEyeService;)V

    iput-object v0, p0, Lcom/android/settings/MyEyeService;->mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    .line 35
    iget-object v0, p0, Lcom/android/settings/MyEyeService;->mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings/MyEyeService;->createFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MyEyeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 41
    const-string v1, "MyEyeService"

    const-string v2, " onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/android/settings/MyEyeService;->mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settings/MyEyeService;->mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/MyEyeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/MyEyeService;->mBroadcastReceiver:Lcom/android/settings/MyEyeService$MyEyeBroadcastReceiver;

    .line 47
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/MyEyeService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/MyEyeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/settings/MyEyeService;->setForeground(Z)V

    .line 56
    const-string v1, "MyEyeService"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/MyEyeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sys.night_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "i":I
    if-ne v0, v4, :cond_0

    .line 60
    invoke-static {p0}, Lcom/android/settings/MyEyeWindowManager;->addEyeView(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/MyEyeService;->showNotification()V

    .line 66
    :goto_0
    return v4

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/android/settings/MyEyeWindowManager;->removeEyeView(Landroid/content/Context;)V

    goto :goto_0
.end method
