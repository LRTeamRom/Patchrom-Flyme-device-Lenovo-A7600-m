.class Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;
.super Landroid/content/BroadcastReceiver;
.source "batteryinfovoltage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/batteryinfovoltage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryischangeReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/batteryinfovoltage;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/batteryinfovoltage;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    const-string v1, "batteryinfo"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/mistyrain/batteryinfovoltage;->isshow:Z

    .line 83
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    iget-boolean v0, v0, Lcom/android/mistyrain/batteryinfovoltage;->isshow:Z

    if-eqz v0, :cond_30

    .line 84
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7535\u6c60\u7535\u538b\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    iget v2, v2, Lcom/android/mistyrain/batteryinfovoltage;->mvoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfovoltage;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_2f
    return-void

    .line 88
    :cond_30
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfovoltage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method
