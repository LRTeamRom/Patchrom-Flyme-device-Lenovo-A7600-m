.class Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 895
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$302(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 896
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbSetButton click! bIsMassStorageUsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$1700(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    .line 899
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 900
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 901
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const-string v1, "android.intent.action.MEDIA_PREPARE_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$1000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 912
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$6;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V
    invoke-static {v2, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$1800(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V

    .line 913
    return-void

    .line 912
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
