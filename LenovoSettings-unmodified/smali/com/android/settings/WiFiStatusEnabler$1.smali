.class Lcom/android/settings/WiFiStatusEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiStatusEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WiFiStatusEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WiFiStatusEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/WiFiStatusEnabler;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    # getter for: Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    invoke-static {v1}, Lcom/android/settings/WiFiStatusEnabler;->access$000(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    # getter for: Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    invoke-static {v1}, Lcom/android/settings/WiFiStatusEnabler;->access$000(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/WiFiStatusEnabler$1;->this$0:Lcom/android/settings/WiFiStatusEnabler;

    # getter for: Lcom/android/settings/WiFiStatusEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;
    invoke-static {v2}, Lcom/android/settings/WiFiStatusEnabler;->access$000(Lcom/android/settings/WiFiStatusEnabler;)Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    const-string v2, "WifiEnabler"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/lenovo/settings/LenovoStatusStateChangeListener;->onStateChange(Ljava/lang/String;Z)V

    .line 42
    :cond_0
    return-void
.end method
