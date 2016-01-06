.class Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;
.super Landroid/text/style/ClickableSpan;
.source "LenovoExpCheckBoxPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "postHyperLink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;->this$0:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;
    .param p2, "x1"    # Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;-><init>(Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 71
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.lenovo.ue.service"

    const-string v3, "com.lenovo.ue.service.LenovoUEServiceActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;->this$0:Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;

    invoke-virtual {v2}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 65
    const v0, -0xfea82e

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 67
    return-void
.end method
