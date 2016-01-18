.class public Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;
.super Landroid/content/BroadcastReceiver;
.source "Drawbatteryline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/Drawbatteryline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryBroadcastReciver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Drawbatteryline;


# direct methods
.method public constructor <init>(Lcom/android/mistyrain/Drawbatteryline;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 72
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "level":I
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    iget-object v3, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    iget v3, v3, Lcom/android/mistyrain/Drawbatteryline;->width:I

    int-to-double v3, v3

    int-to-double v5, v1

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Lcom/android/mistyrain/Drawbatteryline;->Linelength:I

    .line 78
    const/16 v2, 0xf

    if-gt v1, v2, :cond_2f

    .line 79
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    iget-object v2, v2, Lcom/android/mistyrain/Drawbatteryline;->p:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    :cond_2f
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    invoke-virtual {v2}, Lcom/android/mistyrain/Drawbatteryline;->invalidate()V

    .line 104
    .end local v1    # "level":I
    :cond_34
    :goto_34
    return-void

    .line 88
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mistyrain.showbatteryline"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 90
    const-string v2, "showbatteryline"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "i":I
    if-nez v0, :cond_51

    .line 92
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/mistyrain/Drawbatteryline;->setVisibility(I)V

    goto :goto_34

    .line 93
    :cond_51
    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    .line 95
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    invoke-virtual {v2, v4}, Lcom/android/mistyrain/Drawbatteryline;->setVisibility(I)V

    goto :goto_34

    .line 99
    .end local v0    # "i":I
    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mistyrain.batterylinechange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 100
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    invoke-virtual {v2}, Lcom/android/mistyrain/Drawbatteryline;->setLineproperty()V

    .line 101
    iget-object v2, p0, Lcom/android/mistyrain/Drawbatteryline$BatteryBroadcastReciver;->this$0:Lcom/android/mistyrain/Drawbatteryline;

    invoke-virtual {v2}, Lcom/android/mistyrain/Drawbatteryline;->invalidate()V

    goto :goto_34
.end method
