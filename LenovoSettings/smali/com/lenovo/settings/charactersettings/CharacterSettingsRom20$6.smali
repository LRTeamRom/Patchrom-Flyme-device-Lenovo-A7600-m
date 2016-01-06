.class Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$6;
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
    .line 268
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$6;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 271
    const-string v1, "CharacterSettingsRom20"

    const-string v2, "multiWindow Value onChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 285
    .local v0, "isChecked":Z
    return-void
.end method
