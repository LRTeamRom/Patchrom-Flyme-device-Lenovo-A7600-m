.class public Lcom/lenovo/settings/charactersettings/CharacterHelperTopSpeedSnapRom20;
.super Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;
.source "CharacterHelperTopSpeedSnapRom20.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "preference_Key"

    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "preference_title"

    const v2, 0x7f0a0152

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/charactersettings/CharacterHelperTopSpeedSnapRom20;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    return-object v0
.end method

.method protected onPreferenceOperation(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    const v1, 0x7f0a0152

    .line 26
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperTopSpeedSnapRom20;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/lenovo/settings/charactersettings/CharacterHelperTopSpeedSnapRom20;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    move-object v5, v4

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->onPreferenceOperation(Ljava/lang/String;Z)V

    .line 37
    return-void
.end method
