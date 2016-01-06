.class Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$10;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$10;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 374
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$10;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    # invokes: Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->onCreateInternal()V
    invoke-static {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->access$600(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V

    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20$10;->this$0:Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;

    # invokes: Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->onResumeInternal()V
    invoke-static {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;->access$700(Lcom/lenovo/settings/charactersettings/CharacterSettingsRom20;)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
