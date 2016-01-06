.class public Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;
.super Ljava/lang/Object;
.source "CharacterSettingsOperation.java"


# static fields
.field public static final CATEGORY_ALLSETTINGS:Ljava/lang/String; = "alls"

.field public static final CATEGORY_CHARACTER:Ljava/lang/String; = "charc"

.field public static final EFFECT_MODE:Ljava/lang/String; = "screen_m"

.field private static final TAG:Ljava/lang/String; = "CharacterSettingsOperation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 860
    const v1, 0x7f0a0259

    .line 861
    .local v1, "open":I
    const v0, 0x7f0a025a

    .line 862
    .local v0, "close":I
    if-eqz p0, :cond_1

    .line 863
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v2

    .line 864
    .local v2, "statusObject":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    const-string v3, "CharacterSettingsOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CharacterSettingsOperation commonLenovoStatusContent key is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",state is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-boolean v3, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    if-eqz v3, :cond_0

    .line 869
    .end local v1    # "open":I
    .end local v2    # "statusObject":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    :goto_0
    return v1

    .restart local v1    # "open":I
    .restart local v2    # "statusObject":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    :cond_0
    move v1, v0

    .line 866
    goto :goto_0

    .end local v2    # "statusObject":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    :cond_1
    move v1, v0

    .line 869
    goto :goto_0
.end method

.method public static doDataCollect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 385
    return-void
.end method

.method public static getCheckedState(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getCheckedState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckedState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "t":Ljava/lang/Object;, "TT;"
    new-instance v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v2}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 32
    .local v2, "CharacterObject":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;, "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject<TT;>;"
    const-string v20, "swing_lock"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "swing_lock_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    .line 34
    .local v18, "wakeKeyEnabler":Z
    :goto_0
    move/from16 v0, v18

    iput-boolean v0, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 229
    .end local v18    # "wakeKeyEnabler":Z
    :cond_0
    :goto_1
    return-object v2

    .line 33
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 36
    :cond_2
    const-string v20, "slide_unlock"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "slide_unlock_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    .line 38
    .local v17, "val":Z
    :goto_2
    move/from16 v0, v17

    iput-boolean v0, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto :goto_1

    .line 37
    .end local v17    # "val":Z
    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 40
    :cond_4
    const-string v20, "wide_touch"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "total_wide_touch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_5

    const/4 v5, 0x1

    .line 42
    .local v5, "floatButtonEnabler":Z
    :goto_3
    iput-boolean v5, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto :goto_1

    .line 41
    .end local v5    # "floatButtonEnabler":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 49
    :cond_6
    const-string v20, "mercury_keyboard"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pref_key_mercury_keyboard_on"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    .line 51
    .local v7, "mercuryKeyBoard":Z
    :goto_4
    iput-boolean v7, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto :goto_1

    .line 50
    .end local v7    # "mercuryKeyBoard":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 53
    :cond_8
    const-string v20, "side_key_backlight"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 54
    const/4 v10, 0x0

    .line 55
    .local v10, "shakeLockUnLockEnabler":Z
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "side_key_backlight"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_9

    const/4 v10, 0x1

    .line 58
    :goto_5
    iput-boolean v10, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 64
    :goto_6
    iput-boolean v10, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 56
    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    .line 60
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wake_key_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_b

    const/4 v10, 0x1

    .line 62
    :goto_7
    iput-boolean v10, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto :goto_6

    .line 60
    :cond_b
    const/4 v10, 0x0

    goto :goto_7

    .line 66
    .end local v10    # "shakeLockUnLockEnabler":Z
    :cond_c
    const-string v20, "gesture_series"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_wakeup_all_enable"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v7, 0x1

    .line 68
    .restart local v7    # "mercuryKeyBoard":Z
    :goto_8
    iput-boolean v7, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 67
    .end local v7    # "mercuryKeyBoard":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_8

    .line 71
    :cond_e
    const-string v20, "smart_calling"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pref_key_smart_call_on"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    const/4 v12, 0x1

    .line 73
    .local v12, "smartCallEnabler":Z
    :goto_9
    iput-boolean v12, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 72
    .end local v12    # "smartCallEnabler":Z
    :cond_f
    const/4 v12, 0x0

    goto :goto_9

    .line 75
    :cond_10
    const-string v20, "smart_call_answer"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "smart_call_answer"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_11

    const/4 v11, 0x1

    .line 78
    .local v11, "smartAnswerCallEnabler":Z
    :goto_a
    iput-boolean v11, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 76
    .end local v11    # "smartAnswerCallEnabler":Z
    :cond_11
    const/4 v11, 0x0

    goto :goto_a

    .line 80
    :cond_12
    const-string v20, "single_hand"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "settings_single_hand"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_13

    const/4 v4, 0x1

    .line 83
    .local v4, "enabler":Z
    :goto_b
    iput-boolean v4, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 81
    .end local v4    # "enabler":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_b

    .line 85
    :cond_14
    const-string v20, "smart_standby_enable"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "smart_standby_enable"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_15

    const/4 v13, 0x1

    .line 87
    .local v13, "smartStandbyEnabler":Z
    :goto_c
    iput-boolean v13, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 86
    .end local v13    # "smartStandbyEnabler":Z
    :cond_15
    const/4 v13, 0x0

    goto :goto_c

    .line 89
    :cond_16
    const-string v20, "pocket_mode"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lenovo_pocket_mode"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    const/4 v13, 0x1

    .line 94
    .restart local v13    # "smartStandbyEnabler":Z
    :goto_d
    iput-boolean v13, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 98
    const-string v20, "CharacterSettingsOperation"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CharacterSettingsOperation getCheckedState  phoneCallRingPocket is:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 93
    .end local v13    # "smartStandbyEnabler":Z
    :cond_17
    const/4 v13, 0x0

    goto :goto_d

    .line 100
    :cond_18
    const-string v20, "ringtone_weaken"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lenovo_weaken_mode"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    const/4 v13, 0x1

    .line 106
    .restart local v13    # "smartStandbyEnabler":Z
    :goto_e
    iput-boolean v13, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 105
    .end local v13    # "smartStandbyEnabler":Z
    :cond_19
    const/4 v13, 0x0

    goto :goto_e

    .line 116
    :cond_1a
    const-string v20, "multiwindow"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "multiwindow_key_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1b

    const/16 v18, 0x1

    .line 118
    .restart local v18    # "wakeKeyEnabler":Z
    :goto_f
    move/from16 v0, v18

    iput-boolean v0, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 119
    const-string v20, "CharacterSettingsOperation"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CharacterSettingsOperation getCheckedState  KEY_MULTIWINDOW is:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 117
    .end local v18    # "wakeKeyEnabler":Z
    :cond_1b
    const/16 v18, 0x0

    goto :goto_f

    .line 134
    :cond_1c
    const-string v20, "touch_free_phone_dial"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "com.lenovo.freedial.enable.all"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1d

    const/16 v16, 0x1

    .line 136
    .local v16, "touchFreeEnabler":Z
    :goto_10
    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 135
    .end local v16    # "touchFreeEnabler":Z
    :cond_1d
    const/16 v16, 0x0

    goto :goto_10

    .line 138
    :cond_1e
    const-string v20, "touch_free_phone_answer"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "com.lenovo.freedial.enable.answer"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1f

    const/16 v16, 0x1

    .line 140
    .restart local v16    # "touchFreeEnabler":Z
    :goto_11
    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 139
    .end local v16    # "touchFreeEnabler":Z
    :cond_1f
    const/16 v16, 0x0

    goto :goto_11

    .line 143
    :cond_20
    const-string v20, "wifi_switch_setting"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    .line 144
    const/4 v3, 0x1

    .line 147
    .local v3, "def_wifi_switch_setting":I
    const-string v20, "ro.lenovo.operator"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "operator":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isRowProject()Z

    move-result v20

    if-nez v20, :cond_21

    const-string v20, "cmcc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_22

    .line 150
    :cond_21
    const/4 v3, 0x0

    .line 153
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wifi_switch_setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_23

    const/4 v14, 0x1

    .line 154
    .local v14, "tiltScrollEnabler":Z
    :goto_12
    const-string v20, "gaorui"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getValue wifi_switch:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v14, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 153
    .end local v14    # "tiltScrollEnabler":Z
    :cond_23
    const/4 v14, 0x0

    goto :goto_12

    .line 158
    .end local v3    # "def_wifi_switch_setting":I
    .end local v8    # "operator":Ljava/lang/String;
    :cond_24
    const-string v20, "gesture_pick_up"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_pick_up_enable"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_25

    const/4 v9, 0x1

    .line 160
    .local v9, "pickUpKeyEnabler":Z
    :goto_13
    iput-boolean v9, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 159
    .end local v9    # "pickUpKeyEnabler":Z
    :cond_25
    const/4 v9, 0x0

    goto :goto_13

    .line 163
    :cond_26
    const-string v20, "gesture_wave_hand"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_28

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_wave_hand_enable"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_27

    const/16 v19, 0x1

    .line 165
    .local v19, "waveHandKeyEnabler":Z
    :goto_14
    move/from16 v0, v19

    iput-boolean v0, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 164
    .end local v19    # "waveHandKeyEnabler":Z
    :cond_27
    const/16 v19, 0x0

    goto :goto_14

    .line 168
    :cond_28
    const-string v20, "gesture_topspeed_snap"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2a

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_top_speed_snap_enable"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_29

    const/4 v15, 0x1

    .line 170
    .local v15, "topspeedSnapKeyEnabler":Z
    :goto_15
    iput-boolean v15, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 169
    .end local v15    # "topspeedSnapKeyEnabler":Z
    :cond_29
    const/4 v15, 0x0

    goto :goto_15

    .line 173
    :cond_2a
    const-string v20, "gesture_light_up_screen"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2c

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_light_up_enable"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_2b

    const/4 v6, 0x1

    .line 175
    .local v6, "lightUpScreenKeyEnabler":Z
    :goto_16
    iput-boolean v6, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 174
    .end local v6    # "lightUpScreenKeyEnabler":Z
    :cond_2b
    const/4 v6, 0x0

    goto :goto_16

    .line 211
    :cond_2c
    const-string v20, "wifi_switch_setting"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "wifi_switch_setting"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_2d

    const/4 v14, 0x1

    .line 213
    .restart local v14    # "tiltScrollEnabler":Z
    :goto_17
    iput-boolean v14, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 212
    .end local v14    # "tiltScrollEnabler":Z
    :cond_2d
    const/4 v14, 0x0

    goto :goto_17

    .line 215
    :cond_2e
    const-string v20, "gesture_topspeed_snap"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_30

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_top_speed_snap_enable"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_2f

    const/4 v15, 0x1

    .line 217
    .restart local v15    # "topspeedSnapKeyEnabler":Z
    :goto_18
    iput-boolean v15, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 216
    .end local v15    # "topspeedSnapKeyEnabler":Z
    :cond_2f
    const/4 v15, 0x0

    goto :goto_18

    .line 220
    :cond_30
    const-string v20, "gesture_light_up_screen"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_32

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "black_gesture_light_up_enable"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_31

    const/4 v6, 0x1

    .line 222
    .restart local v6    # "lightUpScreenKeyEnabler":Z
    :goto_19
    iput-boolean v6, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 221
    .end local v6    # "lightUpScreenKeyEnabler":Z
    :cond_31
    const/4 v6, 0x0

    goto :goto_19

    .line 224
    :cond_32
    const-string v20, "long_home_active_troch"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "long_home_active_troch"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_33

    const/4 v6, 0x1

    .line 226
    .restart local v6    # "lightUpScreenKeyEnabler":Z
    :goto_1a
    iput-boolean v6, v2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    goto/16 :goto_1

    .line 225
    .end local v6    # "lightUpScreenKeyEnabler":Z
    :cond_33
    const/4 v6, 0x0

    goto :goto_1a
.end method

.method public static getDataCollectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "eventKey":Ljava/lang/String;
    const-string v1, "swing_lock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const-string v0, "swing"

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    const-string v1, "wide_touch"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    const-string v0, "wide"

    goto :goto_0

    .line 396
    :cond_2
    const-string v1, "mercury_keyboard"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    const-string v0, "mercury"

    goto :goto_0

    .line 398
    :cond_3
    const-string v1, "side_key_backlight"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    const-string v0, "sideb"

    goto :goto_0

    .line 400
    :cond_4
    const-string v1, "gesture_series"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 401
    const-string v0, "gesture"

    goto :goto_0

    .line 403
    :cond_5
    const-string v1, "slide_unlock"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    const-string v0, "siled"

    goto :goto_0

    .line 406
    :cond_6
    const-string v1, "smart_calling"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 407
    const-string v0, "smartcalling"

    goto :goto_0

    .line 408
    :cond_7
    const-string v1, "smart_call_answer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 409
    const-string v0, "smarttcall"

    goto :goto_0

    .line 410
    :cond_8
    const-string v1, "single_hand"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 411
    const-string v0, "single"

    goto :goto_0

    .line 412
    :cond_9
    const-string v1, "multiwindow"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 413
    const-string v0, "multiw"

    goto :goto_0

    .line 414
    :cond_a
    const-string v1, "smart_standby_enable"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 415
    const-string v0, "standby"

    goto :goto_0

    .line 416
    :cond_b
    const-string v1, "pocket_mode"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 417
    const-string v0, "pocket"

    goto :goto_0

    .line 418
    :cond_c
    const-string v1, "ringtone_weaken"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 419
    const-string v0, "weaken"

    goto/16 :goto_0

    .line 420
    :cond_d
    const-string v1, "wifi_switch_setting"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 421
    const-string v0, "wifiposi"

    goto/16 :goto_0

    .line 424
    :cond_e
    const-string v1, "gesture_topspeed_snap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 425
    const-string v0, "topspeed"

    goto/16 :goto_0

    .line 427
    :cond_f
    const-string v1, "gesture_light_up_screen"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    const-string v0, "lightup"

    goto/16 :goto_0
.end method

.method public static getHelpDescription(Ljava/lang/String;)I
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0a0153

    const v1, 0x7f0a0151

    .line 738
    const-string v2, "CharacterSettingsOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CharacterSettingsOperation getDescription key is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v2, "side_key_backlight"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 740
    const v0, 0x7f0a0121

    .line 798
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    const-string v2, "wide_touch"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 742
    const v0, 0x7f0a012f

    goto :goto_0

    .line 743
    :cond_2
    const-string v2, "mercury_keyboard"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 744
    const v0, 0x7f0a012c

    goto :goto_0

    .line 748
    :cond_3
    const-string v2, "gesture_series"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 749
    const v0, 0x7f0a0154

    goto :goto_0

    .line 750
    :cond_4
    const-string v2, "slide_unlock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 751
    const v0, 0x7f0a0124

    goto :goto_0

    .line 754
    :cond_5
    const-string v2, "swing_lock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 755
    const v0, 0x7f0a011a

    goto :goto_0

    .line 766
    :cond_6
    const-string v2, "pocket_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 767
    const v0, 0x7f0a0140

    goto :goto_0

    .line 768
    :cond_7
    const-string v2, "ringtone_weaken"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 769
    const v0, 0x7f0a0143

    goto :goto_0

    .line 772
    :cond_8
    const-string v2, "wifi_switch_setting"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 773
    const v0, 0x7f0a02a0

    goto :goto_0

    .line 774
    :cond_9
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 777
    const-string v2, "gesture_light_up_screen"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 778
    goto :goto_0

    .line 780
    :cond_a
    const-string v2, "gesture_pick_up"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 781
    const v0, 0x7f0a014c

    goto :goto_0

    .line 783
    :cond_b
    const-string v2, "gesture_wave_hand"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 784
    const v0, 0x7f0a014f

    goto/16 :goto_0

    .line 786
    :cond_c
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    const-string v0, "gesture_light_up_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 790
    goto/16 :goto_0

    .line 798
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getHelpDrawable(Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f02012f

    const v1, 0x7f02012d

    .line 547
    const-string v2, "pocket_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    const v0, 0x7f020132

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 549
    :cond_1
    const-string v2, "side_key_backlight"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 550
    const v0, 0x7f020134

    goto :goto_0

    .line 551
    :cond_2
    const-string v2, "mercury_keyboard"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 552
    const v0, 0x7f020131

    goto :goto_0

    .line 553
    :cond_3
    const-string v2, "swing_lock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    const v0, 0x7f020138

    goto :goto_0

    .line 555
    :cond_4
    const-string v2, "ringtone_weaken"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 556
    const v0, 0x7f020133

    goto :goto_0

    .line 560
    :cond_5
    const-string v2, "slide_unlock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 561
    const v0, 0x7f020137

    goto :goto_0

    .line 572
    :cond_6
    const-string v2, "wide_touch"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 573
    const v0, 0x7f020139

    goto :goto_0

    .line 574
    :cond_7
    const-string v2, "wifi_switch_setting"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 575
    const v0, 0x7f02013a

    goto :goto_0

    .line 576
    :cond_8
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    const-string v2, "gesture_light_up_screen"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 580
    goto :goto_0

    .line 582
    :cond_9
    const-string v2, "gesture_pick_up"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 583
    const v0, 0x7f02012e

    goto :goto_0

    .line 585
    :cond_a
    const-string v2, "gesture_wave_hand"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 586
    const v0, 0x7f020130

    goto :goto_0

    .line 588
    :cond_b
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 591
    const-string v0, "gesture_light_up_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    .line 592
    goto/16 :goto_0

    .line 596
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getSettingsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "swing_lock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "swing_lock_enabled"

    .line 341
    :goto_0
    return-object v0

    .line 240
    :cond_0
    const-string v0, "slide_unlock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "slide_unlock_enabled"

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "wide_touch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-string v0, "total_wide_touch"

    goto :goto_0

    .line 250
    :cond_2
    const-string v0, "mercury_keyboard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    const-string v0, "pref_key_mercury_keyboard_on"

    goto :goto_0

    .line 252
    :cond_3
    const-string v0, "side_key_backlight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    const-string v0, "side_key_backlight"

    goto :goto_0

    .line 256
    :cond_4
    const-string v0, "wake_key_enabled"

    goto :goto_0

    .line 258
    :cond_5
    const-string v0, "gesture_series"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    const-string v0, "black_gesture_wakeup_all_enable"

    goto :goto_0

    .line 261
    :cond_6
    const-string v0, "smart_calling"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    const-string v0, "pref_key_smart_call_on"

    goto :goto_0

    .line 263
    :cond_7
    const-string v0, "smart_call_answer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    const-string v0, "smart_call_answer"

    goto :goto_0

    .line 265
    :cond_8
    const-string v0, "single_hand"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 266
    const-string v0, "settings_single_hand"

    goto :goto_0

    .line 267
    :cond_9
    const-string v0, "smart_standby_enable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 268
    const-string v0, "smart_standby_enable"

    goto :goto_0

    .line 269
    :cond_a
    const-string v0, "pocket_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 273
    const-string v0, "lenovo_pocket_mode"

    goto :goto_0

    .line 274
    :cond_b
    const-string v0, "ringtone_weaken"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 275
    const-string v0, "lenovo_weaken_mode"

    goto/16 :goto_0

    .line 284
    :cond_c
    const-string v0, "multiwindow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 285
    const-string v0, "multiwindow_key_enabled"

    goto/16 :goto_0

    .line 299
    :cond_d
    const-string v0, "touch_free_phone_dial"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    const-string v0, "com.lenovo.freedial.enable.all"

    goto/16 :goto_0

    .line 301
    :cond_e
    const-string v0, "touch_free_phone_answer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 302
    const-string v0, "com.lenovo.freedial.enable.answer"

    goto/16 :goto_0

    .line 336
    :cond_f
    const-string v0, "wifi_switch_setting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 337
    const-string v0, "wifi_switch_setting"

    goto/16 :goto_0

    .line 338
    :cond_10
    const-string v0, "wifi_switch_setting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 339
    const-string v0, "wifi_switch_setting"

    goto/16 :goto_0

    .line 341
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getStatusText(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v1, "CharacterSettingsOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CharacterSettingsOperation getStatusText key is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v1, "side_key_backlight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    new-instance v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;

    invoke-direct {v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;-><init>()V

    .line 604
    .local v0, "statusSummary":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;, "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject<Ljava/lang/Integer;>;"
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state2:Ljava/lang/Object;

    .line 605
    iget-object v1, v0, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 659
    .end local v0    # "statusSummary":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;, "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject<Ljava/lang/Integer;>;"
    :goto_0
    return v1

    .line 606
    :cond_0
    const-string v1, "wide_touch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 608
    :cond_1
    const-string v1, "mercury_keyboard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 610
    :cond_2
    const-string v1, "gesture_series"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 612
    :cond_3
    const-string v1, "slide_unlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 613
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 615
    :cond_4
    const-string v1, "swing_lock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 616
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 617
    :cond_5
    const-string v1, "pocket_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 618
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 619
    :cond_6
    const-string v1, "ringtone_weaken"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 620
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 621
    :cond_7
    const-string v1, "gesture_series"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 622
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 629
    :cond_8
    const-string v1, "single_hand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 630
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 633
    :cond_9
    const-string v1, "touch_free_phone_dial"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 634
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 635
    :cond_a
    const-string v1, "touch_free_phone_answer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 636
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 637
    :cond_b
    const-string v1, "wifi_switch_setting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 638
    const v1, 0x7f0a029b

    goto/16 :goto_0

    .line 639
    :cond_c
    const-string v1, "gesture_topspeed_snap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 640
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 642
    :cond_d
    const-string v1, "gesture_light_up_screen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 643
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 645
    :cond_e
    const-string v1, "gesture_pick_up"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 646
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 648
    :cond_f
    const-string v1, "gesture_wave_hand"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 649
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 651
    :cond_10
    const-string v1, "gesture_topspeed_snap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 652
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 654
    :cond_11
    const-string v1, "gesture_light_up_screen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 655
    invoke-static {p0, p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->commonLenovoStatusContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 659
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getSummary(Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0a0153

    const v1, 0x7f0a0151

    .line 670
    const-string v2, "swing_lock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    const v0, 0x7f0a0119

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    const-string v2, "wide_touch"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 673
    const v0, 0x7f0a012e

    goto :goto_0

    .line 676
    :cond_2
    const-string v2, "mercury_keyboard"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 677
    const v0, 0x7f0a012b

    goto :goto_0

    .line 678
    :cond_3
    const-string v2, "side_key_backlight"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 679
    const v0, 0x7f0a0120

    goto :goto_0

    .line 680
    :cond_4
    const-string v2, "gesture_series"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 681
    const v0, 0x7f0a0126

    goto :goto_0

    .line 682
    :cond_5
    const-string v2, "smart_calling"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 683
    const v0, 0x7f0a0129

    goto :goto_0

    .line 684
    :cond_6
    const-string v2, "smart_call_answer"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 685
    const v0, 0x7f0a011c

    goto :goto_0

    .line 691
    :cond_7
    const-string v2, "smart_standby_enable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 692
    const v0, 0x7f0a0133

    goto :goto_0

    .line 697
    :cond_8
    const-string v2, "single_hand"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 698
    const v0, 0x7f0a0137

    goto :goto_0

    .line 701
    :cond_9
    const-string v2, "pocket_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 702
    const v0, 0x7f0a013f

    goto :goto_0

    .line 703
    :cond_a
    const-string v2, "ringtone_weaken"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 704
    const v0, 0x7f0a0142

    goto :goto_0

    .line 705
    :cond_b
    const-string v2, "wifi_switch_setting"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 706
    const v0, 0x7f0a02a0

    goto/16 :goto_0

    .line 707
    :cond_c
    const-string v2, "slide_unlock"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 708
    const v0, 0x7f0a0123

    goto/16 :goto_0

    .line 709
    :cond_d
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    const-string v2, "gesture_light_up_screen"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    .line 713
    goto/16 :goto_0

    .line 715
    :cond_e
    const-string v2, "gesture_pick_up"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 716
    const v0, 0x7f0a014c

    goto/16 :goto_0

    .line 718
    :cond_f
    const-string v2, "gesture_wave_hand"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 719
    const v0, 0x7f0a014f

    goto/16 :goto_0

    .line 721
    :cond_10
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    const-string v0, "gesture_light_up_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 725
    goto/16 :goto_0

    .line 729
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getTitleRes(Ljava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f0a0152

    const v2, 0x7f0a0150

    const v0, 0x7f0a0136

    .line 802
    const-string v3, "CharacterSettingsOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CharacterSettingsOperation getTitleRes key is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v3, "side_key_backlight"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    const v0, 0x7f0a011f

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 805
    :cond_1
    const-string v3, "wide_touch"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 806
    const v0, 0x7f0a012d

    goto :goto_0

    .line 807
    :cond_2
    const-string v3, "gesture_series"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 808
    const v0, 0x7f0a0125

    goto :goto_0

    .line 809
    :cond_3
    const-string v3, "mercury_keyboard"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 810
    const v0, 0x7f0a012a

    goto :goto_0

    .line 811
    :cond_4
    const-string v3, "swing_lock"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 812
    const v0, 0x7f0a0118

    goto :goto_0

    .line 813
    :cond_5
    const-string v3, "smart_calling"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 814
    const v0, 0x7f0a0128

    goto :goto_0

    .line 815
    :cond_6
    const-string v3, "smart_call_answer"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 816
    const v0, 0x7f0a011b

    goto :goto_0

    .line 817
    :cond_7
    const-string v3, "single_hand"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    const-string v3, "smart_standby_enable"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 820
    const v0, 0x7f0a0132

    goto :goto_0

    .line 821
    :cond_8
    const-string v3, "pocket_mode"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 822
    const v0, 0x7f0a013e

    goto :goto_0

    .line 823
    :cond_9
    const-string v3, "ringtone_weaken"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 824
    const v0, 0x7f0a0141

    goto :goto_0

    .line 830
    :cond_a
    const-string v3, "slide_unlock"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 831
    const v0, 0x7f0a0122

    goto :goto_0

    .line 833
    :cond_b
    const-string v3, "single_hand"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 837
    const-string v0, "wifi_switch_setting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 838
    const v0, 0x7f0a029b

    goto/16 :goto_0

    .line 839
    :cond_c
    const-string v0, "gesture_topspeed_snap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 840
    goto/16 :goto_0

    .line 841
    :cond_d
    const-string v0, "gesture_light_up_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    .line 842
    goto/16 :goto_0

    .line 844
    :cond_e
    const-string v0, "gesture_pick_up"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 845
    const v0, 0x7f0a014b

    goto/16 :goto_0

    .line 846
    :cond_f
    const-string v0, "gesture_wave_hand"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 847
    const v0, 0x7f0a014e

    goto/16 :goto_0

    .line 849
    :cond_10
    const-string v0, "gesture_topspeed_snap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 850
    goto/16 :goto_0

    .line 851
    :cond_11
    const-string v0, "gesture_light_up_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    .line 852
    goto/16 :goto_0

    .line 856
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static setCheckState(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "characterObj":Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;, "Lcom/lenovo/settings/charactersettings/CharacterSettingsObject<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 434
    const-string v2, "CharacterSettingsOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CharacterSettingsOperation setCheckState key is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isChecked is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-boolean v1, p2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    .line 438
    .local v1, "isChecked":Z
    const-string v2, "wide_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-static {p1}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->getDataCollectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "evnt":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    .line 443
    const-string v2, "charc"

    invoke-static {p0, v2, v0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->doDataCollect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v0    # "evnt":Ljava/lang/String;
    :cond_0
    const-string v2, "swing_lock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "swing_lock_enabled"

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    :goto_2
    return-void

    .restart local v0    # "evnt":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 441
    goto :goto_0

    .end local v0    # "evnt":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 449
    goto :goto_1

    .line 450
    :cond_3
    const-string v2, "wide_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "total_wide_touch"

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    .line 455
    :cond_5
    const-string v2, "mercury_keyboard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "pref_key_mercury_keyboard_on"

    if-eqz v1, :cond_6

    :goto_4
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_4

    .line 457
    :cond_7
    const-string v2, "side_key_backlight"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 458
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "side_key_backlight"

    if-eqz v1, :cond_8

    :goto_5
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_5

    .line 462
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_key_enabled"

    if-eqz v1, :cond_a

    :goto_6
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_6

    .line 466
    :cond_b
    const-string v2, "gesture_series"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "black_gesture_wakeup_all_enable"

    if-eqz v1, :cond_c

    :goto_7
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_c
    move v3, v4

    goto :goto_7

    .line 471
    :cond_d
    const-string v2, "slide_unlock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 472
    invoke-static {v1, p0}, Lcom/lenovo/settings/charactersettings/CharacterSettingsOperation;->setSlideUnlock(ZLandroid/content/Context;)V

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "slide_unlock_enabled"

    if-eqz v1, :cond_e

    :goto_8
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    move v3, v4

    goto :goto_8

    .line 475
    :cond_f
    const-string v2, "smart_calling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 476
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "pref_key_smart_call_on"

    if-eqz v1, :cond_10

    :goto_9
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    move v3, v4

    goto :goto_9

    .line 477
    :cond_11
    const-string v2, "smart_call_answer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_call_answer"

    if-eqz v1, :cond_12

    :goto_a
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_12
    move v3, v4

    goto :goto_a

    .line 480
    :cond_13
    const-string v2, "single_hand"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "settings_single_hand"

    if-eqz v1, :cond_14

    :goto_b
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_14
    move v3, v4

    goto :goto_b

    .line 483
    :cond_15
    const-string v2, "multiwindow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "multiwindow_key_enabled"

    if-eqz v1, :cond_16

    :goto_c
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_16
    move v3, v4

    goto :goto_c

    .line 488
    :cond_17
    const-string v2, "smart_standby_enable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "smart_standby_enable"

    if-eqz v1, :cond_18

    :goto_d
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_18
    move v3, v4

    goto :goto_d

    .line 490
    :cond_19
    const-string v2, "pocket_mode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lenovo_pocket_mode"

    if-eqz v1, :cond_1a

    :goto_e
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    const-string v2, "CharacterSettingsOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CharacterSettingsOperation setCheckedState is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1a
    move v3, v4

    .line 497
    goto :goto_e

    .line 499
    :cond_1b
    const-string v2, "ringtone_weaken"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lenovo_weaken_mode"

    if-eqz v1, :cond_1c

    :goto_f
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1c
    move v3, v4

    goto :goto_f

    .line 521
    :cond_1d
    const-string v2, "wifi_switch_setting"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_switch_setting"

    if-eqz v1, :cond_1e

    :goto_10
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    if-eqz v1, :cond_1f

    .line 524
    const-string v2, "persist.sys.afmsvr"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1e
    move v3, v4

    .line 522
    goto :goto_10

    .line 526
    :cond_1f
    const-string v2, "persist.sys.afmsvr"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 530
    :cond_20
    const-string v2, "gesture_topspeed_snap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "black_gesture_top_speed_snap_enable"

    if-eqz v1, :cond_21

    :goto_11
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_21
    move v3, v4

    goto :goto_11

    .line 533
    :cond_22
    const-string v2, "gesture_light_up_screen"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "black_gesture_light_up_enable"

    if-eqz v1, :cond_23

    :goto_12
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_23
    move v3, v4

    goto :goto_12

    .line 535
    :cond_24
    const-string v2, "long_home_active_troch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "long_home_active_troch"

    if-eqz v1, :cond_25

    :goto_13
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_25
    move v3, v4

    goto :goto_13

    .line 537
    :cond_26
    const-string v2, "gesture_pick_up"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "black_gesture_pick_up_enable"

    if-eqz v1, :cond_27

    :goto_14
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_27
    move v3, v4

    goto :goto_14

    .line 541
    :cond_28
    const-string v2, "CharacterSettingsOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CharacterSettingsOperation setCheckState key is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isChecked is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p2, Lcom/lenovo/settings/charactersettings/CharacterSettingsObject;->state1:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---is not sava--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static setSlideUnlock(ZLandroid/content/Context;)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    const/16 v0, 0x30

    .line 365
    .local v0, "setVal":B
    return-void
.end method
