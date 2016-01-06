.class public Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;
.super Landroid/preference/CheckBoxPreference;
.source "LenovoExpCheckBoxPref.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$1;,
        Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;
    }
.end annotation


# instance fields
.field hyperLinkText:Ljava/lang/String;

.field styleText:Landroid/text/SpannableStringBuilder;

.field summaryText:Ljava/lang/String;

.field summaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "Hello"

    iput-object v0, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->hyperLinkText:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "Hello"

    iput-object v0, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->hyperLinkText:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const-string v0, "Hello"

    iput-object v0, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->hyperLinkText:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getHyperLinkText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->hyperLinkText:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 40
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryTextView:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryText:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->getHyperLinkText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "summaryLinkText":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->styleText:Landroid/text/SpannableStringBuilder;

    .line 45
    iget-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->styleText:Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$postHyperLink;-><init>(Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref$1;)V

    iget-object v3, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47
    iget-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->styleText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->summaryTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 52
    return-void
.end method

.method public setHyperLinkText(Ljava/lang/String;)V
    .locals 0
    .param p1, "hyperLinkText"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/settings/wizard/LenovoExpCheckBoxPref;->hyperLinkText:Ljava/lang/String;

    .line 60
    return-void
.end method
