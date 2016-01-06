.class Lcom/lenovo/settings/charactersettings/CharacterHelp$1;
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
    .line 108
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelp$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelp$1;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelp;

    invoke-virtual {v0}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->finish()V

    .line 111
    return-void
.end method
