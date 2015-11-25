.class Lcom/mediatek/rns/RnsService$1;
.super Landroid/content/BroadcastReceiver;
.source "RnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsService;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsService;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 128
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    # setter for: Lcom/mediatek/rns/RnsService;->mIsWifiConnected:Z
    invoke-static {v5, v3}, Lcom/mediatek/rns/RnsService;->access$002(Lcom/mediatek/rns/RnsService;Z)Z

    .line 129
    const-string v3, "RnsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: NETWORK_STATE_CHANGED_ACTION connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    # getter for: Lcom/mediatek/rns/RnsService;->mIsWifiConnected:Z
    invoke-static {v5}, Lcom/mediatek/rns/RnsService;->access$000(Lcom/mediatek/rns/RnsService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    move v3, v4

    .line 128
    goto :goto_0

    .line 138
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 139
    iget-object v5, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    :goto_2
    # setter for: Lcom/mediatek/rns/RnsService;->mIsWifiEnabled:Z
    invoke-static {v5, v3}, Lcom/mediatek/rns/RnsService;->access$102(Lcom/mediatek/rns/RnsService;Z)Z

    .line 142
    const-string v3, "RnsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: WIFI_STATE_CHANGED_ACTION enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    # getter for: Lcom/mediatek/rns/RnsService;->mIsWifiEnabled:Z
    invoke-static {v5}, Lcom/mediatek/rns/RnsService;->access$100(Lcom/mediatek/rns/RnsService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v3, v4

    .line 139
    goto :goto_2

    .line 143
    :cond_4
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string v3, "newRssi"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "rssi":I
    iget-object v3, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    # getter for: Lcom/mediatek/rns/RnsService;->mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;
    invoke-static {v3}, Lcom/mediatek/rns/RnsService;->access$200(Lcom/mediatek/rns/RnsService;)Lcom/mediatek/rns/RnsService$InternalHandler;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/rns/RnsService$1;->this$0:Lcom/mediatek/rns/RnsService;

    # getter for: Lcom/mediatek/rns/RnsService;->mHandler:Lcom/mediatek/rns/RnsService$InternalHandler;
    invoke-static {v5}, Lcom/mediatek/rns/RnsService;->access$200(Lcom/mediatek/rns/RnsService;)Lcom/mediatek/rns/RnsService$InternalHandler;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v4}, Lcom/mediatek/rns/RnsService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/rns/RnsService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
