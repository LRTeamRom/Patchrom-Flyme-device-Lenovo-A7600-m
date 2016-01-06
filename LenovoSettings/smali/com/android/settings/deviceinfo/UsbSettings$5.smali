.class Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->onResume()V
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
    .line 618
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    # setter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$302(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)Z

    .line 622
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)Z

    move-result v1

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->switchDisplay(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;Z)V

    .line 623
    return-void
.end method
