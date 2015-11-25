.class final Lcom/android/server/display/effect/DisplayEffectService$BinderService;
.super Landroid/app/IDisplayEffectManager$Stub;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-direct {p0}, Landroid/app/IDisplayEffectManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;Lcom/android/server/display/effect/DisplayEffectService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p2, "x1"    # Lcom/android/server/display/effect/DisplayEffectService$1;

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;-><init>(Lcom/android/server/display/effect/DisplayEffectService;)V

    return-void
.end method

.method private dumpVaules([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 318
    if-nez p1, :cond_1

    .line 319
    const/4 v3, 0x0

    .line 329
    :cond_0
    return-object v3

    .line 322
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 324
    .local v3, "result":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 325
    .local v4, "string":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$000(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump DisplayEffect from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void

    .line 289
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedMode = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedMode()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->dumpVaules([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode_settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedDisplayEffect = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->dumpVaules([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 301
    const-string v1, "null"

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedMaxLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedMaxLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 308
    const/4 v0, 0x0

    :goto_1
    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 309
    const-string v1, "null"

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/effect/DisplayEffectService;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getCurrentLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCurrentLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->getCurrentLevelInternal(I)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$000(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 370
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "display_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, "displayMode":I
    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedDisplayEffectInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I

    move-result v0

    return v0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedModeInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayEffectLevel(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    const-string v1, "setDisplayEffectLevel()"

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$200(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const/4 v0, -0x1

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I

    move-result v0

    goto :goto_0
.end method

.method public setModeFromSettings(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    const-string v1, "setModeFromSettings()"

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$200(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkMode(I)Z
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$300(Lcom/android/server/display/effect/DisplayEffectService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, -0x1

    .line 359
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSettingsInternal(I)I

    move-result v0

    goto :goto_0
.end method

.method public setModeFromSys(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkMode(I)Z
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$300(Lcom/android/server/display/effect/DisplayEffectService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    const/4 v0, -0x1

    .line 366
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSysInternal(I)I

    move-result v0

    goto :goto_0
.end method
