.class public Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyEyeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/MyEyeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyEyeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/MyEyeService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.flyme.deviceoriginalsettings.myeyeservice.addview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->addEyeView(Landroid/content/Context;)V

    .line 75
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;

    # invokes: Lcom/flyme/deviceoriginalsettings/MyEyeService;->showNotification()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/MyEyeService;->access$000(Lcom/flyme/deviceoriginalsettings/MyEyeService;)V

    .line 76
    const-string v2, "MyEyeService"

    const-string v3, "add eye view"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v2, "com.flyme.deviceoriginalsettings.myeyeservice.rmview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->removeEyeView(Landroid/content/Context;)V

    .line 79
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/MyEyeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sys.night_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/MyEyeService;

    # invokes: Lcom/flyme/deviceoriginalsettings/MyEyeService;->cancelNotification()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/MyEyeService;->access$100(Lcom/flyme/deviceoriginalsettings/MyEyeService;)V

    .line 81
    const-string v2, "MyEyeService"

    const-string v3, "remove eye view"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    const-string v2, "com.flyme.deviceoriginalsettings.myeyeservice.monitor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "MyEyeService"

    const-string v3, "TIP_SECURE_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver$1;-><init>(Lcom/flyme/deviceoriginalsettings/MyEyeService$MyEyeBroadcastReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
