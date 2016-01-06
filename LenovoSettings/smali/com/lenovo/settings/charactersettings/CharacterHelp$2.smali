.class Lcom/lenovo/settings/charactersettings/CharacterHelp$2;
.super Ljava/lang/Object;
.source "CharacterHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/charactersettings/CharacterHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/charactersettings/CharacterHelp;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelp$2;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelp$2;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;

    const-class v2, Lcom/lenovo/settings/charactersettings/TrySwingLock;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelp$2;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelp$2;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;

    invoke-virtual {v1}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->finish()V

    .line 122
    return-void
.end method
