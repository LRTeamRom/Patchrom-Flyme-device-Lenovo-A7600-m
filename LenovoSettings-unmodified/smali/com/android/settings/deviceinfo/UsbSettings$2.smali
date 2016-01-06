.class Lcom/android/settings/deviceinfo/UsbSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "currentFunction":Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_ACCESS_AVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "available"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 248
    .local v1, "available":Z
    const-string v4, "UsbSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUsbStateReceiver, usb available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-nez v1, :cond_0

    .line 250
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->finish()V

    .line 254
    .end local v1    # "available":Z
    :cond_0
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 255
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v7, "accessory"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v4, v7}, Lcom/android/settings/deviceinfo/UsbSettings;->access$602(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 256
    const-string v4, "UsbSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsbAccessoryMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v8}, Lcom/android/settings/deviceinfo/UsbSettings;->access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v4, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v7, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$702(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "connected"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 261
    .local v3, "usbConnected":Z
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v7, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v4, v7}, Lcom/android/settings/deviceinfo/UsbSettings;->access$802(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 263
    const-string v4, "UsbSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_USB_STATE], mIsHwUsbConnected :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v8}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsPcKnowMe :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v8}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentFunction="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v4, "UsbSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usbConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-nez v3, :cond_3

    const-string v4, "charging"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 267
    const-string v4, "UsbSettings"

    const-string v5, "usb has been disconnected,so activity finish."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->finish()V

    .line 330
    .end local v3    # "usbConnected":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v6

    .line 257
    goto :goto_0

    .line 273
    .restart local v3    # "usbConnected":Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "charging"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 274
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v4, v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 278
    :cond_4
    const-string v4, "UsbSettings"

    const-string v5, "It was disconnected from the plug, so finish!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->finish()V

    goto :goto_1

    .line 282
    :cond_5
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/settings/deviceinfo/UsbSettings;->access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 290
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/lenovo/settings/storage/StorageUtils;->USB_CHARGING:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 293
    :cond_6
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1202(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 296
    :cond_7
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 297
    const-string v4, "UsbSettings"

    const-string v5, "[Update Toggle - Other Functions]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 307
    .end local v3    # "usbConnected":Z
    :cond_8
    :goto_2
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "plugged"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1402(Lcom/android/settings/deviceinfo/UsbSettings;I)I

    .line 309
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ACTION_BATTERY_CHANGED], mPlugType :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 317
    const-string v4, "charging"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    const-string v4, "UsbSettings"

    const-string v5, "[Update Toggle - USB Charging]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    .restart local v3    # "usbConnected":Z
    :cond_9
    const-string v4, "charging"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 302
    const-string v4, "UsbSettings"

    const-string v5, "[Finish Activity]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->finish()V

    goto :goto_2

    .line 323
    .end local v3    # "usbConnected":Z
    :cond_a
    const-string v4, "UsbSettings"

    const-string v5, "[Finish Activity - USB Charging Unplugged]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
