.class Lcom/android/internal/telephony/SubInfoRecordUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "SubInfoRecordUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubInfoRecordUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    const-string v14, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "action":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 195
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 196
    const-string v14, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "simStatus":Ljava/lang/String;
    const-string v14, "slot"

    const/16 v15, -0x3e8

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 199
    .local v10, "slotId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 200
    const/16 v14, -0x3e8

    if-ne v10, v14, :cond_0

    .line 316
    .end local v9    # "simStatus":Ljava/lang/String;
    .end local v10    # "slotId":I
    :goto_0
    return-void

    .line 203
    .restart local v9    # "simStatus":Ljava/lang/String;
    .restart local v10    # "slotId":I
    :cond_0
    const-string v14, "READY"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "LOCKED"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 205
    :cond_1
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    if-eqz v14, :cond_4

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    const-string v15, "N/A"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 207
    :cond_2
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    const-string v15, "N/A"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 208
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " hot plug in"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 210
    :cond_3
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v15, v14, v10

    .line 211
    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$202(Z)Z

    .line 213
    :cond_4
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$300()[I

    move-result-object v14

    const/4 v15, 0x1

    aput v15, v14, v10

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    const/16 v15, 0xa

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I
    invoke-static {v14, v15}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$402(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)I

    .line 215
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v15, v15, v10

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    .line 216
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sIccId["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 217
    const-string v14, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$500(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v14

    if-eqz v14, :cond_6

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 219
    new-instance v14, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$1;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater$2;)V

    invoke-virtual {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$1;->start()V

    .line 315
    .end local v9    # "simStatus":Ljava/lang/String;
    .end local v10    # "slotId":I
    :cond_5
    :goto_1
    const-string v14, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    .restart local v9    # "simStatus":Ljava/lang/String;
    .restart local v10    # "slotId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V
    invoke-static {v14, v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$600(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V

    goto :goto_1

    .line 228
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$500(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v14

    if-eqz v14, :cond_5

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 229
    new-instance v14, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$2;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater$2;)V

    invoke-virtual {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$2;->start()V

    goto :goto_1

    .line 237
    :cond_8
    const-string v14, "LOADED"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    const/16 v15, 0xa

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mReadIccIdCount:I
    invoke-static {v14, v15}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$402(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)I

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->queryIccId(I)V
    invoke-static {v14, v10}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$600(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V

    .line 240
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$700()Landroid/telephony/TelephonyManager;

    move-result-object v14

    if-nez v14, :cond_9

    .line 241
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$800()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v14

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$702(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 244
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v14

    const/4 v15, 0x0

    aget-wide v12, v14, v15

    .line 246
    .local v12, "subId":J
    invoke-static {v12, v13}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 247
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "msisdn":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$800()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 250
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v8, :cond_a

    .line 251
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v12, v13, v15}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;JZ)I

    .line 254
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSubName(J)V
    invoke-static {v14, v12, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$900(Lcom/android/internal/telephony/SubInfoRecordUpdater;J)V

    .line 259
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "msisdn":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->startNewSimActivityIfNeed()V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1000(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    goto/16 :goto_1

    .line 256
    :cond_b
    const-string v14, "[Receiver] Invalid subId, could not update ContentResolver"

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 261
    .end local v12    # "subId":J
    :cond_c
    const-string v14, "ABSENT"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 262
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    if-eqz v14, :cond_d

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v10

    const-string v15, "N/A"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " hot plug out"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 264
    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$202(Z)Z

    .line 266
    :cond_d
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1100()[Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v15, v14, v10

    .line 267
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$100()[Ljava/lang/String;

    move-result-object v14

    const-string v15, "N/A"

    aput-object v15, v14, v10

    .line 268
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$300()[I

    move-result-object v14

    const/4 v15, 0x1

    aput v15, v14, v10

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$500(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v14

    if-eqz v14, :cond_e

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sNeedUpdate:Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$200()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 271
    new-instance v14, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$3;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater$2;)V

    invoke-virtual {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$3;->start()V

    .line 278
    :cond_e
    if-ltz v10, :cond_f

    .line 279
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1200()[Z

    move-result-object v14

    const/4 v15, 0x1

    aput-boolean v15, v14, v10

    .line 281
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->startNewSimActivityIfNeed()V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1000(Lcom/android/internal/telephony/SubInfoRecordUpdater;)V

    goto/16 :goto_1

    .line 282
    :cond_10
    const-string v14, "IMSI"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 283
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Lenovo: SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IMSI"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 284
    if-ltz v10, :cond_5

    .line 285
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mAllowShowNewSim:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1200()[Z

    move-result-object v14

    const/4 v15, 0x1

    aput-boolean v15, v14, v10

    goto/16 :goto_1

    .line 289
    .end local v9    # "simStatus":Ljava/lang/String;
    .end local v10    # "slotId":I
    :cond_11
    const-string v14, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 290
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1300()I

    move-result v14

    if-ge v5, v14, :cond_12

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->clearIccId(I)V
    invoke-static {v14, v5}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1400(Lcom/android/internal/telephony/SubInfoRecordUpdater;I)V

    .line 292
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/SubscriptionController;->clearSubInfo(I)I

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 294
    :cond_12
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sUpdateIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1500()Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 295
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$800()Landroid/content/Context;

    move-result-object v14

    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->sUpdateIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$1500()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 297
    .end local v5    # "i":I
    :cond_13
    const-string v14, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 298
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubIdList()[J

    move-result-object v11

    .line 299
    .local v11, "subIdList":[J
    move-object v3, v11

    .local v3, "arr$":[J
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v7, :cond_5

    aget-wide v12, v3, v6

    .line 300
    .restart local v12    # "subId":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->updateSubName(J)V
    invoke-static {v14, v12, v13}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$900(Lcom/android/internal/telephony/SubInfoRecordUpdater;J)V

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 302
    .end local v3    # "arr$":[J
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "subIdList":[J
    .end local v12    # "subId":J
    :cond_14
    const-string v14, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 303
    const-string v14, "slot"

    const/16 v15, -0x3e8

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 305
    .restart local v10    # "slotId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_COMMON_SLOT_NO_CHANGED, slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$000(Ljava/lang/String;)V

    .line 306
    # getter for: Lcom/android/internal/telephony/SubInfoRecordUpdater;->mSimStateCount:[I
    invoke-static {}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$300()[I

    move-result-object v14

    const/4 v15, 0x1

    aput v15, v14, v10

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubInfoRecordUpdater$2;->this$0:Lcom/android/internal/telephony/SubInfoRecordUpdater;

    # invokes: Lcom/android/internal/telephony/SubInfoRecordUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater;->access$500(Lcom/android/internal/telephony/SubInfoRecordUpdater;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 308
    new-instance v14, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$4;-><init>(Lcom/android/internal/telephony/SubInfoRecordUpdater$2;)V

    invoke-virtual {v14}, Lcom/android/internal/telephony/SubInfoRecordUpdater$2$4;->start()V

    goto/16 :goto_1
.end method
