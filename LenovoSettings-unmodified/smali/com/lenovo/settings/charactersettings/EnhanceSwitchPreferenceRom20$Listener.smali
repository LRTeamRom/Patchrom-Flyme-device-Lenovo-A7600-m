.class Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;
.super Ljava/lang/Object;
.source "EnhanceSwitchPreferenceRom20.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;->this$0:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;
    .param p2, "x1"    # Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;-><init>(Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 83
    const-string v0, "EnhanceSwitchPreferenceRom20"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CharacterSettingsK7 onCheckedChanged isChecked is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Prefrence Orignal isChecked is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;->this$0:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;->this$0:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->access$100(Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 89
    :goto_1
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;->this$0:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;

    invoke-virtual {v0, p2}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->setChecked(Z)V

    goto :goto_1
.end method
