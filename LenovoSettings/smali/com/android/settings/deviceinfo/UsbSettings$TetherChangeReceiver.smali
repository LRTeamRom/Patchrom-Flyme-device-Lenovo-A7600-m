.class Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$1;

    .prologue
    .line 1157
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "action":Ljava/lang/String;
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TetherChangeReceiver - onReceive, action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1166
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1168
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1170
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1174
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const-string v5, "UnTetherDone"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2002(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1175
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const-string v5, "TetherDone"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2102(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1176
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const-string v5, "TetherFail"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2202(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1179
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUsbUnTetherDone? :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mUsbTetherDonel? :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherDone:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2100(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , tether fail? :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbTetherFail:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v7, v4, v5, v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1200
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1185
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const/4 v5, 0x1

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMassStorageActive:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2402(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1186
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState()V
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2500(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 1187
    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1188
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mMassStorageActive:Z
    invoke-static {v4, v7}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2402(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1189
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState()V
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2500(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 1190
    :cond_3
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1191
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const-string v5, "connected"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2602(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1193
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const-string v5, "configured"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2702(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1194
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const-string v5, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z
    invoke-static {v4, v5}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2802(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 1195
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TetherChangeReceiver - ACTION_USB_STATE mUsbConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConnected:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2600(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUsbConfigured:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbConfigured:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2700(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUsbHwDisconnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2800(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateState()V
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$2500(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    goto/16 :goto_0
.end method
