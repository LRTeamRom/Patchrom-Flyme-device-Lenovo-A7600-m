.class public Lcom/android/mistyrain/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field public static SPEED_SHRESHOLD:I

.field public static UPTATE_INTERVAL_TIME:I


# instance fields
.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private onShakeListener:Lcom/android/mistyrain/ShakeListener$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/16 v0, 0x6e

    sput v0, Lcom/android/mistyrain/ShakeListener;->UPTATE_INTERVAL_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/mistyrain/ShakeListener;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/android/mistyrain/ShakeListener;->start()V

    .line 39
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 73
    .local v1, "currentUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/mistyrain/ShakeListener;->lastUpdateTime:J

    sub-long v8, v1, v13

    .line 75
    .local v8, "timeInterval":J
    sget v13, Lcom/android/mistyrain/ShakeListener;->UPTATE_INTERVAL_TIME:I

    int-to-long v13, v13

    cmp-long v13, v8, v13

    if-gez v13, :cond_12

    .line 102
    :cond_11
    :goto_11
    return-void

    .line 78
    :cond_12
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mistyrain/ShakeListener;->lastUpdateTime:J

    .line 81
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 82
    .local v10, "x":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 83
    .local v11, "y":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 86
    .local v12, "z":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mistyrain/ShakeListener;->lastX:F

    sub-float v3, v10, v13

    .line 87
    .local v3, "deltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mistyrain/ShakeListener;->lastY:F

    sub-float v4, v11, v13

    .line 88
    .local v4, "deltaY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mistyrain/ShakeListener;->lastZ:F

    sub-float v5, v12, v13

    .line 91
    .local v5, "deltaZ":F
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/mistyrain/ShakeListener;->lastX:F

    .line 92
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/mistyrain/ShakeListener;->lastY:F

    .line 93
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/mistyrain/ShakeListener;->lastZ:F

    .line 95
    mul-float v13, v3, v3

    mul-float v14, v4, v4

    add-float/2addr v13, v14

    .line 96
    mul-float v14, v5, v5

    .line 95
    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 97
    long-to-double v15, v8

    .line 95
    div-double/2addr v13, v15

    .line 97
    const-wide v15, 0x40c3880000000000L    # 10000.0

    .line 95
    mul-double v6, v13, v15

    .line 99
    .local v6, "speed":D
    sget v13, Lcom/android/mistyrain/ShakeListener;->SPEED_SHRESHOLD:I

    int-to-double v13, v13

    cmpl-double v13, v6, v13

    if-ltz v13, :cond_11

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mistyrain/ShakeListener;->onShakeListener:Lcom/android/mistyrain/ShakeListener$OnShakeListener;

    invoke-interface {v13}, Lcom/android/mistyrain/ShakeListener$OnShakeListener;->onShake()V

    goto :goto_11
.end method

.method public setOnShakeListener(Lcom/android/mistyrain/ShakeListener$OnShakeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/mistyrain/ShakeListener$OnShakeListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mistyrain/ShakeListener;->onShakeListener:Lcom/android/mistyrain/ShakeListener$OnShakeListener;

    .line 66
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 44
    iget-object v0, p0, Lcom/android/mistyrain/ShakeListener;->mContext:Landroid/content/Context;

    .line 45
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 44
    iput-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 46
    iget-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_19

    .line 48
    iget-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 51
    :cond_19
    iget-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_24

    .line 52
    iget-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mistyrain/ShakeListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 56
    :cond_24
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mistyrain/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 61
    return-void
.end method
