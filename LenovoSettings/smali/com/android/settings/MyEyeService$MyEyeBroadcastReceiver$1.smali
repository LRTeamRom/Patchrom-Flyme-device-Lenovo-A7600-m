.class Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "MyEyeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver$1;->this$1:Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver$1;->this$1:Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/MyEyeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver$1;->this$1:Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;

    const v2, 0x7f0a0361

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/MyEyeService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method
