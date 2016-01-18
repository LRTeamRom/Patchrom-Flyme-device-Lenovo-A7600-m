.class public Lcom/android/mistyrain/screenshot;
.super Ljava/lang/Object;
.source "screenshot.java"


# instance fields
.field m:Landroid/content/Context;

.field public picturename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/mistyrain/screenshot;->m:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public InitNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "screenshot"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mistyrain/screenshot;->picturename:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/android/mistyrain/screenshot;->m:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 53
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/mistyrain/screenshot;->m:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v2, "\u5df2\u6293\u53d6\u5c4f\u5e55\u622a\u56fe"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 56
    const-string v3, "\u89e6\u6478\u53ef\u67e5\u770b\u60a8\u7684\u5c4f\u5e55\u622a\u56fe"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 57
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/mistyrain/screenshot;->getDefalutIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 59
    const-string v3, "\u622a\u5c4f\u6210\u529f"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 64
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 66
    const v3, 0x10800a4

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    const/16 v2, 0x7b

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 69
    return-void
.end method

.method public ScreenShot()V
    .registers 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/system/bin/screencap -p "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mistyrain/screenshot;->picturename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/mistyrain/screenshot;->m:Landroid/content/Context;

    const-string v1, "\u622a\u5c4f\u6210\u529f\uff0c\u8bf7\u70b9\u51fb\u4e0b\u62c9\u901a\u77e5\u680f\u67e5\u770b\u622a\u56fe"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method

.method public getDefalutIntent(I)Landroid/app/PendingIntent;
    .registers 7
    .param p1, "flags"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Pictures/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mistyrain/screenshot;->picturename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/android/mistyrain/screenshot;->m:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 83
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method public saveMyBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 9
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitName"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/Pictures/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 95
    .local v2, "fOut":Ljava/io/FileOutputStream;
    :try_start_2b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_3f

    .line 96
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .local v3, "fOut":Ljava/io/FileOutputStream;
    :try_start_30
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_37} :catch_4e

    move-object v2, v3

    .line 102
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_44

    .line 107
    :goto_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_49

    .line 111
    :goto_3e
    return-void

    .line 97
    :catch_3f
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_40
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_38

    .line 103
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_44
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    :catch_4e
    move-exception v0

    move-object v2, v3

    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_40
.end method
