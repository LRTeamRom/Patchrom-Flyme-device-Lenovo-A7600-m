.class public Lcom/lenovo/settings/charactersettings/CharacterHelp;
.super Landroid/app/Activity;
.source "CharacterHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 39
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "key"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "key":Ljava/lang/String;
    const-string v7, "swing_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 43
    const v7, 0x7f04001c

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setContentView(I)V

    .line 57
    :goto_0
    const v7, 0x7f0e003a

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 58
    .local v3, "img":Landroid/widget/ImageView;
    const v7, 0x7f0e003b

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 59
    .local v6, "summaryText":Landroid/widget/TextView;
    const-string v7, "pocket_mode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    const v7, 0x7f0a013e

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 61
    const v7, 0x7f0a0140

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 62
    const v7, 0x7f020132

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 100
    :goto_1
    const-string v7, "wifi_switch_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 104
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 107
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v7, 0x7f0e003c

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 108
    .local v1, "bttn_know_it":Landroid/widget/Button;
    new-instance v7, Lcom/lenovo/settings/charactersettings/CharacterHelp$1;

    invoke-direct {v7, p0}, Lcom/lenovo/settings/charactersettings/CharacterHelp$1;-><init>(Lcom/lenovo/settings/charactersettings/CharacterHelp;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v7, 0x7f0e003d

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 116
    .local v2, "bttn_try":Landroid/widget/Button;
    if-eqz v2, :cond_1

    new-instance v7, Lcom/lenovo/settings/charactersettings/CharacterHelp$2;

    invoke-direct {v7, p0}, Lcom/lenovo/settings/charactersettings/CharacterHelp$2;-><init>(Lcom/lenovo/settings/charactersettings/CharacterHelp;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .end local v1    # "bttn_know_it":Landroid/widget/Button;
    .end local v2    # "bttn_try":Landroid/widget/Button;
    :cond_1
    :goto_2
    return-void

    .line 47
    .end local v3    # "img":Landroid/widget/ImageView;
    .end local v6    # "summaryText":Landroid/widget/TextView;
    :cond_2
    const-string v7, "wifi_switch_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 49
    const v7, 0x7f04001b

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setContentView(I)V

    goto :goto_0

    .line 54
    :cond_3
    const v7, 0x7f040019

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setContentView(I)V

    goto :goto_0

    .line 63
    .restart local v3    # "img":Landroid/widget/ImageView;
    .restart local v6    # "summaryText":Landroid/widget/TextView;
    :cond_4
    const-string v7, "ringtone_weaken"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 64
    const v7, 0x7f0a0141

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 65
    const v7, 0x7f0a0143

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v7, 0x7f020133

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 67
    :cond_5
    const-string v7, "mercury_keyboard"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 68
    const v7, 0x7f0a012a

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 69
    const v7, 0x7f0a012c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v7, 0x7f020131

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 71
    :cond_6
    const-string v7, "slide_unlock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 72
    const v7, 0x7f0a0122

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 73
    const v7, 0x7f0a0124

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 74
    const v7, 0x7f020136

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 75
    :cond_7
    const-string v7, "swing_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 76
    const v7, 0x7f0a0118

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 77
    const v7, 0x7f0a011a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 78
    const v7, 0x7f020138

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 79
    :cond_8
    const-string v7, "side_key_backlight"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 80
    const v7, 0x7f0a011f

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 81
    const v7, 0x7f0a0121

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const v7, 0x7f020134

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 86
    :cond_9
    const-string v7, "wifi_switch_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 88
    const v7, 0x7f0a029b

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->setTitle(I)V

    .line 89
    const v7, 0x7f0a02a0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v7, 0x7f020182

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 94
    :cond_a
    invoke-virtual {p0}, Lcom/lenovo/settings/charactersettings/CharacterHelp;->finish()V

    goto/16 :goto_2
.end method
