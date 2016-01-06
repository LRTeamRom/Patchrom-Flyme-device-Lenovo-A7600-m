.class public Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;
.super Ljava/lang/Object;
.source "PluginApkInstall.java"


# static fields
.field private static final IS_ENG:Z

.field private static final TAG:Ljava/lang/String; = "PluginApkInstall"

.field private static final TYPE_INTEL:I = 0x2

.field private static final TYPE_MTK:I = 0x0

.field private static final TYPE_QCM:I = 0x1

.field private static final mPushMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlatformType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->sPlatformType:I

    .line 28
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->IS_ENG:Z

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    .line 33
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "QC_RoamSettings.apk"

    const-string v2, "system/app/RoamSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "QC_SimSettings.apk"

    const-string v2, "system/app/SimSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "MTK_GeminiSimSettings.apk"

    const-string v2, "system/priv-app/GeminiSimSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "QC_MobileNetworkSettings.apk"

    const-string v2, "system/app/MobileNetworkSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "MTK_SimSettings.apk"

    const-string v2, "system/priv-app/SimSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "QC_TeleService_signed.apk"

    const-string v2, "system/priv-app/TeleService.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "COM_SchedulePowerOnOff.apk"

    const-string v2, "system/app/SchedulePowerOnOff.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "QC_LenovoLightSettings.apk"

    const-string v2, "system/app/LenovoLightSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "MTK_LenovoLightSettings.apk"

    const-string v2, "system/app/LenovoLightSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "COM_WideTouch.apk"

    const-string v2, "system/priv-app/WideTouch.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "COM_TetherSettings.apk"

    const-string v2, "system/app/TetherSettings.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "COM_LenovoThemeCenter.apk"

    const-string v2, "system/priv-app/LenovoThemeCenter.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    const-string v1, "COM_PowerManager.apk"

    const-string v2, "system/priv-app/PowerManager.apk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->installApk(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->copyAssertFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static copyAssertFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 164
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 170
    .local v6, "parentFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_0

    .line 195
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "parentFile":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 173
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "parentFile":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 179
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_3

    .line 181
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 182
    .local v5, "in":Ljava/io/InputStream;
    const/16 v10, 0x100

    new-array v0, v10, [B

    .line 184
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "size":I
    if-lez v8, :cond_2

    .line 185
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 192
    .end local v0    # "buffer":[B
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "size":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 193
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "parentFile":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "parentFile":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "size":I
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 188
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 189
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "size":I
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v3, v4

    .line 194
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 192
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "parentFile":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static final getPlatformType()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->sPlatformType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 53
    const-string v0, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-static {v0}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->isClassExisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    sput v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->sPlatformType:I

    .line 61
    :cond_0
    :goto_0
    sget v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->sPlatformType:I

    return v0

    .line 55
    :cond_1
    const-string v0, "com.mediatek.telephony.TelephonyManagerEx"

    invoke-static {v0}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->isClassExisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->sPlatformType:I

    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->sPlatformType:I

    goto :goto_0
.end method

.method private static installApk(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public static installPluginApks(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v6, 0x0

    .line 76
    .local v6, "startSting":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->getPlatformType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 90
    :goto_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 91
    .local v3, "mProDialog":Landroid/app/ProgressDialog;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    const-string v8, "installing"

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 94
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, "totalApk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;

    invoke-direct {v1, v7, p0, v3}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    .line 116
    .local v1, "handler":Landroid/os/Handler;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "names":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 118
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_2

    .line 119
    aget-object v4, v5, v2

    .line 120
    .local v4, "name":Ljava/lang/String;
    const-string v8, "PluginApkInstall"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "temp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v8, ".apk"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "COM_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 124
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i":I
    .end local v3    # "mProDialog":Landroid/app/ProgressDialog;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    .end local v7    # "totalApk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_0
    const-string v6, "QC_"

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    const-string v6, "MTK_"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_2
    const-string v6, "INTEL_"

    goto :goto_0

    .line 128
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "i":I
    .restart local v3    # "mProDialog":Landroid/app/ProgressDialog;
    .restart local v5    # "names":[Ljava/lang/String;
    .restart local v7    # "totalApk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v2, 0x0

    :goto_2
    :try_start_1
    array-length v8, v5

    if-ge v2, v8, :cond_5

    .line 129
    aget-object v4, v5, v2

    .line 130
    .restart local v4    # "name":Ljava/lang/String;
    const-string v8, ".apk"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "COM_"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;

    invoke-direct {v9, p0, v4, v1}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    .end local v2    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    return-void

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
