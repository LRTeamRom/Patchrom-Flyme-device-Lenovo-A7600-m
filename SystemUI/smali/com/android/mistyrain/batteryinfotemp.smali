.class public Lcom/android/mistyrain/batteryinfotemp;
.super Landroid/widget/TextView;
.source "batteryinfotemp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;,
        Lcom/android/mistyrain/batteryinfotemp$BatteryischangeReceive;
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
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mistyrain/batteryinfotemp;->isshow:Z

    .line 27
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfotemp;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 35
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 36
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfotemp;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;-><init>(Lcom/android/mistyrain/batteryinfotemp;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfotemp;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/mistyrain/batteryinfotemp$BatteryischangeReceive;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/batteryinfotemp$BatteryischangeReceive;-><init>(Lcom/android/mistyrain/batteryinfotemp;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "batterychangge"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfotemp;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 39
    const-string v2, "batteryshow"

    .line 38
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "i":I
    if-ne v0, v5, :cond_37

    .line 41
    iput-boolean v5, p0, Lcom/android/mistyrain/batteryinfotemp;->isshow:Z

    .line 46
    :goto_36
    return-void

    .line 44
    :cond_37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mistyrain/batteryinfotemp;->isshow:Z

    goto :goto_36
.end method
