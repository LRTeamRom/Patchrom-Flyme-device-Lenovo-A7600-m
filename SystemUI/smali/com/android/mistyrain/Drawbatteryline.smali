.class public Lcom/android/mistyrain/Drawbatteryline;
.super Landroid/view/View;
.source "Drawbatteryline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;
    }
.end annotation


# instance fields
.field Colorvalue:I

.field Linelength:I

.field Linewidth:F

.field context:Landroid/content/Context;

.field p:Landroid/graphics/Paint;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v5, p0, Lcom/android/mistyrain/Drawbatteryline;->Linelength:I

    .line 29
    iput-object p1, p0, Lcom/android/mistyrain/Drawbatteryline;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "mistyrain.showbatteryline"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v3, "mistyrain.batterylinechange"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    new-instance v3, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;

    invoke-direct {v3, p0}, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;-><init>(Lcom/android/mistyrain/Drawbatteryline;)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    check-cast v2, Landroid/view/WindowManager;

    .line 39
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/mistyrain/Drawbatteryline;->p:Landroid/graphics/Paint;

    .line 40
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/mistyrain/Drawbatteryline;->width:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_batteryline_isshow"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, "isshow":I
    if-nez v1, :cond_4c

    .line 47
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/mistyrain/Drawbatteryline;->setVisibility(I)V

    .line 51
    :goto_4b
    return-void

    .line 49
    :cond_4c
    invoke-virtual {p0, v5}, Lcom/android/mistyrain/Drawbatteryline;->setVisibility(I)V

    goto :goto_4b
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mistyrain/Drawbatteryline;->setLineproperty()V

    .line 61
    iget v0, p0, Lcom/android/mistyrain/Drawbatteryline;->Linelength:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/mistyrain/Drawbatteryline;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    return-void
.end method

.method public setLineproperty()V
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mistyrain/Drawbatteryline;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_batteryline_width"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/mistyrain/Drawbatteryline;->Linewidth:F

    .line 114
    iget-object v0, p0, Lcom/android/mistyrain/Drawbatteryline;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_batteryline_color"

    const v2, -0xff0100

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mistyrain/Drawbatteryline;->Colorvalue:I

    .line 117
    iget-object v0, p0, Lcom/android/mistyrain/Drawbatteryline;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/mistyrain/Drawbatteryline;->Colorvalue:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/android/mistyrain/Drawbatteryline;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/mistyrain/Drawbatteryline;->Linewidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    return-void
.end method
