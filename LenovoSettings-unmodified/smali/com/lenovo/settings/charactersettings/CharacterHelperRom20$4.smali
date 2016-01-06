.class Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$4;
.super Ljava/lang/Object;
.source "CharacterHelperRom20.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$4;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$4;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$4;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    # getter for: Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->access$200(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->onPreferenceOperation(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method
