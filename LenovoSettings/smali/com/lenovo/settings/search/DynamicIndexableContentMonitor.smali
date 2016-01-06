.class public final Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DynamicIndexableContentMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;
    }
.end annotation


# static fields
.field private static final DELAY_PROCESS_PACKAGE_CHANGE:J = 0x7d0L

.field private static final MSG_PACKAGE_AVAILABLE:I = 0x1

.field private static final MSG_PACKAGE_UNAVAILABLE:I = 0x2


# instance fields
.field private final mAccessibilityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFeatureIme:Z

.field private mHasFeaturePrinting:Z

.field private final mImeServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrintServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserDictionaryContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$1;-><init>(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;

    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;-><init>(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->handlePackageAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->handlePackageUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method private static getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    return-object v0
.end method

.method private static getPrintServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method private handlePackageAvailable(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 228
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 229
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 230
    invoke-static {p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 231
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "accessibilitySvcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v5

    const-class v6, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 239
    .end local v0    # "accessibilitySvcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    invoke-static {p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->getPrintServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 241
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 242
    .local v4, "printSvcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 243
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v5

    const-class v6, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 249
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "printSvcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iget-boolean v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    invoke-static {p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 251
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, "imeSvcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 253
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v5, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v5

    const-class v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 258
    .end local v1    # "imeSvcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private handlePackageUnavailable(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 261
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 262
    .local v0, "accessibilityIndex":I
    if-ltz v0, :cond_0

    .line 263
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 264
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 268
    :cond_0
    iget-boolean v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    if-eqz v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 270
    .local v2, "printIndex":I
    if-ltz v2, :cond_1

    .line 271
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 277
    .end local v2    # "printIndex":I
    :cond_1
    iget-boolean v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 279
    .local v1, "imeIndex":I
    if-ltz v1, :cond_2

    .line 280
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 281
    iget-object v3, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 285
    .end local v1    # "imeIndex":I
    :cond_2
    return-void
.end method

.method private postMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 209
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    const/4 v2, 0x1

    .line 218
    iget-object v0, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 220
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->onInputDeviceChanged(I)V

    .line 214
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    .line 183
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 188
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    .line 189
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "state":I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 199
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->postMessage(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.software.print"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "android.software.input_methods"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "accessibility"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    .line 103
    .local v5, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v8

    .line 105
    .local v8, "accessibilityServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 106
    .local v7, "accessibilityServiceCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 107
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 108
    .local v6, "accessibilityService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 109
    .local v18, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    .end local v6    # "accessibilityService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeaturePrinting:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "print"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/print/PrintManager;

    .line 118
    .local v15, "printManager":Landroid/print/PrintManager;
    invoke-virtual {v15}, Landroid/print/PrintManager;->getInstalledPrintServices()Ljava/util/List;

    move-result-object v17

    .line 119
    .local v17, "printServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    .line 120
    .local v19, "serviceCount":I
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v9, v0, :cond_5

    .line 121
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/printservice/PrintServiceInfo;

    .line 122
    .local v16, "printService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 123
    .restart local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 120
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 126
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 131
    .end local v15    # "printManager":Landroid/print/PrintManager;
    .end local v16    # "printService":Landroid/printservice/PrintServiceInfo;
    .end local v17    # "printServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v18    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v19    # "serviceCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "input_method"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    .local v10, "imeManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v14

    .line 135
    .local v14, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 136
    .local v13, "inputMethodCount":I
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v13, :cond_7

    .line 137
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 138
    .local v12, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v20

    .line 139
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v20, :cond_6

    .line 136
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 146
    .end local v12    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v20    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    .end local v10    # "imeManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "inputMethodCount":I
    .end local v14    # "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "input"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/input/InputManager;

    .line 153
    .local v11, "inputManager":Landroid/hardware/input/InputManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 156
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 157
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 167
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 169
    iget-boolean v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mHasFeatureIme:Z

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mUserDictionaryContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 175
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mPrintServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 176
    iget-object v1, p0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->mImeServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    return-void

    .line 162
    .end local v0    # "inputManager":Landroid/hardware/input/InputManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
