.class public Lcom/android/mistyrain/Singclick;
.super Landroid/widget/RelativeLayout;
.source "Singclick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;
    }
.end annotation


# instance fields
.field private Reboot_item:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field i:I

.field imageView:Landroid/widget/ImageView;

.field isopenlight:Z

.field item:I

.field m_Camera:Landroid/hardware/Camera;

.field packgeactivity:Ljava/lang/String;

.field packgename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v7, p0, Lcom/android/mistyrain/Singclick;->i:I

    .line 38
    iput-boolean v7, p0, Lcom/android/mistyrain/Singclick;->isopenlight:Z

    .line 45
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "\u5173\u673a"

    aput-object v5, v4, v7

    const-string v5, "\u91cd\u542f\u624b\u673a"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "\u8fdb\u5165recovery\u6a21\u5f0f"

    aput-object v6, v4, v5

    const-string v5, "\u8fdb\u5165bootloader\u6a21\u5f0f"

    aput-object v5, v4, v9

    iput-object v4, p0, Lcom/android/mistyrain/Singclick;->Reboot_item:[Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    .line 51
    const-string v4, "com.meizu.media.camera"

    iput-object v4, p0, Lcom/android/mistyrain/Singclick;->packgename:Ljava/lang/String;

    .line 52
    const-string v4, "com.meizu.media.camera.CameraActivity"

    iput-object v4, p0, Lcom/android/mistyrain/Singclick;->packgeactivity:Ljava/lang/String;

    .line 54
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    .line 56
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 57
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x64

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v2, "parmas":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/mistyrain/Singclick;->addView(Landroid/view/View;)V

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "ANDROID.STATUS_SINGLECLICK_SITE_CHANGER"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "ANDROID.STATUS_SINGLECLICK_OPEN_CHANGER"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v4, "ANDROID.INTENT.KEYLONGPRESS_EXTRE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    new-instance v5, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;

    invoke-direct {v5, p0}, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;-><init>(Lcom/android/mistyrain/Singclick;)V

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 74
    const-string v5, "status_key_open"

    .line 73
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "a":I
    if-ne v0, v8, :cond_9b

    .line 76
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "status_singleclick_site"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, "site":I
    packed-switch v3, :pswitch_data_b2

    .line 134
    :goto_86
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/mistyrain/Singclick$1;

    invoke-direct {v5, p0, p1}, Lcom/android/mistyrain/Singclick$1;-><init>(Lcom/android/mistyrain/Singclick;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/mistyrain/Singclick$2;

    invoke-direct {v5, p0, p1}, Lcom/android/mistyrain/Singclick$2;-><init>(Lcom/android/mistyrain/Singclick;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void

    .line 79
    .end local v3    # "site":I
    :cond_9b
    iget-object v4, p0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_79

    .line 87
    .restart local v3    # "site":I
    :pswitch_a3
    invoke-virtual {p0, v9}, Lcom/android/mistyrain/Singclick;->setGravity(I)V

    goto :goto_86

    .line 94
    :pswitch_a7
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/android/mistyrain/Singclick;->setGravity(I)V

    goto :goto_86

    .line 98
    :pswitch_ad
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/mistyrain/Singclick;->setGravity(I)V

    goto :goto_86

    .line 85
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_a7
        :pswitch_ad
    .end packed-switch
.end method

.method private Clickaction(I)V
    .registers 22
    .param p1, "i"    # I

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_2b8

    .line 454
    :goto_3
    :pswitch_3
    return-void

    .line 206
    :pswitch_4
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->packgename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->packgeactivity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v11, "name":Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v8, "it":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 215
    .end local v8    # "it":Landroid/content/Intent;
    .end local v11    # "name":Landroid/content/ComponentName;
    :pswitch_3b
    new-instance v4, Lcom/android/mistyrain/clean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/android/mistyrain/clean;-><init>(Landroid/content/Context;)V

    .line 217
    .local v4, "c":Lcom/android/mistyrain/clean;
    goto :goto_3

    .line 220
    .end local v4    # "c":Lcom/android/mistyrain/clean;
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0xff00ff

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "power"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 222
    .local v13, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_3

    .line 243
    .end local v13    # "pm":Landroid/os/PowerManager;
    :pswitch_6d
    new-instance v7, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    const-string v16, "android.intent.category.HOME"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 255
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_91
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mistyrain/Singclick;->isopenlight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_ae

    const/16 v16, 0x0

    :goto_9b
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mistyrain/Singclick;->isopenlight:Z

    .line 256
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mistyrain/Singclick;->isopenlight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b1

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/android/mistyrain/Singclick;->OpenLightOn()V

    goto/16 :goto_3

    .line 255
    :cond_ae
    const/16 v16, 0x1

    goto :goto_9b

    .line 259
    :cond_b1
    invoke-direct/range {p0 .. p0}, Lcom/android/mistyrain/Singclick;->CloseLightOff()V

    goto/16 :goto_3

    .line 265
    :pswitch_b6
    const-string v16, "input keyevent 4"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 270
    :pswitch_bd
    const-string v16, "input keyevent 82"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 275
    :pswitch_c4
    const-string v16, "input keyevent 25"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 280
    :pswitch_cb
    const-string v16, "input keyevent 24"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 284
    :pswitch_d2
    const-string v16, "input keyevent 5"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 291
    :pswitch_d9
    new-instance v14, Lcom/android/mistyrain/screenshot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/mistyrain/screenshot;-><init>(Landroid/content/Context;)V

    .line 292
    .local v14, "s":Lcom/android/mistyrain/screenshot;
    invoke-virtual {v14}, Lcom/android/mistyrain/screenshot;->InitNotification()V

    .line 293
    invoke-virtual {v14}, Lcom/android/mistyrain/screenshot;->ScreenShot()V

    goto/16 :goto_3

    .line 297
    .end local v14    # "s":Lcom/android/mistyrain/screenshot;
    :pswitch_ee
    new-instance v15, Lcom/android/mistyrain/WifiOpen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/mistyrain/WifiOpen;-><init>(Landroid/content/Context;)V

    .line 298
    .local v15, "wifi":Lcom/android/mistyrain/WifiOpen;
    invoke-virtual {v15}, Lcom/android/mistyrain/WifiOpen;->setWifiEnabled()V

    goto/16 :goto_3

    .line 304
    .end local v15    # "wifi":Lcom/android/mistyrain/WifiOpen;
    :pswitch_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 306
    .local v2, "a":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_135

    const/4 v2, 0x0

    .line 307
    :goto_117
    const-string v16, "\u81ea\u52a8\u4eae\u5ea6"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/mistyrain/Singclick;->showtext(ILjava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 306
    :cond_135
    const/4 v2, 0x1

    goto :goto_117

    .line 316
    .end local v2    # "a":I
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accelerometer_rotation"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 318
    .local v3, "b":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_16e

    const/4 v3, 0x0

    .line 319
    :goto_150
    const-string v16, "\u81ea\u52a8\u65cb\u8f6c"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/mistyrain/Singclick;->showtext(ILjava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accelerometer_rotation"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 318
    :cond_16e
    const/4 v3, 0x1

    goto :goto_150

    .line 328
    .end local v3    # "b":I
    :pswitch_170
    :try_start_170
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.haxor"

    const-string v17, "com.haxor.ScreenFilter"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v12, "name2":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v9, "it2":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_19e} :catch_1a0

    goto/16 :goto_3

    .line 335
    .end local v9    # "it2":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_1a0
    move-exception v16

    goto/16 :goto_3

    .line 343
    :pswitch_1a3
    :try_start_1a3
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.tencent.mm"

    const-string v17, "com.tencent.mm.ui.LauncherUI"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v10, "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 347
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1d1} :catch_1d3

    goto/16 :goto_3

    .line 350
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_1d3
    move-exception v6

    .line 351
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 357
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1e7
    :try_start_1e7
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.sina.weibo"

    const-string v17, "com.sina.weibo.MainTabActivity"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 359
    .restart local v10    # "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_215} :catch_217

    goto/16 :goto_3

    .line 364
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_217
    move-exception v6

    .line 365
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 372
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_22b
    :try_start_22b
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.tencent.mobileqq"

    const-string v17, "com.tencent.mobileqq.activity.SplashActivity"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 374
    .restart local v10    # "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_259} :catch_25b

    goto/16 :goto_3

    .line 379
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_25b
    move-exception v6

    .line 380
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5QQ\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 387
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_26f
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    const-string v17, "\u9ad8\u7ea7\u7535\u6e90\u83dc\u5355"

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/Singclick;->Reboot_item:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/mistyrain/Singclick$3;

    invoke-direct/range {v19 .. v20}, Lcom/android/mistyrain/Singclick$3;-><init>(Lcom/android/mistyrain/Singclick;)V

    invoke-virtual/range {v16 .. v19}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 398
    const-string v17, "\u786e\u5b9a"

    new-instance v18, Lcom/android/mistyrain/Singclick$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mistyrain/Singclick$4;-><init>(Lcom/android/mistyrain/Singclick;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 429
    const-string v17, "\u53d6\u6d88"

    new-instance v18, Lcom/android/mistyrain/Singclick$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mistyrain/Singclick$5;-><init>(Lcom/android/mistyrain/Singclick;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 436
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 437
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    .line 196
    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3b
        :pswitch_49
        :pswitch_6d
        :pswitch_91
        :pswitch_b6
        :pswitch_bd
        :pswitch_c4
        :pswitch_cb
        :pswitch_d2
        :pswitch_d9
        :pswitch_ee
        :pswitch_fe
        :pswitch_137
        :pswitch_170
        :pswitch_1a3
        :pswitch_1e7
        :pswitch_22b
        :pswitch_26f
    .end packed-switch
.end method

.method private CloseLightOff()V
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_11

    .line 564
    iget-object v0, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 565
    iget-object v0, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    .line 568
    :cond_11
    return-void
.end method

.method private OpenLightOn()V
    .registers 4

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    if-nez v1, :cond_a

    .line 544
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    .line 547
    :cond_a
    iget-object v1, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 548
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 550
    iget-object v1, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/mistyrain/Singclick$6;

    invoke-direct {v2, p0}, Lcom/android/mistyrain/Singclick$6;-><init>(Lcom/android/mistyrain/Singclick;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 554
    iget-object v1, p0, Lcom/android/mistyrain/Singclick;->m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 555
    return-void
.end method

.method static synthetic access$0(Lcom/android/mistyrain/Singclick;I)V
    .registers 2

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/mistyrain/Singclick;->Clickaction(I)V

    return-void
.end method


# virtual methods
.method public showtext(ILjava/lang/String;)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 573
    if-nez p1, :cond_1c

    .line 574
    iget-object v0, p0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

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

    .line 580
    :goto_1b
    return-void

    .line 577
    :cond_1c
    iget-object v0, p0, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

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
