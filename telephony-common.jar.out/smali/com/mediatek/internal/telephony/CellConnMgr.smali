.class public Lcom/mediatek/internal/telephony/CellConnMgr;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# static fields
.field private static final INTENT_SET_RADIO_POWER:Ljava/lang/String; = "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

.field public static final STATE_FLIGHT_MODE:I = 0x1

.field public static final STATE_RADIO_OFF:I = 0x2

.field public static final STATE_READY:I = 0x0

.field public static final STATE_ROAMING:I = 0x8

.field public static final STATE_SIM_LOCKED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CellConnMgr"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CellConnMgr must be created by indicated context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method private clearRoamingNeeded(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 372
    return-void
.end method

.method private isRadioOffBySimManagement(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 308
    const/4 v2, 0x1

    .line 310
    .local v2, "result":Z
    :try_start_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v1

    .line 313
    .local v1, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v1, :cond_0

    .line 314
    const-string v3, "CellConnMgr"

    const-string v4, "[isRadioOffBySimManagement] iTelEx is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v3, 0x0

    .line 324
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_0
    return v3

    .line 318
    .restart local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isRadioOffBySimManagement(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 323
    .end local v1    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_1
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isRadioOffBySimManagement]  subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 324
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private isRadioOn(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 329
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOff verify subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x1

    .line 332
    .local v2, "radioOn":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 335
    .local v1, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 336
    const-string v3, "CellConnMgr"

    const-string v4, "isRadioOff iTel is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v3, 0x0

    .line 346
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v3

    .line 340
    .restart local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 345
    .end local v1    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :goto_1
    const-string v3, "CellConnMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioOff subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " radio on? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 346
    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private isRoamingNeeded(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method private roamingRequest(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x1

    .line 375
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const-string v2, "CellConnMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_reminder_mode_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 386
    const-string v1, "CellConnMgr"

    const-string v2, "roamingRequest reminder always"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return v0

    .line 380
    :cond_0
    const-string v0, "CellConnMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roamingRequest subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 381
    goto :goto_0

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_reminder_mode_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRoamingNeeded(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 393
    const-string v1, "CellConnMgr"

    const-string v2, "roamingRequest reminder once and need to indicate"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_2
    const-string v0, "CellConnMgr"

    const-string v2, "roamingRequest result = false"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 398
    goto :goto_0
.end method


# virtual methods
.method public getCurrentState(JI)I
    .locals 11
    .param p1, "subId"    # J
    .param p3, "requestType"    # I

    .prologue
    .line 73
    const/4 v5, 0x0

    .line 76
    .local v5, "state":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "flightMode":I
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOn(J)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOffBySimManagement(J)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 83
    .local v2, "isRadioOff":Z
    :goto_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v4

    .line 84
    .local v4, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 85
    .local v6, "telephonyMgr":Landroid/telephony/TelephonyManager;
    const/4 v7, 0x2

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v7, 0x3

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 91
    .local v1, "isLocked":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/CellConnMgr;->roamingRequest(J)Z

    move-result v3

    .line 93
    .local v3, "isRoaming":Z
    const-string v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getCurrentState]subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; (flight mode, radio off, locked, roaming) = ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    packed-switch p3, :pswitch_data_0

    .line 123
    :pswitch_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_b

    const/4 v7, 0x1

    move v8, v7

    :goto_2
    if-eqz v2, :cond_c

    const/4 v7, 0x2

    :goto_3
    or-int/2addr v8, v7

    if-eqz v1, :cond_d

    const/4 v7, 0x4

    :goto_4
    or-int/2addr v8, v7

    if-eqz v3, :cond_e

    const/16 v7, 0x8

    :goto_5
    or-int v5, v8, v7

    .line 129
    :goto_6
    const-string v7, "CellConnMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getCurrentState] state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v5

    .line 80
    .end local v1    # "isLocked":Z
    .end local v2    # "isRadioOff":Z
    .end local v3    # "isRoaming":Z
    .end local v4    # "slotId":I
    .end local v6    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 85
    .restart local v2    # "isRadioOff":Z
    .restart local v4    # "slotId":I
    .restart local v6    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 99
    .restart local v1    # "isLocked":Z
    .restart local v3    # "isRoaming":Z
    :pswitch_1
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    const/4 v5, 0x1

    .line 100
    :goto_7
    goto :goto_6

    .line 99
    :cond_3
    const/4 v5, 0x0

    goto :goto_7

    .line 103
    :pswitch_2
    if-eqz v2, :cond_4

    const/4 v5, 0x2

    .line 104
    :goto_8
    goto :goto_6

    .line 103
    :cond_4
    const/4 v5, 0x0

    goto :goto_8

    .line 107
    :pswitch_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    const/4 v7, 0x1

    move v8, v7

    :goto_9
    if-eqz v2, :cond_6

    const/4 v7, 0x2

    :goto_a
    or-int/2addr v8, v7

    if-eqz v1, :cond_7

    const/4 v7, 0x4

    :goto_b
    or-int v5, v8, v7

    .line 110
    goto :goto_6

    .line 107
    :cond_5
    const/4 v7, 0x0

    move v8, v7

    goto :goto_9

    :cond_6
    const/4 v7, 0x0

    goto :goto_a

    :cond_7
    const/4 v7, 0x0

    goto :goto_b

    .line 116
    :pswitch_4
    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    const/4 v7, 0x1

    move v8, v7

    :goto_c
    if-eqz v2, :cond_9

    const/4 v7, 0x2

    :goto_d
    or-int/2addr v8, v7

    if-eqz v3, :cond_a

    const/16 v7, 0x8

    :goto_e
    or-int v5, v8, v7

    .line 120
    goto :goto_6

    .line 116
    :cond_8
    const/4 v7, 0x0

    move v8, v7

    goto :goto_c

    :cond_9
    const/4 v7, 0x0

    goto :goto_d

    :cond_a
    const/4 v7, 0x0

    goto :goto_e

    .line 123
    :cond_b
    const/4 v7, 0x0

    move v8, v7

    goto :goto_2

    :cond_c
    const/4 v7, 0x0

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getStringUsingState(JI)Ljava/util/ArrayList;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x805009c

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "CellConnMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getStringUsingState] subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    and-int/lit8 v1, p3, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 159
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "CellConnMgr"

    const-string v2, "[getStringUsingState] STATE_FLIGHT_MODE + STATE_RADIO_OFF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    :goto_0
    const-string v1, "CellConnMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getStringUsingState]stringList size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1

    .line 168
    :cond_1
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 170
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "CellConnMgr"

    const-string v2, "[getStringUsingState] STATE_FLIGHT_MODE"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_2
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 181
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v1, "CellConnMgr"

    const-string v2, "[getStringUsingState] STATE_RADIO_OFF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    :cond_3
    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 192
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x805009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v1, "CellConnMgr"

    const-string v2, "[getStringUsingState] STATE_SIM_LOCKED"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public handleRequest(JI)V
    .locals 15
    .param p1, "subId"    # J
    .param p3, "state"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 232
    const-string v8, "CellConnMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[handleRequest] subId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    and-int/lit8 v8, p3, 0x1

    if-ne v8, v12, :cond_0

    .line 236
    iget-object v8, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    iget-object v8, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "state"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    const-string v8, "CellConnMgr"

    const-string v9, "[handleRequest] Turn off flight mode."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    and-int/lit8 v8, p3, 0x2

    if-ne v8, v13, :cond_5

    .line 246
    const/4 v6, 0x0

    .line 247
    .local v6, "mSimMode":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 249
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v7

    .line 251
    .local v7, "targetSubId":[J
    if-eqz v7, :cond_1

    aget-wide v8, v7, v11

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/CellConnMgr;->isRadioOn(J)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-static/range {p1 .. p2}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v8

    if-ne v3, v8, :cond_3

    .line 253
    :cond_2
    shl-int v8, v12, v3

    or-int/2addr v6, v8

    .line 247
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    .end local v7    # "targetSubId":[J
    :cond_4
    iget-object v8, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "msim_mode_setting"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "mode"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-object v8, p0, Lcom/mediatek/internal/telephony/CellConnMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    const-string v8, "CellConnMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[handleRequest] Turn radio on, MSIM mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v3    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "mSimMode":I
    :cond_5
    and-int/lit8 v8, p3, 0x1

    if-eq v8, v12, :cond_6

    and-int/lit8 v8, p3, 0x2

    if-eq v8, v13, :cond_6

    and-int/lit8 v8, p3, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 279
    :try_start_0
    const-string v8, "phoneEx"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    .line 282
    .local v4, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    move-wide/from16 v0, p1

    invoke-interface {v4, v0, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->broadcastIccUnlockIntent(J)Z

    .line 284
    const-string v8, "CellConnMgr"

    const-string v9, "[handleRequest] broadcastIccUnlockIntent"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    .end local v4    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_6
    :goto_1
    return-void

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 289
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v8, "CellConnMgr"

    const-string v9, "ITelephonyEx is null"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
