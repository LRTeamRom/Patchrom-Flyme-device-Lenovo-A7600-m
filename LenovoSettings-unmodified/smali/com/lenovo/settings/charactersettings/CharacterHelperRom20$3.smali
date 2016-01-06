.class Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$3;
.super Ljava/lang/Object;
.source "CharacterHelperRom20.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 157
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$3;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$3;->this$0:Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    invoke-virtual {v0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->finish()V

    .line 160
    return-void
.end method
