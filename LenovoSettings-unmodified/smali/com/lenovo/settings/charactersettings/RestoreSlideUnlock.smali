.class public Lcom/lenovo/settings/charactersettings/RestoreSlideUnlock;
.super Landroid/content/BroadcastReceiver;
.source "RestoreSlideUnlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v3, "com.lenovo.action.WLAN_POSITION_EFFECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    const-string v3, "charc"

    const-string v4, "wlanpe"

    invoke-static {p1, v3, v4}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->doDataCollect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    const-string v3, "com.lenovo.freedial.action.setting"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    const-string v3, "event"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 22
    .local v1, "evnt":I
    const/4 v0, 0x0

    .line 23
    .local v0, "event":Ljava/lang/String;
    if-lez v1, :cond_2

    .line 24
    packed-switch v1, :pswitch_data_0

    .line 42
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 43
    const-string v3, "charc"

    invoke-static {p1, v3, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->doDataCollect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_0
    const-string v0, "dial 1"

    .line 27
    goto :goto_1

    .line 29
    :pswitch_1
    const-string v0, "dial 0"

    .line 30
    goto :goto_1

    .line 32
    :pswitch_2
    const-string v0, "ans 1"

    .line 33
    goto :goto_1

    .line 35
    :pswitch_3
    const-string v0, "ans 0"

    .line 36
    goto :goto_1

    .line 52
    .end local v0    # "event":Ljava/lang/String;
    .end local v1    # "evnt":I
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v2, "eyeIntent":Landroid/content/Intent;
    const-class v3, Lcom/android/settings/MyEyeService;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
