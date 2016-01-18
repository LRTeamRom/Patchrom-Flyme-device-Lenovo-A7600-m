.class public Lcom/android/mistyrain/batteryinfohealth;
.super Landroid/widget/TextView;
.source "batteryinfohealth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/batteryinfohealth$BatteryReceive;,
        Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;
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
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mistyrain/batteryinfohealth;->isshow:Z

    .line 26
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfohealth;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 34
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 35
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfohealth;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/mistyrain/batteryinfohealth$BatteryReceive;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/batteryinfohealth$BatteryReceive;-><init>(Lcom/android/mistyrain/batteryinfohealth;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfohealth;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;-><init>(Lcom/android/mistyrain/batteryinfohealth;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "batterychangge"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/android/mistyrain/batteryinfohealth;->context:Landroid/content/Context;

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
    iput-boolean v5, p0, Lcom/android/mistyrain/batteryinfohealth;->isshow:Z

    .line 46
    :goto_36
    return-void

    .line 44
    :cond_37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mistyrain/batteryinfohealth;->isshow:Z

    goto :goto_36
.end method

.method public status(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 79
    const-string v0, "\u672a\u77e5"

    .line 80
    .local v0, "status":Ljava/lang/String;
    packed-switch p1, :pswitch_data_16

    .line 102
    :goto_5
    return-object v0

    .line 82
    :pswitch_6
    const-string v0, "\u826f\u597d"

    .line 83
    goto :goto_5

    .line 86
    :pswitch_9
    const-string v0, "\u8fc7\u70ed"

    .line 87
    goto :goto_5

    .line 90
    :pswitch_c
    const-string v0, "\u6ca1\u7535"

    .line 91
    goto :goto_5

    .line 94
    :pswitch_f
    const-string v0, "\u8fc7\u7535\u538b"

    .line 95
    goto :goto_5

    .line 97
    :pswitch_12
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    goto :goto_5

    .line 80
    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method
