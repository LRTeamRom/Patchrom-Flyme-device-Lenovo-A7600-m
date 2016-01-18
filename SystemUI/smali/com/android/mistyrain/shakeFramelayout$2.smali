.class Lcom/android/mistyrain/shakeFramelayout$2;
.super Ljava/lang/Object;
.source "shakeFramelayout.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/shakeFramelayout;->OpenLightOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/shakeFramelayout;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/shakeFramelayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/shakeFramelayout$2;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 329
    return-void
.end method
