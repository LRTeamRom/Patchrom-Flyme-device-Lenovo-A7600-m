.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;
.super Landroid/preference/Preference;
.source "UsbPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUTTON_ID:I = 0x7f0e01e8

.field private static final SUMMARY_ID:I = 0x7f0e01e7

.field private static final TAG:Ljava/lang/String; = "UsbPreference"

.field private static final TITLE_ID:I = 0x7f0e01e6


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mChecked:Z

    .line 62
    const v0, 0x7f0400bb

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setLayoutResource(I)V

    .line 65
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 70
    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    const-string v1, "UsbPreference"

    const-string v2, "getview"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v1, 0x7f0e01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v1, 0x7f0e01e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 84
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 165
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 167
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 168
    const-string v1, "UsbPreference"

    const-string v2, "preference.onClick return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_1
    return-void

    .line 165
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "UsbPreference"

    const-string v2, "preference.onClick"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 149
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 150
    const-string v1, "UsbPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_1
    return-void

    .line 147
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 156
    const-string v1, "UsbPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 187
    const-string v1, "UsbPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mChecked:Z

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 194
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mChecked:Z

    .line 195
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 123
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 98
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1
    return-void
.end method
