.class public Lcom/android/mistyrain/Doubleclick;
.super Landroid/widget/LinearLayout;
.source "Doubleclick.java"


# instance fields
.field private Reboot_item:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field distance:D

.field i:I

.field isopenlight:Z

.field item:I

.field lasttime:J

.field m_Camera:Landroid/hardware/Camera;

.field packgeactivity:Ljava/lang/String;

.field packgename:Ljava/lang/String;

.field pixleheight:I

.field screenBrightness:I

.field startitem:I

.field time:J

.field widthPixels:D

.field x:D

.field y:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mistyrain/Doubleclick;->time:J

    .line 35
    const-wide/16 v0, -0x1f4

    iput-wide v0, p0, Lcom/android/mistyrain/Doubleclick;->lasttime:J

    .line 37
    iput v3, p0, Lcom/android/mistyrain/Doubleclick;->startitem:I

    .line 42
    const-wide v0, 0x4090e00000000000L    # 1080.0

    iput-wide v0, p0, Lcom/android/mistyrain/Doubleclick;->widthPixels:D

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5173\u673a"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u91cd\u542f\u624b\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u8fdb\u5165recovery\u6a21\u5f0f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8fdb\u5165bootloader\u6a21\u5f0f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mistyrain/Doubleclick;->Reboot_item:[Ljava/lang/String;

    .line 52
    iput-boolean v3, p0, Lcom/android/mistyrain/Doubleclick;->isopenlight:Z

    .line 60
    iput-object p1, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    .line 61
    const-string v0, "com.meizu.media.camera"

    iput-object v0, p0, Lcom/android/mistyrain/Doubleclick;->packgename:Ljava/lang/String;

    .line 62
    const-string v0, "com.meizu.media.camera.CameraActivity"

    iput-object v0, p0, Lcom/android/mistyrain/Doubleclick;->packgeactivity:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/android/mistyrain/Doubleclick;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mistyrain/Doubleclick;->pixleheight:I

    .line 70
    new-instance v0, Lcom/android/mistyrain/Doubleclick$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mistyrain/Doubleclick$1;-><init>(Lcom/android/mistyrain/Doubleclick;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/mistyrain/Doubleclick;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v0, Lcom/android/mistyrain/Doubleclick$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mistyrain/Doubleclick$2;-><init>(Lcom/android/mistyrain/Doubleclick;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/mistyrain/Doubleclick;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 102
    return-void
.end method

.method private Clickaction(I)V
    .registers 22
    .param p1, "i"    # I

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_2ac

    .line 367
    :goto_3
    :pswitch_3
    return-void

    .line 123
    :pswitch_4
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->packgename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->packgeactivity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v11, "name":Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v8, "it":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 132
    .end local v8    # "it":Landroid/content/Intent;
    .end local v11    # "name":Landroid/content/ComponentName;
    :pswitch_3b
    new-instance v4, Lcom/android/mistyrain/clean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/android/mistyrain/clean;-><init>(Landroid/content/Context;)V

    .line 134
    .local v4, "c":Lcom/android/mistyrain/clean;
    goto :goto_3

    .line 137
    .end local v4    # "c":Lcom/android/mistyrain/clean;
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "power"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 138
    .local v13, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_3

    .line 162
    .end local v13    # "pm":Landroid/os/PowerManager;
    :pswitch_61
    new-instance v7, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    const-string v16, "android.intent.category.HOME"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 174
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_84
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mistyrain/Doubleclick;->isopenlight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a1

    const/16 v16, 0x0

    :goto_8e
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mistyrain/Doubleclick;->isopenlight:Z

    .line 175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mistyrain/Doubleclick;->isopenlight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a4

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/mistyrain/Doubleclick;->OpenLightOn()V

    goto/16 :goto_3

    .line 174
    :cond_a1
    const/16 v16, 0x1

    goto :goto_8e

    .line 178
    :cond_a4
    invoke-direct/range {p0 .. p0}, Lcom/android/mistyrain/Doubleclick;->CloseLightOff()V

    goto/16 :goto_3

    .line 184
    :pswitch_a9
    const-string v16, "input keyevent 4"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 189
    :pswitch_b0
    const-string v16, "input keyevent 82"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 194
    :pswitch_b7
    const-string v16, "input keyevent 25"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 199
    :pswitch_be
    const-string v16, "input keyevent 24"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 203
    :pswitch_c5
    const-string v16, "input keyevent 5"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 208
    :pswitch_cc
    new-instance v14, Lcom/android/mistyrain/screenshot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/mistyrain/screenshot;-><init>(Landroid/content/Context;)V

    .line 209
    .local v14, "s":Lcom/android/mistyrain/screenshot;
    invoke-virtual {v14}, Lcom/android/mistyrain/screenshot;->InitNotification()V

    .line 210
    invoke-virtual {v14}, Lcom/android/mistyrain/screenshot;->ScreenShot()V

    goto/16 :goto_3

    .line 215
    .end local v14    # "s":Lcom/android/mistyrain/screenshot;
    :pswitch_e1
    new-instance v15, Lcom/android/mistyrain/WifiOpen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/mistyrain/WifiOpen;-><init>(Landroid/content/Context;)V

    .line 216
    .local v15, "wifi":Lcom/android/mistyrain/WifiOpen;
    invoke-virtual {v15}, Lcom/android/mistyrain/WifiOpen;->setWifiEnabled()V

    goto/16 :goto_3

    .line 222
    .end local v15    # "wifi":Lcom/android/mistyrain/WifiOpen;
    :pswitch_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 224
    .local v2, "a":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_128

    const/4 v2, 0x0

    .line 225
    :goto_10a
    const-string v16, "\u81ea\u52a8\u4eae\u5ea6"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/mistyrain/Doubleclick;->showtext(ILjava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 224
    :cond_128
    const/4 v2, 0x1

    goto :goto_10a

    .line 232
    .end local v2    # "a":I
    :pswitch_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accelerometer_rotation"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 234
    .local v3, "b":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_161

    const/4 v3, 0x0

    .line 235
    :goto_143
    const-string v16, "\u81ea\u52a8\u65cb\u8f6c"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/mistyrain/Doubleclick;->showtext(ILjava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accelerometer_rotation"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 234
    :cond_161
    const/4 v3, 0x1

    goto :goto_143

    .line 243
    .end local v3    # "b":I
    :pswitch_163
    :try_start_163
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.haxor"

    const-string v17, "com.haxor.ScreenFilter"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v12, "name2":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v9, "it2":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_191} :catch_193

    goto/16 :goto_3

    .line 250
    .end local v9    # "it2":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_193
    move-exception v16

    goto/16 :goto_3

    .line 261
    :pswitch_196
    :try_start_196
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.tencent.mm"

    const-string v17, "com.tencent.mm.ui.LauncherUI"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v10, "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1c4} :catch_1c6

    goto/16 :goto_3

    .line 268
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_1c6
    move-exception v6

    .line 269
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 276
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1da
    :try_start_1da
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.sina.weibo"

    const-string v17, "com.sina.weibo.MainTabActivity"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 278
    .restart local v10    # "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_208} :catch_20a

    goto/16 :goto_3

    .line 283
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_20a
    move-exception v6

    .line 284
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 292
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_21e
    :try_start_21e
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.tencent.mobileqq"

    const-string v17, "com.tencent.mobileqq.activity.SplashActivity"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 294
    .restart local v10    # "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_24c} :catch_24e

    goto/16 :goto_3

    .line 299
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_24e
    move-exception v6

    .line 300
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5QQ\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 308
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_262
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    const-string v17, "\u9ad8\u7ea7\u7535\u6e90\u83dc\u5355"

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Doubleclick;->Reboot_item:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/mistyrain/Doubleclick$3;

    invoke-direct/range {v19 .. v20}, Lcom/android/mistyrain/Doubleclick$3;-><init>(Lcom/android/mistyrain/Doubleclick;)V

    invoke-virtual/range {v16 .. v19}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 319
    const-string v17, "\u786e\u5b9a"

    new-instance v18, Lcom/android/mistyrain/Doubleclick$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mistyrain/Doubleclick$4;-><init>(Lcom/android/mistyrain/Doubleclick;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 350
    const-string v17, "\u53d6\u6d88"

    new-instance v18, Lcom/android/mistyrain/Doubleclick$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mistyrain/Doubleclick$5;-><init>(Lcom/android/mistyrain/Doubleclick;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 357
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 358
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    .line 113
    nop

    :pswitch_data_2ac
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3b
        :pswitch_49
        :pswitch_61
        :pswitch_84
        :pswitch_a9
        :pswitch_b0
        :pswitch_b7
        :pswitch_be
        :pswitch_c5
        :pswitch_cc
        :pswitch_e1
        :pswitch_f1
        :pswitch_12a
        :pswitch_163
        :pswitch_196
        :pswitch_1da
        :pswitch_21e
        :pswitch_262
    .end packed-switch
.end method

.method private CloseLightOff()V
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 511
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 512
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    .line 515
    :cond_11
    return-void
.end method

.method private OpenLightOn()V
    .registers 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_a

    .line 491
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    .line 494
    :cond_a
    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 495
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 497
    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/mistyrain/Doubleclick$6;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/Doubleclick$6;-><init>(Lcom/android/mistyrain/Doubleclick;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 501
    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 502
    return-void
.end method

.method static synthetic access$0(Lcom/android/mistyrain/Doubleclick;I)V
    .registers 2

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/mistyrain/Doubleclick;->Clickaction(I)V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 470
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 471
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v4, 0x0

    .line 473
    .local v4, "statusBarHeight":I
    :try_start_5
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 475
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_2a

    move-result v4

    .line 481
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_29
    return v4

    .line 478
    :catch_2a
    move-exception v1

    .line 479
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method


# virtual methods
.method public expandNotify()V
    .registers 7

    .prologue
    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 442
    .local v0, "currentApiVersion":I
    :try_start_2
    iget-object v4, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    .local v2, "service":Ljava/lang/Object;
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 445
    .local v3, "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 446
    .local v1, "expand":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_34

    .line 447
    const/16 v4, 0x10

    if-gt v0, v4, :cond_35

    .line 448
    const-string v4, "expand"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 449
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 450
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :goto_2a
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 456
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .end local v1    # "expand":Ljava/lang/reflect/Method;
    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_34
    :goto_34
    return-void

    .line 453
    .restart local v1    # "expand":Ljava/lang/reflect/Method;
    .restart local v2    # "service":Ljava/lang/Object;
    .restart local v3    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    const-string v4, "expandNotificationsPanel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3f

    move-result-object v1

    .line 452
    goto :goto_2a

    .line 459
    .end local v1    # "expand":Ljava/lang/reflect/Method;
    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3f
    move-exception v4

    goto :goto_34
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 374
    iget-object v2, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_brightness"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 377
    .local v1, "is":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_a0

    .line 428
    :cond_14
    :goto_14
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 381
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/mistyrain/Doubleclick;->x:D

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/android/mistyrain/Doubleclick;->y:D

    .line 383
    iget-object v2, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mistyrain/Doubleclick;->screenBrightness:I

    goto :goto_14

    .line 390
    :pswitch_38
    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/android/mistyrain/Doubleclick;->x:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/mistyrain/Doubleclick;->distance:D

    .line 394
    iget-wide v2, p0, Lcom/android/mistyrain/Doubleclick;->distance:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mistyrain/Doubleclick;->widthPixels:D

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x405b000000000000L    # 108.0

    div-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14

    .line 400
    iget v2, p0, Lcom/android/mistyrain/Doubleclick;->screenBrightness:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/mistyrain/Doubleclick;->distance:D

    iget-wide v6, p0, Lcom/android/mistyrain/Doubleclick;->widthPixels:D

    div-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 402
    .local v0, "brightnessvalue":I
    const/16 v2, 0xff

    if-lt v0, v2, :cond_6d

    .line 403
    const/16 v0, 0xff

    .line 405
    :cond_6d
    const/4 v2, 0x5

    if-gt v0, v2, :cond_71

    .line 406
    const/4 v0, 0x5

    .line 410
    :cond_71
    iget-object v2, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    iget-object v2, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14

    .line 422
    .end local v0    # "brightnessvalue":I
    :pswitch_88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/android/mistyrain/Doubleclick;->y:D

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/android/mistyrain/Doubleclick;->pixleheight:I

    mul-int/lit8 v4, v4, 0x14

    div-int/lit8 v4, v4, 0x42

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14

    .line 423
    invoke-virtual {p0}, Lcom/android/mistyrain/Doubleclick;->expandNotify()V

    goto/16 :goto_14

    .line 377
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_88
        :pswitch_38
    .end packed-switch
.end method

.method public showtext(ILjava/lang/String;)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 518
    if-nez p1, :cond_1c

    .line 519
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u5173\u95ed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    :goto_1b
    return-void

    .line 522
    :cond_1c
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u6253\u5f00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method
