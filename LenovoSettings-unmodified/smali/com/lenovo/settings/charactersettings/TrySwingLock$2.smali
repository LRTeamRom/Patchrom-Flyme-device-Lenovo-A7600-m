.class Lcom/lenovo/settings/charactersettings/TrySwingLock$2;
.super Ljava/lang/Object;
.source "TrySwingLock.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/charactersettings/TrySwingLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/charactersettings/TrySwingLock;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/charactersettings/TrySwingLock;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/TrySwingLock$2;->this$0:Lcom/lenovo/settings/charactersettings/TrySwingLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 334
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 331
    return-void
.end method
