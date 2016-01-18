.class public Lcom/android/mistyrain/shakeFramelayout;
.super Landroid/widget/FrameLayout;
.source "shakeFramelayout.java"


# instance fields
.field private Reboot_item:[Ljava/lang/String;

.field bit:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field i:I

.field isopenlight:Z

.field item:I

.field m_Camera:Landroid/hardware/Camera;

.field packgeactivity:Ljava/lang/String;

.field packgename:Ljava/lang/String;

.field startitem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Lcom/android/mistyrain/shakeFramelayout;->startitem:I

    .line 36
    iput-boolean v2, p0, Lcom/android/mistyrain/shakeFramelayout;->isopenlight:Z

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5173\u673a"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u91cd\u542f\u624b\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8fdb\u5165recovery\u6a21\u5f0f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8fdb\u5165bootloader\u6a21\u5f0f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->Reboot_item:[Ljava/lang/String;

    .line 43
    const-string v0, "com.meizu.media.camera"

    iput-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->packgename:Ljava/lang/String;

    .line 44
    const-string v0, "com.meizu.media.camera.CameraActivity"

    iput-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->packgeactivity:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private CloseLightOff()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 341
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 342
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    .line 345
    :cond_11
    return-void
.end method

.method private OpenLightOn()V
    .registers 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_a

    .line 321
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    .line 324
    :cond_a
    iget-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 325
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 327
    iget-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/mistyrain/shakeFramelayout$2;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/shakeFramelayout$2;-><init>(Lcom/android/mistyrain/shakeFramelayout;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 331
    iget-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 332
    return-void
.end method

.method static synthetic access$0(Lcom/android/mistyrain/shakeFramelayout;)V
    .registers 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/mistyrain/shakeFramelayout;->OpenLightOn()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/mistyrain/shakeFramelayout;)V
    .registers 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/mistyrain/shakeFramelayout;->CloseLightOff()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/mistyrain/shakeFramelayout;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->Reboot_item:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 53
    new-instance v0, Lcom/android/mistyrain/ShakeListener;

    iget-object v1, p0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mistyrain/ShakeListener;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "shake":Lcom/android/mistyrain/ShakeListener;
    new-instance v1, Lcom/android/mistyrain/shakeFramelayout$1;

    invoke-direct {v1, p0}, Lcom/android/mistyrain/shakeFramelayout$1;-><init>(Lcom/android/mistyrain/shakeFramelayout;)V

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/ShakeListener;->setOnShakeListener(Lcom/android/mistyrain/ShakeListener$OnShakeListener;)V

    .line 312
    return-void
.end method

.method public showtext(ILjava/lang/String;)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 348
    if-nez p1, :cond_1c

    .line 349
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u5173\u95ed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 355
    :goto_1b
    return-void

    .line 352
    :cond_1c
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method
