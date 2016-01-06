.class public Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;
.super Landroid/app/Activity;
.source "CharacterHelperRom20.java"


# static fields
.field public static final CHARACTER_SETTINGS_MULTIWINDOWSETTINGS:Ljava/lang/String; = "com.flyme.deviceoriginalsettings.CharacterSettings.MultiWindowSettings"

.field public static final CHARACTER_SETTINGS_SWINGLOCKSETTINGS_:Ljava/lang/String; = "com.flyme.deviceoriginalsettings.CharacterSettings.SwingLockSettings"

.field public static final CHARACTER_SETTINGS_WIDE_TOUCH_ACTION:Ljava/lang/String; = "com.flyme.deviceoriginalsettings.CharacterSettingsRom20.WideTouchSettings"

.field public static final CHARACTER_SETTINGS_WIDE_TOUCH_QUALCOM_ACTION:Ljava/lang/String; = "com.flyme.deviceoriginalsettings.CharacterSettings.FloatButtonSettings"

.field private static final DBG:Z = true

.field public static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_Key"

.field public static final EXTRA_PREFRENCE_TITLE:Ljava/lang/String; = "preference_title"

.field private static final SWITCH_MARGIN_RIGHT:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "CharacterHelperRom20"


# instance fields
.field private SettingsKey:Ljava/lang/String;

.field animation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHelpImageView:Landroid/widget/ImageView;

.field private mMessageView:Landroid/widget/TextView;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSwingtLockObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitle:Ljava/lang/String;

.field private pKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$1;-><init>(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mObserver:Landroid/database/ContentObserver;

    .line 74
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$2;-><init>(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwingtLockObserver:Landroid/database/ContentObserver;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    return-object v0
.end method

.method private initMess(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string v4, "CharacterHelperRom20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterHelperRom20 onCreate action is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v4, "com.flyme.deviceoriginalsettings.CharacterSettingsRom20.WideTouchSettings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.flyme.deviceoriginalsettings.CharacterSettings.FloatButtonSettings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    :cond_0
    const-string v4, "wide_touch"

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a012d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getSettingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getSwitchState(Ljava/lang/String;)Z

    move-result v3

    .line 121
    .local v3, "switchState":Z
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getMessage(Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "messageId":I
    const-string v4, "CharacterHelperRom20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterHelperK7 message is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v4, "CharacterHelperRom20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterHelperK7 settingsKey is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getHelpImage(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, "helpImage":I
    const-string v4, "CharacterHelperRom20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterHelperK7 image is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    invoke-direct {p0, v2}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->setMessage(I)V

    .line 130
    invoke-direct {p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->setHelpImage(I)V

    .line 141
    return-void

    .line 103
    .end local v1    # "helpImage":I
    .end local v2    # "messageId":I
    .end local v3    # "switchState":Z
    :cond_1
    const-string v4, "com.flyme.deviceoriginalsettings.CharacterSettings.MultiWindowSettings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "multiwindow"

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0344

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 106
    :cond_2
    const-string v4, "com.flyme.deviceoriginalsettings.CharacterSettings.SwingLockSettings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    const-string v4, "swing_lock"

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0118

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :cond_3
    const-string v4, "preference_Key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    .line 112
    const-string v4, "preference_title"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    .line 113
    const-string v4, "CharacterHelperRom20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterHelperRom20 pKey is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTitle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setHelpImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 234
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 236
    :cond_0
    return-void
.end method

.method private setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpImage(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getHelpDrawable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMessage(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getHelpDescription(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSwitchState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 145
    const-string v6, "ro.lenovo.region"

    const-string v8, "prc"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "row"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    invoke-virtual {p0, v10}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->setRequestedOrientation(I)V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const v6, 0x7f04001a

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->setContentView(I)V

    .line 153
    const v6, 0x7f0e003b

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mMessageView:Landroid/widget/TextView;

    .line 154
    const v6, 0x7f0e003a

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    .line 156
    const v6, 0x7f0e003c

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 157
    .local v2, "bttn_know_it":Landroid/widget/Button;
    new-instance v6, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$3;

    invoke-direct {v6, p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$3;-><init>(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 163
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    .line 165
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 166
    invoke-direct {p0, v4}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->initMess(Landroid/content/Intent;)V

    .line 170
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    new-instance v8, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$4;

    invoke-direct {v8, p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20$4;-><init>(Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;)V

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 181
    .local v1, "actionBar":Landroid/app/ActionBar;
    const v6, 0x7f0e0012

    invoke-virtual {p0, v6}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 182
    .local v3, "container":Landroid/widget/LinearLayout;
    const-string v6, "CharacterHelperRom20"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CharacterHelperK7 onCreate getActionBar is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 186
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v11, v11, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 190
    .local v5, "layout":Landroid/app/ActionBar$LayoutParams;
    const/16 v6, 0x1a

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$LayoutParams;->setMarginEnd(I)V

    .line 191
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v6, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 199
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 200
    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 204
    .end local v5    # "layout":Landroid/app/ActionBar$LayoutParams;
    :goto_0
    if-nez v1, :cond_2

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    return-void

    .line 202
    :cond_1
    iget-object v6, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    move v6, v7

    .line 204
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    const-string v0, "CharacterHelperRom20"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->animation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 274
    iput-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iput-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mHelpImageView:Landroid/widget/ImageView;

    .line 280
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 284
    const-string v0, "CharacterHelperRom20"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CharacterHelperK7 onKeyUp keyCode is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->initMess(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    const-string v0, "CharacterHelperRom20"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CharacterHelperK7 onOptionItemSelected id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",R.id.home is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x102002c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 294
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->finish()V

    .line 295
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "swing_lock_enabled"

    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwingtLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    :goto_0
    const-string v0, "CharacterHelperRom20"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 263
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onPreferenceOperation(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .prologue
    .line 219
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 220
    .local v0, "operationObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    iput-boolean p2, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 221
    invoke-static {p0, p1, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    const-string v1, "CharacterHelperRom20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v1, "swing_lock_enabled"

    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwingtLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->pKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getSwitchState(Ljava/lang/String;)Z

    move-result v0

    .line 250
    .local v0, "switchState":Z
    iget-object v1, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 252
    return-void

    .line 245
    .end local v0    # "switchState":Z
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->SettingsKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/charactersettings/CharacterHelperRom20;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 266
    const-string v0, "CharacterHelperRom20"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 268
    return-void
.end method
