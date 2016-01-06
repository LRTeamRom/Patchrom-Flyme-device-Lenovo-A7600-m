.class public Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;
.super Landroid/preference/SwitchPreference;
.source "EnhanceSwitchPreferenceRom20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$1;,
        Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnhanceSwitchPreferenceRom20"

.field private static final sShowIcon:Z


# instance fields
.field private hasSubPreference:Z

.field private final mListener:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v4, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;-><init>(Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$1;)V

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->mListener:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;

    .line 21
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->hasSubPreference:Z

    .line 27
    sget-object v4, Lcom/flyme/deviceoriginalsettings/R$styleable;->CharacterSettingsK7:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 29
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 30
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 31
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 32
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 30
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->hasSubPreference:Z

    .line 35
    const-string v4, "EnhanceSwitchPreferenceRom20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSwitchPreferenceK7 hasSubPreference value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->hasSubPreference:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 41
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    .line 50
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 51
    const v5, 0x7f0e001d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "checkableView":Landroid/view/View;
    const-string v5, "EnhanceSwitchPreferenceRom20"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CharacterSettingsK7 MSwitchPreferenceK7 onBindView checkableView is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",getKey is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz v0, :cond_0

    instance-of v5, v0, Landroid/widget/Checkable;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 54
    check-cast v1, Landroid/widget/Checkable;

    .line 55
    .local v1, "chkView":Landroid/widget/Checkable;
    const-string v5, "EnhanceSwitchPreferenceRom20"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CharacterSettingsK7 MSwitchPreferenceK7 onBindView setChecked isChecked is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isSiwtch is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    instance-of v8, v0, Landroid/widget/Switch;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",OrignalChecked is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    instance-of v5, v0, Landroid/widget/Switch;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 59
    check-cast v4, Landroid/widget/Switch;

    .line 60
    .local v4, "switchView":Landroid/widget/Switch;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->isChecked()Z

    move-result v5

    invoke-interface {v1, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 62
    iget-object v5, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->mListener:Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20$Listener;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    .end local v1    # "chkView":Landroid/widget/Checkable;
    .end local v4    # "switchView":Landroid/widget/Switch;
    :cond_0
    const v5, 0x7f0e0172

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "nextIcon":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 68
    iget-boolean v5, p0, Lcom/lenovo/settings/charactersettings/EnhanceSwitchPreferenceRom20;->hasSubPreference:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_1
    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, "icon":Landroid/view/View;
    const-string v5, "EnhanceSwitchPreferenceRom20"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CharacterSettingsK7 MSwitchPreferenceK7 onBindView icon is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_2
    return-void

    .end local v2    # "icon":Landroid/view/View;
    :cond_3
    move v5, v6

    .line 68
    goto :goto_0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
