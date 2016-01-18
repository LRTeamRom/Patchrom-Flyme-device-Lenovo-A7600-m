.class public Lcom/android/mistyrain/FlashLight;
.super Ljava/lang/Object;
.source "FlashLight.java"


# instance fields
.field m_Camera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public CloseLightOff()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 31
    iget-object v0, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 32
    iget-object v0, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    .line 35
    :cond_11
    return-void
.end method

.method public OpenLightOn()V
    .registers 4

    .prologue
    .line 13
    iget-object v1, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_a

    .line 15
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    .line 18
    :cond_a
    iget-object v1, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 19
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 21
    iget-object v1, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/mistyrain/FlashLight$1;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/FlashLight$1;-><init>(Lcom/android/mistyrain/FlashLight;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 25
    iget-object v1, p0, Lcom/android/mistyrain/FlashLight;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 26
    return-void
.end method
