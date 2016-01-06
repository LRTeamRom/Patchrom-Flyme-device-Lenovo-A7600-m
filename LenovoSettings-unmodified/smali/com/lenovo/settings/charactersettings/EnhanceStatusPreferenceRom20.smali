.class public Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;
.super Landroid/preference/Preference;
.source "EnhanceStatusPreferenceRom20.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MStatusPreferenceK7"

.field private static final sShowIcon:Z


# instance fields
.field private hasSubPreference:Z

.field private mContext:Landroid/content/Context;

.field private mLenovoStatusSummary:Ljava/lang/CharSequence;

.field private mLenovoStatusSummaryDefault:I

.field private mLenovoStatusSummaryRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->hasSubPreference:Z

    .line 23
    const v4, 0x7f0a0341

    iput v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummaryDefault:I

    .line 24
    const/4 v4, -0x1

    iput v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummaryRes:I

    .line 25
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummary:Ljava/lang/CharSequence;

    .line 31
    sget-object v4, Lcom/android/settings/R$styleable;->CharacterSettingsK7:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 33
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 34
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 36
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->hasSubPreference:Z

    .line 39
    const-string v4, "MStatusPreferenceK7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSwitchPreferenceK7 hasSubPreference value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->hasSubPreference:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mContext:Landroid/content/Context;

    .line 63
    return-void

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLenovoStatusSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getmLenovoStatusSummaryRes()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummaryRes:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 72
    const v6, 0x1020018

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 73
    .local v3, "widget":Landroid/view/View;
    const v6, 0x7f0e017d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "statusSummary":Landroid/widget/TextView;
    const-string v6, "MStatusPreferenceK7"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CharacterSettingsK7 MStatusPreferenceK7 onBindView key is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",statusSummary is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz v2, :cond_2

    .line 77
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummary:Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    .line 78
    iget v6, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummaryDefault:I

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 81
    :cond_0
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummary:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 82
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getLenovoStatusSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    const v6, 0x7f0e0172

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "nextIcon":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 91
    iget-boolean v6, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->hasSubPreference:Z

    if-eqz v6, :cond_5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_3
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "icon":Landroid/view/View;
    const-string v4, "MStatusPreferenceK7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CharacterSettingsK7 MStatusPreferenceK7 onBindView icon is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_4
    return-void

    .end local v0    # "icon":Landroid/view/View;
    :cond_5
    move v4, v5

    .line 91
    goto :goto_0
.end method

.method public setLenovoStatusSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "mLenovoStatusSummaryId"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummary:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->notifyChanged()V

    .line 124
    return-void
.end method

.method public setLenovoStatusSummaryRes(I)V
    .locals 4
    .param p1, "mLenovoStatusSummaryResId"    # I

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummary(Ljava/lang/CharSequence;)V

    .line 108
    iput p1, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummaryRes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->notifyChanged()V

    .line 115
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    iget v1, p0, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->mLenovoStatusSummaryDefault:I

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->setLenovoStatusSummaryRes(I)V

    .line 112
    const-string v1, "MStatusPreferenceK7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MStatusPreferenceK7 setLenovoPreferenceK7 key is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceStatusPreferenceRom20;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
