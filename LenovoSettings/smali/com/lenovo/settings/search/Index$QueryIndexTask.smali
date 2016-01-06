.class Lcom/lenovo/settings/search/Index$QueryIndexTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/Index;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/search/Index;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p2, "x1"    # Lcom/lenovo/settings/search/Index$1;

    .prologue
    .line 1265
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/Index$QueryIndexTask;-><init>(Lcom/lenovo/settings/search/Index;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1265
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index$QueryIndexTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 1281
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.lenovo.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1282
    .local v5, "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1285
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1286
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1287
    .local v9, "selfPkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 1288
    .local v10, "size":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v10, :cond_3

    .line 1289
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1290
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {v11, v4}, Lcom/lenovo/settings/search/Index;->access$600(Lcom/lenovo/settings/search/Index;Landroid/content/pm/ResolveInfo;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1288
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 1294
    .local v1, "authority":Ljava/lang/String;
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 1297
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mBaseAuthority:Ljava/lang/String;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$700(Lcom/lenovo/settings/search/Index;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v2

    .line 1299
    .local v2, "context":Landroid/content/Context;
    :goto_2
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v2, v8, v1}, Lcom/lenovo/settings/search/Index;->access$800(Lcom/lenovo/settings/search/Index;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1300
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v2, v8, v1}, Lcom/lenovo/settings/search/Index;->access$900(Lcom/lenovo/settings/search/Index;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1308
    .end local v2    # "context":Landroid/content/Context;
    :goto_3
    :try_start_1
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1309
    const-string v11, "Index"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Index from provider: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " completed. Force stop process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1313
    :catch_0
    move-exception v3

    .line 1314
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1297
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_2

    .line 1303
    :catch_1
    move-exception v3

    .line 1304
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1318
    .end local v1    # "authority":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    return-object v11
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1265
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index$QueryIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->updateInternal()V
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$1000(Lcom/lenovo/settings/search/Index;)V

    .line 1324
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1325
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$300(Lcom/lenovo/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1270
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1272
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1274
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1275
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.keyguard.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1277
    return-void
.end method
