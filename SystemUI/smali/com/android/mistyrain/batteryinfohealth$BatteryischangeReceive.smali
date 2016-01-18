.class Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;
.super Landroid/content/BroadcastReceiver;
.source "batteryinfohealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/batteryinfohealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryischangeReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/batteryinfohealth;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/batteryinfohealth;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    const-string v1, "batteryinfo"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/mistyrain/batteryinfohealth;->isshow:Z

    .line 115
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    iget-boolean v0, v0, Lcom/android/mistyrain/batteryinfohealth;->isshow:Z

    if-eqz v0, :cond_30

    .line 116
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7535\u6c60\u72b6\u6001\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    iget-object v3, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    iget v3, v3, Lcom/android/mistyrain/batteryinfohealth;->health:I

    invoke-virtual {v2, v3}, Lcom/android/mistyrain/batteryinfohealth;->status(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfohealth;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_2f
    return-void

    .line 120
    :cond_30
    iget-object v0, p0, Lcom/android/mistyrain/batteryinfohealth$BatteryischangeReceive;->this$0:Lcom/android/mistyrain/batteryinfohealth;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/batteryinfohealth;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method
