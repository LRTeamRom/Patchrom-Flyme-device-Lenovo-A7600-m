.class Lcom/android/mistyrain/Doubleclick$6;
.super Ljava/lang/Object;
.source "Doubleclick.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/Doubleclick;->OpenLightOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Doubleclick;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Doubleclick;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/Doubleclick$6;->this$0:Lcom/android/mistyrain/Doubleclick;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 499
    return-void
.end method
