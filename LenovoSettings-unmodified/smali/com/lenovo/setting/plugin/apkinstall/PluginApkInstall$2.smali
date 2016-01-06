.class final Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;
.super Ljava/lang/Object;
.source "PluginApkInstall.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 135
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$name:Ljava/lang/String;

    # invokes: Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->copyAssertFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, "successPush":Z
    # getter for: Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->mPushMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall;->access$200()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "pusPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/setting/plugin/apkinstall/RootExecUtils;->remountSystem(Landroid/content/Context;)Z

    move-result v3

    .line 140
    if-eqz v3, :cond_0

    .line 141
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$context:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/lenovo/setting/plugin/apkinstall/RootExecUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 144
    :cond_0
    if-eqz v3, :cond_1

    .line 145
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    :goto_0
    return-void

    .line 148
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 149
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/lenovo/setting/plugin/apkinstall/PluginApkInstall$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
