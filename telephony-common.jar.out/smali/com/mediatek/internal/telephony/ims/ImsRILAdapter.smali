.class public Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
.super Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;
.source "ImsRILAdapter.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_AT_CMD_DONE:I = 0x64

.field static final IMS_RILA_LOGD:Z = true

.field static final IMS_RILA_LOG_TAG:Ljava/lang/String; = "IMS: IMS_RILA"

.field private static final MAX_BYTE_COUNT:I = 0x100

.field static final MAX_CONNECTIONS:I = 0x7

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0


# instance fields
.field private mCallConnections:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mHandler:Landroid/os/Handler;

.field mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

.field mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;-><init>(Landroid/content/Context;)V

    .line 234
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 239
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    .line 257
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mContext:Landroid/content/Context;

    .line 258
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:[Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 260
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS:ImsRILAdapter constructor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;-><init>(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    .line 263
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiver:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter$ImsRILReceiver;

    const-string v2, "ImsRILReceiver"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    .line 264
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method private declared-synchronized executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "atCmdLine"    # Ljava/lang/String;

    .prologue
    .line 1064
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 1065
    .local v0, "atCmdResult":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1066
    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [B

    .line 1067
    .local v1, "cmdByte":[B
    const/16 v5, 0x101

    new-array v4, v5, [B

    .line 1068
    .local v4, "respByte":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1069
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    aput-byte v6, v1, v5

    .line 1071
    const-string v5, "IMS: IMS_RILA"

    const-string v6, "IMS: mDefaultCi.invokeOemRilRequestRaw() "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_0

    .line 1075
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1078
    :cond_0
    :try_start_2
    const-string v5, "IMS: IMS_RILA"

    const-string v6, "IMS: executeCommandResponse, CI of RILJ is null !!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1080
    :catch_0
    move-exception v2

    .line 1081
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1064
    .end local v0    # "atCmdResult":Ljava/lang/String;
    .end local v1    # "cmdByte":[B
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    .end local v3    # "rawData":[B
    .end local v4    # "respByte":[B
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private handleAtCmdResponseAndDial(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 1097
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    if-nez v0, :cond_0

    .line 1098
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS: mMoCall is null when calling"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-boolean v0, v0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsEmergency:Z

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 1113
    :goto_1
    iput-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget v2, v2, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 1109
    :cond_2
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS: CI of RILJ is null when handleAtCmdResponseAndDial"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 591
    const-string v1, "IMS: IMS_RILA"

    const-string v2, " IMS processResponse()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 595
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->processUnsolicited(Landroid/os/Parcel;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    if-nez v0, :cond_0

    .line 597
    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: We should not receive the RESPONSE_SOLICITED !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 22
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 850
    const-string v17, "IMS: IMS_RILA"

    const-string v18, " IMS processUnsolicited !!"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 854
    .local v12, "response":I
    sparse-switch v12, :sswitch_data_0

    .line 875
    :try_start_0
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unrecognized unsol response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :catch_0
    move-exception v16

    .line 878
    .local v16, "tr":Ljava/lang/Throwable;
    const-string v17, "IMS: IMS_RILA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception processing unsol response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local v16    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 855
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 883
    .local v13, "ret":Ljava/lang/Object;
    :goto_1
    sparse-switch v12, :sswitch_data_1

    goto :goto_0

    .line 913
    :sswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 856
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_2
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 857
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 858
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 859
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 860
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 861
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 862
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 863
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 864
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 865
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 868
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 869
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 870
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 871
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 872
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 873
    .end local v13    # "ret":Ljava/lang/Object;
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v13

    .restart local v13    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 886
    :sswitch_12
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 890
    :cond_1
    check-cast v13, [Ljava/lang/String;

    .end local v13    # "ret":Ljava/lang/Object;
    move-object v4, v13

    check-cast v4, [Ljava/lang/String;

    .line 891
    .local v4, "callInfo":[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 892
    .local v9, "msgType":I
    sparse-switch v9, :sswitch_data_2

    goto/16 :goto_0

    .line 896
    :sswitch_13
    const/16 v17, 0x0

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .line 897
    .local v3, "callId":I
    const/16 v17, 0x6

    aget-object v5, v4, v17

    .line 898
    .local v5, "callString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:[Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v5, v17, v3

    goto/16 :goto_0

    .line 903
    .end local v3    # "callId":I
    .end local v5    # "callString":Ljava/lang/String;
    :sswitch_14
    const/16 v17, 0x0

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .line 904
    .restart local v3    # "callId":I
    const/16 v17, 0x6

    aget-object v5, v4, v17

    .line 905
    .restart local v5    # "callString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:[Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    aput-object v18, v17, v3

    goto/16 :goto_0

    .line 918
    .end local v3    # "callId":I
    .end local v4    # "callInfo":[Ljava/lang/String;
    .end local v5    # "callString":Ljava/lang/String;
    .end local v9    # "msgType":I
    .restart local v13    # "ret":Ljava/lang/Object;
    :sswitch_15
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 924
    :sswitch_16
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 930
    :sswitch_17
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 932
    check-cast v13, [I

    .end local v13    # "ret":Ljava/lang/Object;
    check-cast v13, [I

    const/16 v17, 0x0

    aget v17, v13, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    .line 933
    .local v10, "playtone":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 932
    .end local v10    # "playtone":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 938
    .restart local v13    # "ret":Ljava/lang/Object;
    :sswitch_18
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v17, v13

    .line 940
    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .local v15, "simCipherStatus":I
    move-object/from16 v17, v13

    .line 941
    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .local v14, "sessionStatus":I
    move-object/from16 v17, v13

    .line 942
    check-cast v17, [Ljava/lang/String;

    check-cast v17, [Ljava/lang/String;

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 943
    .local v7, "csStatus":I
    check-cast v13, [Ljava/lang/String;

    .end local v13    # "ret":Ljava/lang/Object;
    check-cast v13, [Ljava/lang/String;

    const/16 v17, 0x3

    aget-object v17, v13, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 945
    .local v11, "psStatus":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RIL_UNSOL_CIPHER_INDICATION :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 947
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [I

    .line 949
    .local v6, "cipherResult":[I
    const/16 v17, 0x0

    aput v15, v6, v17

    .line 950
    const/16 v17, 0x1

    aput v7, v6, v17

    .line 951
    const/16 v17, 0x2

    aput v11, v6, v17

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 959
    .end local v6    # "cipherResult":[I
    .end local v7    # "csStatus":I
    .end local v11    # "psStatus":I
    .end local v14    # "sessionStatus":I
    .end local v15    # "simCipherStatus":I
    .restart local v13    # "ret":Ljava/lang/Object;
    :sswitch_19
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 968
    :sswitch_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 976
    :sswitch_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 978
    const-string v17, "Notify ECONF result"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    move-object/from16 v17, v13

    .line 979
    check-cast v17, [Ljava/lang/String;

    move-object/from16 v8, v17

    check-cast v8, [Ljava/lang/String;

    .line 980
    .local v8, "econfResult":[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ECONF result = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x3

    aget-object v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 985
    .end local v8    # "econfResult":[Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 992
    :sswitch_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLog(I)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1001
    :sswitch_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1007
    :sswitch_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1013
    :sswitch_20
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1020
    :sswitch_21
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1028
    :sswitch_22
    const-string v17, "IMS: IMS_RILA"

    const-string v18, "IMS: receive RIL_UNSOL_CALL_RING"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mRingRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1037
    :sswitch_23
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSsnRegistrant:Landroid/os/Registrant;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1044
    :sswitch_24
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1051
    :sswitch_25
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/AsyncResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 854
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_2
        0x3f3 -> :sswitch_f
        0x3fa -> :sswitch_e
        0x405 -> :sswitch_5
        0x40f -> :sswitch_10
        0xbd6 -> :sswitch_8
        0xbd9 -> :sswitch_3
        0xbdc -> :sswitch_c
        0xbde -> :sswitch_9
        0xbe2 -> :sswitch_4
        0xbe3 -> :sswitch_6
        0xbe8 -> :sswitch_7
        0xbe9 -> :sswitch_0
        0xbea -> :sswitch_a
        0xbeb -> :sswitch_b
        0xbec -> :sswitch_d
        0xbf1 -> :sswitch_11
    .end sparse-switch

    .line 883
    :sswitch_data_1
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3f3 -> :sswitch_23
        0x3fa -> :sswitch_22
        0x405 -> :sswitch_17
        0x40f -> :sswitch_24
        0xbd6 -> :sswitch_1a
        0xbd9 -> :sswitch_15
        0xbda -> :sswitch_1e
        0xbdb -> :sswitch_1f
        0xbdc -> :sswitch_20
        0xbde -> :sswitch_1b
        0xbe2 -> :sswitch_16
        0xbe3 -> :sswitch_18
        0xbe8 -> :sswitch_19
        0xbe9 -> :sswitch_12
        0xbea -> :sswitch_1c
        0xbeb -> :sswitch_1d
        0xbec -> :sswitch_21
        0xbf1 -> :sswitch_25
    .end sparse-switch

    .line 892
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_13
        0x2 -> :sswitch_13
        0x85 -> :sswitch_14
    .end sparse-switch
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 439
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 441
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 442
    const-string v5, "IMS: IMS_RILA"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 471
    :goto_0
    return v1

    .line 446
    :cond_1
    add-int/2addr v2, v0

    .line 447
    sub-int/2addr v3, v0

    .line 448
    if-gtz v3, :cond_0

    .line 450
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 456
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 457
    move v3, v1

    .line 459
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 461
    if-gez v0, :cond_3

    .line 462
    const-string v5, "IMS: IMS_RILA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 464
    goto :goto_0

    .line 467
    :cond_3
    add-int/2addr v2, v0

    .line 468
    sub-int/2addr v3, v0

    .line 469
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 783
    .line 785
    const-string v0, "<unknown request>"

    return-object v0
.end method

.method private responseCallRing(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 644
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 646
    .local v0, "response":[C
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 647
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 648
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 649
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 651
    return-object v0
.end method

.method private responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 633
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 635
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    return-object v2
.end method

.method private responseString(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method private responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "response":[Ljava/lang/String;
    return-object v0
.end method

.method private responseSuppServiceNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 656
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 658
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 664
    return-object v0
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 669
    sparse-switch p0, :sswitch_data_0

    .line 778
    const-string v0, "<unknown response>"

    :goto_0
    return-object v0

    .line 670
    :sswitch_0
    const-string v0, "UNSOL_RESPONSE_RADIO_STATE_CHANGED"

    goto :goto_0

    .line 671
    :sswitch_1
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    goto :goto_0

    .line 672
    :sswitch_2
    const-string v0, "UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 673
    :sswitch_3
    const-string v0, "UNSOL_RESPONSE_NEW_SMS"

    goto :goto_0

    .line 674
    :sswitch_4
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT"

    goto :goto_0

    .line 675
    :sswitch_5
    const-string v0, "UNSOL_RESPONSE_NEW_SMS_ON_SIM"

    goto :goto_0

    .line 676
    :sswitch_6
    const-string v0, "UNSOL_ON_USSD"

    goto :goto_0

    .line 677
    :sswitch_7
    const-string v0, "UNSOL_ON_USSD_REQUEST"

    goto :goto_0

    .line 678
    :sswitch_8
    const-string v0, "UNSOL_NITZ_TIME_RECEIVED"

    goto :goto_0

    .line 679
    :sswitch_9
    const-string v0, "UNSOL_SIGNAL_STRENGTH"

    goto :goto_0

    .line 680
    :sswitch_a
    const-string v0, "UNSOL_DATA_CALL_LIST_CHANGED"

    goto :goto_0

    .line 681
    :sswitch_b
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    goto :goto_0

    .line 682
    :sswitch_c
    const-string v0, "UNSOL_STK_SESSION_END"

    goto :goto_0

    .line 683
    :sswitch_d
    const-string v0, "UNSOL_STK_PROACTIVE_COMMAND"

    goto :goto_0

    .line 684
    :sswitch_e
    const-string v0, "UNSOL_STK_EVENT_NOTIFY"

    goto :goto_0

    .line 685
    :sswitch_f
    const-string v0, "UNSOL_STK_CALL_SETUP"

    goto :goto_0

    .line 686
    :sswitch_10
    const-string v0, "UNSOL_SIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 687
    :sswitch_11
    const-string v0, "UNSOL_SIM_REFRESH"

    goto :goto_0

    .line 688
    :sswitch_12
    const-string v0, "UNSOL_CALL_RING"

    goto :goto_0

    .line 689
    :sswitch_13
    const-string v0, "UNSOL_RESPONSE_SIM_STATUS_CHANGED"

    goto :goto_0

    .line 690
    :sswitch_14
    const-string v0, "UNSOL_RESPONSE_CDMA_NEW_SMS"

    goto :goto_0

    .line 691
    :sswitch_15
    const-string v0, "UNSOL_RESPONSE_NEW_BROADCAST_SMS"

    goto :goto_0

    .line 692
    :sswitch_16
    const-string v0, "UNSOL_CDMA_RUIM_SMS_STORAGE_FULL"

    goto :goto_0

    .line 693
    :sswitch_17
    const-string v0, "UNSOL_RESTRICTED_STATE_CHANGED"

    goto :goto_0

    .line 694
    :sswitch_18
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 695
    :sswitch_19
    const-string v0, "UNSOL_CDMA_CALL_WAITING"

    goto :goto_0

    .line 696
    :sswitch_1a
    const-string v0, "UNSOL_CDMA_OTA_PROVISION_STATUS"

    goto :goto_0

    .line 697
    :sswitch_1b
    const-string v0, "UNSOL_CDMA_INFO_REC"

    goto :goto_0

    .line 698
    :sswitch_1c
    const-string v0, "UNSOL_OEM_HOOK_RAW"

    goto :goto_0

    .line 699
    :sswitch_1d
    const-string v0, "UNSOL_RINGBACK_TONE"

    goto :goto_0

    .line 700
    :sswitch_1e
    const-string v0, "UNSOL_RESEND_INCALL_MUTE"

    goto :goto_0

    .line 701
    :sswitch_1f
    const-string v0, "CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    goto :goto_0

    .line 702
    :sswitch_20
    const-string v0, "UNSOL_CDMA_PRL_CHANGED"

    goto :goto_0

    .line 703
    :sswitch_21
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    goto :goto_0

    .line 704
    :sswitch_22
    const-string v0, "UNSOL_RIL_CONNECTED"

    goto :goto_0

    .line 705
    :sswitch_23
    const-string v0, "UNSOL_VOICE_RADIO_TECH_CHANGED"

    goto :goto_0

    .line 706
    :sswitch_24
    const-string v0, "UNSOL_CELL_INFO_LIST"

    goto :goto_0

    .line 708
    :sswitch_25
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    goto :goto_0

    .line 710
    :sswitch_26
    const-string v0, "RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED"

    goto :goto_0

    .line 712
    :sswitch_27
    const-string v0, "UNSOL_SRVCC_STATE_NOTIFY"

    goto :goto_0

    .line 714
    :sswitch_28
    const-string v0, "UNSOL_SIP_CALL_PROGRESS_INDICATOR"

    goto :goto_0

    .line 715
    :sswitch_29
    const-string v0, "RIL_UNSOL_HARDWARE_CONFIG_CHANGED"

    goto :goto_0

    .line 717
    :sswitch_2a
    const-string v0, "RIL_UNSOL_SET_PHONE_RAT_FAMILY_COMPLETE"

    goto/16 :goto_0

    .line 719
    :sswitch_2b
    const-string v0, "UNSOL_CALL_FORWARDING"

    goto/16 :goto_0

    .line 720
    :sswitch_2c
    const-string v0, "UNSOL_CRSS_NOTIFICATION"

    goto/16 :goto_0

    .line 721
    :sswitch_2d
    const-string v0, "UNSOL_INCOMING_CALL_INDICATION"

    goto/16 :goto_0

    .line 722
    :sswitch_2e
    const-string v0, "RIL_UNSOL_CIPHER_INDICATION"

    goto/16 :goto_0

    .line 723
    :sswitch_2f
    const-string v0, "RIL_UNSOL_CNAP"

    goto/16 :goto_0

    .line 724
    :sswitch_30
    const-string v0, "UNSOL_SPEECH_CODEC_INFO"

    goto/16 :goto_0

    .line 727
    :sswitch_31
    const-string v0, "RIL_UNSOL_APPLICATION_SESSION_ID_CHANGED"

    goto/16 :goto_0

    .line 729
    :sswitch_32
    const-string v0, "UNSOL_SIM_MISSING"

    goto/16 :goto_0

    .line 730
    :sswitch_33
    const-string v0, "UNSOL_VIRTUAL_SIM_ON"

    goto/16 :goto_0

    .line 731
    :sswitch_34
    const-string v0, "UNSOL_VIRTUAL_SIM_ON_OFF"

    goto/16 :goto_0

    .line 732
    :sswitch_35
    const-string v0, "UNSOL_SIM_RECOVERY"

    goto/16 :goto_0

    .line 733
    :sswitch_36
    const-string v0, "UNSOL_SIM_PLUG_OUT"

    goto/16 :goto_0

    .line 734
    :sswitch_37
    const-string v0, "UNSOL_SIM_PLUG_IN"

    goto/16 :goto_0

    .line 735
    :sswitch_38
    const-string v0, "RIL_UNSOL_SIM_COMMON_SLOT_NO_CHANGED"

    goto/16 :goto_0

    .line 736
    :sswitch_39
    const-string v0, "RIL_UNSOL_DATA_ALLOWED"

    goto/16 :goto_0

    .line 737
    :sswitch_3a
    const-string v0, "UNSOL_PHB_READY_NOTIFICATION"

    goto/16 :goto_0

    .line 738
    :sswitch_3b
    const-string v0, "UNSOL_IMEI_LOCK"

    goto/16 :goto_0

    .line 739
    :sswitch_3c
    const-string v0, "UNSOL_ACMT_INFO"

    goto/16 :goto_0

    .line 740
    :sswitch_3d
    const-string v0, "UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    goto/16 :goto_0

    .line 741
    :sswitch_3e
    const-string v0, "UNSOL_RESPONSE_MMRR_STATUS_CHANGED"

    goto/16 :goto_0

    .line 742
    :sswitch_3f
    const-string v0, "UNSOL_NEIGHBORING_CELL_INFO"

    goto/16 :goto_0

    .line 743
    :sswitch_40
    const-string v0, "UNSOL_NETWORK_INFO"

    goto/16 :goto_0

    .line 744
    :sswitch_41
    const-string v0, "RIL_UNSOL_IMS_ENABLE_DONE"

    goto/16 :goto_0

    .line 745
    :sswitch_42
    const-string v0, "RIL_UNSOL_IMS_DISABLE_DONE"

    goto/16 :goto_0

    .line 746
    :sswitch_43
    const-string v0, "RIL_UNSOL_IMS_REGISTRATION_INFO"

    goto/16 :goto_0

    .line 747
    :sswitch_44
    const-string v0, "RIL_UNSOL_STK_SETUP_MENU_RESET"

    goto/16 :goto_0

    .line 748
    :sswitch_45
    const-string v0, "RIL_UNSOL_RESPONSE_PLMN_CHANGED"

    goto/16 :goto_0

    .line 749
    :sswitch_46
    const-string v0, "RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED"

    goto/16 :goto_0

    .line 751
    :sswitch_47
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_ACTIVATED"

    goto/16 :goto_0

    .line 752
    :sswitch_48
    const-string v0, "RIL_UNSOL_DEDICATE_BEARER_MODIFIED"

    goto/16 :goto_0

    .line 754
    :sswitch_49
    const-string v0, "RIL_UNSOL_MELOCK_NOTIFICATION"

    goto/16 :goto_0

    .line 757
    :sswitch_4a
    const-string v0, "RIL_UNSOL_SCRI_RESULT"

    goto/16 :goto_0

    .line 758
    :sswitch_4b
    const-string v0, "RIL_UNSOL_STK_EVDL_CALL"

    goto/16 :goto_0

    .line 759
    :sswitch_4c
    const-string v0, "RIL_UNSOL_STK_CALL_CTRL"

    goto/16 :goto_0

    .line 762
    :sswitch_4d
    const-string v0, "RIL_UNSOL_ECONF_SRVCC_INDICATION"

    goto/16 :goto_0

    .line 764
    :sswitch_4e
    const-string v0, "RIL_UNSOL_ECONF_RESULT_INDICATION"

    goto/16 :goto_0

    .line 766
    :sswitch_4f
    const-string v0, "RIL_UNSOL_CALL_INFO_INDICATION"

    goto/16 :goto_0

    .line 769
    :sswitch_50
    const-string v0, "RIL_UNSOL_VOLTE_EPS_NETWORK_FEATURE_INFO"

    goto/16 :goto_0

    .line 770
    :sswitch_51
    const-string v0, "RIL_UNSOL_SRVCC_HANDOVER_INFO_INDICATION"

    goto/16 :goto_0

    .line 772
    :sswitch_52
    const-string v0, "RIL_UNSOL_RAC_UPDATE"

    goto/16 :goto_0

    .line 773
    :sswitch_53
    const-string v0, "RIL_UNSOL_REMOVE_RESTRICT_EUTRAN"

    goto/16 :goto_0

    .line 776
    :sswitch_54
    const-string v0, "RIL_UNSOL_MD_STATE_CHANGE"

    goto/16 :goto_0

    .line 669
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x402 -> :sswitch_1a
        0x403 -> :sswitch_1b
        0x404 -> :sswitch_1c
        0x405 -> :sswitch_1d
        0x406 -> :sswitch_1e
        0x407 -> :sswitch_1f
        0x408 -> :sswitch_20
        0x409 -> :sswitch_21
        0x40a -> :sswitch_22
        0x40b -> :sswitch_23
        0x40c -> :sswitch_24
        0x40d -> :sswitch_25
        0x40e -> :sswitch_26
        0x40f -> :sswitch_27
        0x410 -> :sswitch_29
        0x412 -> :sswitch_2a
        0xbb8 -> :sswitch_3f
        0xbb9 -> :sswitch_40
        0xbba -> :sswitch_3a
        0xbbf -> :sswitch_4a
        0xbc0 -> :sswitch_32
        0xbc3 -> :sswitch_35
        0xbc4 -> :sswitch_33
        0xbc5 -> :sswitch_34
        0xbc7 -> :sswitch_3d
        0xbc8 -> :sswitch_3c
        0xbca -> :sswitch_3b
        0xbcb -> :sswitch_3e
        0xbcc -> :sswitch_36
        0xbcd -> :sswitch_37
        0xbcf -> :sswitch_45
        0xbd0 -> :sswitch_46
        0xbd1 -> :sswitch_4b
        0xbd4 -> :sswitch_44
        0xbd5 -> :sswitch_31
        0xbd6 -> :sswitch_4d
        0xbd7 -> :sswitch_41
        0xbd8 -> :sswitch_42
        0xbd9 -> :sswitch_43
        0xbda -> :sswitch_47
        0xbdb -> :sswitch_48
        0xbdd -> :sswitch_52
        0xbde -> :sswitch_4e
        0xbdf -> :sswitch_49
        0xbe0 -> :sswitch_2b
        0xbe1 -> :sswitch_2c
        0xbe2 -> :sswitch_2d
        0xbe3 -> :sswitch_2e
        0xbe4 -> :sswitch_2f
        0xbe5 -> :sswitch_38
        0xbe6 -> :sswitch_39
        0xbe7 -> :sswitch_4c
        0xbe9 -> :sswitch_4f
        0xbea -> :sswitch_50
        0xbeb -> :sswitch_51
        0xbec -> :sswitch_30
        0xbed -> :sswitch_54
        0xbee -> :sswitch_53
        0xbf1 -> :sswitch_28
    .end sparse-switch
.end method

.method private responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "req"    # I
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    .line 790
    if-nez p1, :cond_0

    const-string v4, ""

    .line 824
    .end local p1    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 795
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, [I

    if-eqz v7, :cond_2

    .line 796
    check-cast p1, [I

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [I

    .line 797
    .local v2, "intArray":[I
    array-length v3, v2

    .line 798
    .local v3, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v7, v2, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    :goto_1
    if-ge v1, v3, :cond_1

    .line 803
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 806
    .end local v1    # "i":I
    :cond_1
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "s":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "intArray":[I
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_2
    instance-of v7, p1, [Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 809
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "ret":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    .line 810
    .local v6, "strings":[Ljava/lang/String;
    array-length v3, v6

    .line 811
    .restart local v3    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_3

    .line 813
    const/4 v0, 0x0

    .line 814
    .restart local v0    # "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :goto_2
    if-ge v1, v3, :cond_3

    .line 816
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 819
    .end local v1    # "i":I
    :cond_3
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 821
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 822
    .end local v3    # "length":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "strings":[Ljava/lang/String;
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method private riljLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 828
    const-string v0, "IMS: IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void
.end method

.method private riljLogv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 833
    const-string v0, "IMS: IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void
.end method

.method private unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method private unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method private unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 847
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hold(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inviteParticipants(I[Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "confCallId"    # I
    .param p2, "participants"    # [Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 377
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 396
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v2, "IMS: IMS_RILA"

    const-string v3, "No participants and can\'t add to conference call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_3

    .line 384
    const/4 v1, -0x1

    .line 385
    .local v1, "participantCallId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 386
    aget-object v2, p2, v4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    add-int/lit8 v1, v0, 0x1

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, p2, v4

    invoke-interface {v2, p1, v3, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 385
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    .end local v0    # "i":I
    .end local v1    # "participantCallId":I
    :cond_3
    const-string v2, "IMS: IMS_RILA"

    const-string v3, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public merge(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifySrvccDone()V
    .locals 1

    .prologue
    .line 1117
    const-string v0, "SRVCC_DONE"

    .line 1120
    .local v0, "atCmdString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    return-void
.end method

.method public reject(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeParticipants(I[Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "confCallId"    # I
    .param p2, "participants"    # [Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 407
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 426
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v2, "IMS: IMS_RILA"

    const-string v3, "No participants and can\'t add to conference call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_3

    .line 414
    const/4 v1, -0x1

    .line 415
    .local v1, "participantCallId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 416
    aget-object v2, p2, v4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mCallConnections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    add-int/lit8 v1, v0, 0x1

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, p2, v4

    invoke-interface {v2, p1, v3, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 415
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 424
    .end local v0    # "i":I
    .end local v1    # "participantCallId":I
    :cond_3
    const-string v2, "IMS: IMS_RILA"

    const-string v3, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallIndication(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNum"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImsPhoneInstance(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 3
    .param p1, "mPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1088
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1089
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1093
    :goto_0
    return-void

    .line 1091
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setImsPhoneInstance mDefaultCi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 3
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 277
    const-string v0, "DIALSOURCE_IMS"

    .line 279
    .local v0, "atCmdString":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    if-eqz v1, :cond_0

    const-string v1, "IMS: IMS_RILA"

    const-string v2, "IMS: mMoCall is not null when dial !!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    new-instance v1, Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ims/MoCallInfo;-><init>(Ljava/lang/String;IZLandroid/os/Message;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mMoCall:Lcom/mediatek/internal/telephony/ims/MoCallInfo;

    .line 283
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->executeCommandResponse(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    return-void
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOffIms(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setIMSEnabled(ZLandroid/os/Message;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOnIms(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->mDefaultCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->setIMSEnabled(ZLandroid/os/Message;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    const-string v0, "IMS: IMS_RILA"

    const-string v1, "IMS CommandsInterface of RILJ is null !!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
