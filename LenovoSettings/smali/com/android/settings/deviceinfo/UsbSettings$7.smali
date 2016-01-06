.class Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    iput-boolean p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->val$on:Z

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const/4 v1, 0x1

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$102(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 923
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 928
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$102(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 926
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method
