.class public Lcom/lenovo/settings/pluginItem/PluginItemInfo;
.super Ljava/lang/Object;
.source "PluginItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;,
        Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "lenovo-class"

.field private static final KEY_VERSION:Ljava/lang/String; = "lenovo-version"

.field private static final TAG:Ljava/lang/String; = "Plugin"

.field private static sPathClassLoaderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPresetPlugin:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mClassContext:Landroid/content/Context;

.field private mClassLoader:Ldalvik/system/PathClassLoader;

.field protected mClassName:Ljava/lang/String;

.field protected mIntentDescription:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mParentKey:Ljava/lang/String;

.field protected mPluginDependency:Ljava/lang/String;

.field protected mPosition:F

.field private mPreference:Landroid/preference/Preference;

.field private mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

.field protected mSourceDir:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    .line 340
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "personal_hotspot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "mobile_network_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "ringtone_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "lock_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "notification_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "call_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "power_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "multi_sim_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "lepower_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "applications_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    .line 67
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 68
    .local v0, "metaData":Landroid/os/Bundle;
    const-string v1, "lenovo-class"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    .line 69
    const-string v1, "lenovo-version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    .line 138
    :goto_0
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;

    .end local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    invoke-direct {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;-><init>(Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;)V

    .line 140
    .restart local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    .line 146
    iput-object v3, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    .line 147
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    .line 154
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v1

    .line 135
    :cond_2
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    check-cast v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;

    .restart local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    .line 151
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_1
.end method

.method public static isPresetPlugin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pluginKey"    # Ljava/lang/String;

    .prologue
    .line 353
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadObject()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    .line 293
    .local v4, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_0

    .line 294
    const-string v8, "Plugin"

    const-string v9, "<loadObject> class is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 332
    :goto_0
    return-object v5

    .line 299
    :cond_0
    const/4 v5, 0x0

    .line 301
    .local v5, "obj":Ljava/lang/Object;
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 302
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 315
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_1
    if-eqz v5, :cond_1

    instance-of v8, v5, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-eqz v8, :cond_1

    move-object v6, v5

    .line 316
    check-cast v6, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 317
    .local v6, "settingItem":Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 318
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getParentKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 319
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPosition()F

    move-result v7

    iput v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 321
    iput-object v6, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 322
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getDependencyPluginKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    goto :goto_0

    .line 303
    .end local v6    # "settingItem":Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Plugin"

    const-string v9, "<createObject> constructor with context not success."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto :goto_1

    .line 307
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e1":Ljava/lang/InstantiationException;
    const-string v8, "Plugin"

    const-string v9, "<createObject> localClass.newInstance InstantiationException."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 309
    .end local v2    # "e1":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 310
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    const-string v8, "Plugin"

    const-string v9, "<createObject> localClass.newInstance IllegalAccessException."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_1
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 325
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 326
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 327
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 328
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 329
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mIntentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 235
    const-string v3, "Plugin"

    const-string v4, "<loadClass> className is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 249
    :goto_0
    return-object v1

    .line 239
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<loadClass> Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 244
    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Plugin"

    const-string v4, "<loadClass> Class.forName, IllegalArgumentException."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 247
    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    return v0
.end method

.method public getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f040074

    .line 261
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 266
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 271
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    const v1, 0x7f0400a5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 275
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 283
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    goto :goto_0

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    const v1, 0x7f04006c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1
.end method

.method public getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    return-object v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public initPlugin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;Z)V

    .line 91
    return-void
.end method

.method public initPlugin(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 102
    if-nez p2, :cond_0

    :try_start_0
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 107
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :goto_2
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 121
    const-string v1, "Plugin"

    const-string v2, "<Plugin> sourceDir is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Plugin> package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    goto :goto_1

    .line 116
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 117
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Plugin"

    const-string v2, "<Plugin> getApplicationInfo failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 125
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 127
    invoke-direct {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->loadObject()Ljava/lang/Object;

    goto :goto_0
.end method

.method public isPluginValid()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 77
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 78
    return-void
.end method

.method public releaseForHeaderPluginItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 83
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 84
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 85
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 87
    :cond_0
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependency"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setIntentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentDes"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mIntentDescription:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setParentKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .param p1, "newPosition"    # F

    .prologue
    .line 178
    iput p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 179
    return-void
.end method

.method public setSourceDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    .line 203
    return-void
.end method
