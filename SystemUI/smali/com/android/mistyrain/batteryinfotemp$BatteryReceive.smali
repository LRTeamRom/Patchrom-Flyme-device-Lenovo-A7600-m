.class Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;
.super Landroid/content/BroadcastReceiver;
.source "batteryinfotemp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/batteryinfotemp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/batteryinfotemp;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/batteryinfotemp;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfotemp;

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
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfotemp;

    const-string v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/android/mistyrain/batteryinfotemp;->mtemperature:I

    .line 60
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfotemp;

    iget-boolean v0, v0, Lcom/android/mistyrain/batteryinfotemp;->isshow:Z

    if-eqz v0, :cond_30

    .line 61
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfotemp;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfotemp;

    iget v2, v2, Lcom/android/mistyrain/batteryinfotemp;->mtemperature:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u2103"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfotemp;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_2f
    return-void

    .line 64
    :cond_30
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfotemp$BatteryReceive;->this$0:Lcom/android/mistyrain/batteryinfotemp;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfotemp;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method
