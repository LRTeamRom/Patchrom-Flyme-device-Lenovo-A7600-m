.class final Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;
.super Landroid/os/Handler;
.source "PluginApkInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->installPluginApks(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mProDialog:Landroid/app/ProgressDialog;

.field final synthetic val$totalApk:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$totalApk:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$mProDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$totalApk:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "path":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->installApk(Landroid/content/Context;Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->access$000(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$totalApk:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$1;->val$mProDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 113
    :cond_1
    return-void

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
