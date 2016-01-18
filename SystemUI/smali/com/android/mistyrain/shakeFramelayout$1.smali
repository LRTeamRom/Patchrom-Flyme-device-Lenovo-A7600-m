.class Lcom/android/mistyrain/shakeFramelayout$1;
.super Ljava/lang/Object;
.source "shakeFramelayout.java"

# interfaces
.implements Lcom/android/mistyrain/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/shakeFramelayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/shakeFramelayout;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/shakeFramelayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/mistyrain/shakeFramelayout$1;)Lcom/android/mistyrain/shakeFramelayout;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    return-object v0
.end method


# virtual methods
.method public onShake()V
    .registers 21

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "shake"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/mistyrain/shakeFramelayout;->startitem:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/mistyrain/shakeFramelayout;->i:I

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "shake_speed"

    const/16 v18, 0xbb8

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    sput v16, Lcom/android/mistyrain/ShakeListener;->SPEED_SHRESHOLD:I

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "shake_inteval"

    const/16 v18, 0x64

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    sput v16, Lcom/android/mistyrain/ShakeListener;->UPTATE_INTERVAL_TIME:I

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/mistyrain/shakeFramelayout;->i:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_3c0

    .line 310
    :goto_71
    :pswitch_71
    return-void

    .line 80
    :pswitch_72
    new-instance v11, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->packgename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->packgeactivity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v11, "name":Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v8, "it":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_71

    .line 89
    .end local v8    # "it":Landroid/content/Intent;
    .end local v11    # "name":Landroid/content/ComponentName;
    :pswitch_bb
    new-instance v4, Lcom/android/mistyrain/clean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/android/mistyrain/clean;-><init>(Landroid/content/Context;)V

    .line 91
    .local v4, "c":Lcom/android/mistyrain/clean;
    goto :goto_71

    .line 94
    .end local v4    # "c":Lcom/android/mistyrain/clean;
    :pswitch_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "power"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 95
    .local v13, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_71

    .line 114
    .end local v13    # "pm":Landroid/os/PowerManager;
    :pswitch_ed
    new-instance v7, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    const-string v16, "android.intent.category.HOME"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_71

    .line 126
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/mistyrain/shakeFramelayout;->isopenlight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14c

    const/16 v16, 0x0

    :goto_12d
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/mistyrain/shakeFramelayout;->isopenlight:Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/mistyrain/shakeFramelayout;->isopenlight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14f

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    # invokes: Lcom/android/mistyrain/shakeFramelayout;->OpenLightOn()V
    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/shakeFramelayout;->access$0(Lcom/android/mistyrain/shakeFramelayout;)V

    goto/16 :goto_71

    .line 126
    :cond_14c
    const/16 v16, 0x1

    goto :goto_12d

    .line 130
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    # invokes: Lcom/android/mistyrain/shakeFramelayout;->CloseLightOff()V
    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/shakeFramelayout;->access$1(Lcom/android/mistyrain/shakeFramelayout;)V

    goto/16 :goto_71

    .line 135
    :pswitch_15a
    const-string v16, "input keyevent 4"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 140
    :pswitch_161
    const-string v16, "input keyevent 82"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 145
    :pswitch_168
    const-string v16, "input keyevent 25"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 150
    :pswitch_16f
    const-string v16, "input keyevent 24"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 154
    :pswitch_176
    const-string v16, "input keyevent 5"

    invoke-static/range {v16 .. v16}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto/16 :goto_71

    .line 159
    :pswitch_17d
    new-instance v14, Lcom/android/mistyrain/screenshot;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/android/mistyrain/screenshot;-><init>(Landroid/content/Context;)V

    .line 160
    .local v14, "s":Lcom/android/mistyrain/screenshot;
    invoke-virtual {v14}, Lcom/android/mistyrain/screenshot;->InitNotification()V

    .line 161
    invoke-virtual {v14}, Lcom/android/mistyrain/screenshot;->ScreenShot()V

    goto/16 :goto_71

    .line 165
    .end local v14    # "s":Lcom/android/mistyrain/screenshot;
    :pswitch_198
    new-instance v15, Lcom/android/mistyrain/WifiOpen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/mistyrain/WifiOpen;-><init>(Landroid/content/Context;)V

    .line 166
    .local v15, "wifi":Lcom/android/mistyrain/WifiOpen;
    invoke-virtual {v15}, Lcom/android/mistyrain/WifiOpen;->setWifiEnabled()V

    goto/16 :goto_71

    .line 171
    .end local v15    # "wifi":Lcom/android/mistyrain/WifiOpen;
    :pswitch_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, "a":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_1f7

    const/4 v2, 0x0

    .line 174
    :goto_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    const-string v17, "\u81ea\u52a8\u4eae\u5ea6"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/mistyrain/shakeFramelayout;->showtext(ILjava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_71

    .line 173
    :cond_1f7
    const/4 v2, 0x1

    goto :goto_1cd

    .line 181
    .end local v2    # "a":I
    :pswitch_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accelerometer_rotation"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, "b":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_242

    const/4 v3, 0x0

    .line 184
    :goto_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    const-string v17, "\u81ea\u52a8\u65cb\u8f6c"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/mistyrain/shakeFramelayout;->showtext(ILjava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "accelerometer_rotation"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_71

    .line 183
    :cond_242
    const/4 v3, 0x1

    goto :goto_218

    .line 192
    .end local v3    # "b":I
    :pswitch_244
    :try_start_244
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.haxor"

    const-string v17, "com.haxor.ScreenFilter"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v12, "name2":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v9, "it2":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_278} :catch_27a

    goto/16 :goto_71

    .line 199
    .end local v9    # "it2":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_27a
    move-exception v16

    goto/16 :goto_71

    .line 207
    :pswitch_27d
    :try_start_27d
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.tencent.mm"

    const-string v17, "com.tencent.mm.ui.LauncherUI"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v10, "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_2b1} :catch_2b3

    goto/16 :goto_71

    .line 214
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_2b3
    move-exception v6

    .line 215
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_71

    .line 221
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_2cd
    :try_start_2cd
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.sina.weibo"

    const-string v17, "com.sina.weibo.MainTabActivity"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 223
    .restart local v10    # "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_301
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_301} :catch_303

    goto/16 :goto_71

    .line 228
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_303
    move-exception v6

    .line 229
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5\u65b0\u6d6a\u5fae\u535a\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_71

    .line 237
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_31d
    :try_start_31d
    new-instance v12, Landroid/content/ComponentName;

    const-string v16, "com.tencent.mobileqq"

    const-string v17, "com.tencent.mobileqq.activity.SplashActivity"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .restart local v12    # "name2":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 239
    .restart local v10    # "it3":Landroid/content/Intent;
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_351} :catch_353

    goto/16 :goto_71

    .line 244
    .end local v10    # "it3":Landroid/content/Intent;
    .end local v12    # "name2":Landroid/content/ComponentName;
    :catch_353
    move-exception v6

    .line 245
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "\u60a8\u7684\u624b\u673a\u672a\u5b89\u88c5QQ\uff0c\u8bf7\u5b89\u88c5\u540e\u518d\u5c1d\u8bd5"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_71

    .line 252
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_36d
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    const-string v17, "\u9ad8\u7ea7\u7535\u6e90\u83dc\u5355"

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;

    move-object/from16 v17, v0

    # getter for: Lcom/android/mistyrain/shakeFramelayout;->Reboot_item:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/mistyrain/shakeFramelayout;->access$2(Lcom/android/mistyrain/shakeFramelayout;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    new-instance v19, Lcom/android/mistyrain/shakeFramelayout$1$1;

    invoke-direct/range {v19 .. v20}, Lcom/android/mistyrain/shakeFramelayout$1$1;-><init>(Lcom/android/mistyrain/shakeFramelayout$1;)V

    invoke-virtual/range {v16 .. v19}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 263
    const-string v17, "\u786e\u5b9a"

    new-instance v18, Lcom/android/mistyrain/shakeFramelayout$1$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mistyrain/shakeFramelayout$1$2;-><init>(Lcom/android/mistyrain/shakeFramelayout$1;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 294
    const-string v17, "\u53d6\u6d88"

    new-instance v18, Lcom/android/mistyrain/shakeFramelayout$1$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mistyrain/shakeFramelayout$1$3;-><init>(Lcom/android/mistyrain/shakeFramelayout$1;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 301
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 302
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_71

    .line 70
    :pswitch_data_3c0
    .packed-switch 0x0
        :pswitch_71
        :pswitch_72
        :pswitch_bb
        :pswitch_cf
        :pswitch_ed
        :pswitch_117
        :pswitch_15a
        :pswitch_161
        :pswitch_168
        :pswitch_16f
        :pswitch_176
        :pswitch_17d
        :pswitch_198
        :pswitch_1ae
        :pswitch_1f9
        :pswitch_244
        :pswitch_27d
        :pswitch_2cd
        :pswitch_31d
        :pswitch_36d
    .end packed-switch
.end method
