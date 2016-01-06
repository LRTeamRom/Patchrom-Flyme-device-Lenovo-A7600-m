.class Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;
.super Landroid/database/ContentObserver;
.source "CharacterHelperRom20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 60
    const-string v2, "CharacterHelperRom20"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmartRotationObserver onChanged---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-nez p1, :cond_0

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    invoke-virtual {v2}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    # getter for: Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->access$000(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "value":I
    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    # getter for: Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->access$100(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Landroid/widget/Switch;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    # getter for: Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->access$100(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Landroid/widget/Switch;

    move-result-object v2

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "value":I
    :cond_0
    :goto_1
    return-void

    .line 66
    .restart local v0    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .end local v0    # "value":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
