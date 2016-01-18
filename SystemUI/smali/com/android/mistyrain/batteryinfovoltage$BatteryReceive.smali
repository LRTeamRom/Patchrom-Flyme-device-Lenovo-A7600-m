.class Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;
.super Landroid/content/BroadcastReceiver;
.source "batteryinfovoltage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/batteryinfovoltage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/batteryinfovoltage;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/batteryinfovoltage;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    const-string v1, "voltage"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/android/mistyrain/batteryinfovoltage;->mvoltage:I

    .line 63
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    iget-boolean v0, v0, Lcom/android/mistyrain/batteryinfovoltage;->isshow:Z

    if-eqz v0, :cond_32

    .line 64
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7535\u6c60\u7535\u538b\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    iget v2, v2, Lcom/android/mistyrain/batteryinfovoltage;->mvoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfovoltage;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_31
    return-void

    .line 67
    :cond_32
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfovoltage$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfovoltage;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfovoltage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31
.end method
