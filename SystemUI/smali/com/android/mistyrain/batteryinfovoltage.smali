.class public Lcom/android/mistyrain/batteryinfovoltage;
.super Landroid/widget/TextView;
.source "batteryinfovoltage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;,
        Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field health:I

.field isshow:Z

.field mtemperature:I

.field mvoltage:I

.field status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mistyrain/batteryinfovoltage;->isshow:Z

    .line 29
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfovoltage;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 37
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 38
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfovoltage;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;-><init>(Lcom/android/mistyrain/batteryinfovoltage;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfovoltage;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;-><init>(Lcom/android/mistyrain/batteryinfovoltage;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "batterychangge"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfovoltage;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 41
    const-string v2, "batteryshow"

    .line 40
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "i":I
    if-ne v0, v5, :cond_37

    .line 43
    iput-boolean v5, p0, Lcom/android/mistyrain/batteryinfovoltage;->isshow:Z

    .line 48
    :goto_36
    return-void

    .line 46
    :cond_37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mistyrain/batteryinfovoltage;->isshow:Z

    goto :goto_36
.end method
