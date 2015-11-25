.class public Lcom/mediatek/gesture/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gesture/Gesture$HandPose;,
        Lcom/mediatek/gesture/Gesture$HandDetectionEvent;,
        Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gesture_Framework"

.field private static sGesture:Lcom/mediatek/gesture/Gesture;


# instance fields
.field private mHandDetectionListenerr:Lcom/mediatek/gesture/Gesture$HandDetectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    const-string v0, "jni_gesture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-direct {p0, p0}, Lcom/mediatek/gesture/Gesture;->native_setup(Lcom/mediatek/gesture/Gesture;)V

    .line 134
    return-void
.end method

.method public static createGesture()Lcom/mediatek/gesture/Gesture;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/mediatek/gesture/Gesture;->sGesture:Lcom/mediatek/gesture/Gesture;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/mediatek/gesture/Gesture;

    invoke-direct {v0}, Lcom/mediatek/gesture/Gesture;-><init>()V

    sput-object v0, Lcom/mediatek/gesture/Gesture;->sGesture:Lcom/mediatek/gesture/Gesture;

    .line 144
    :cond_0
    sget-object v0, Lcom/mediatek/gesture/Gesture;->sGesture:Lcom/mediatek/gesture/Gesture;

    return-object v0
.end method

.method private static native native_addGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
.end method

.method private static native native_removeGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
.end method

.method private native native_setup(Lcom/mediatek/gesture/Gesture;)V
.end method


# virtual methods
.method public addHandDetectionListener(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    .param p2, "pose"    # Lcom/mediatek/gesture/Gesture$HandPose;

    .prologue
    .line 291
    invoke-static {p1, p2}, Lcom/mediatek/gesture/Gesture;->native_addGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V

    .line 292
    return-void
.end method

.method public removeHandDetectionListener(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/gesture/Gesture$HandDetectionListener;
    .param p2, "pose"    # Lcom/mediatek/gesture/Gesture$HandPose;

    .prologue
    .line 300
    invoke-static {p1, p2}, Lcom/mediatek/gesture/Gesture;->native_removeGesture(Lcom/mediatek/gesture/Gesture$HandDetectionListener;Lcom/mediatek/gesture/Gesture$HandPose;)V

    .line 301
    return-void
.end method
