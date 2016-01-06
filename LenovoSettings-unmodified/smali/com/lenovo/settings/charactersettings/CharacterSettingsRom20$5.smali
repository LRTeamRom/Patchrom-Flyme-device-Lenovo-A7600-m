.class Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;
.super Landroid/database/ContentObserver;
.source "CharacterSettingsRom20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 249
    const-string v0, "CharacterSettingsRom20"

    const-string v1, "mTouchFreeAnswerObserver onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    invoke-virtual {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    # getter for: Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->mTouchFreePhoneAnswer:Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;
    invoke-static {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->access$500(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$5;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    invoke-virtual {v1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "touch_free_phone_answer"

    invoke-static {v1, v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getStatusText(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 257
    :cond_0
    return-void
.end method
