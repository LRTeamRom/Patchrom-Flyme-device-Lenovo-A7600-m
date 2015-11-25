.class Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final UIM_INPUT_MAX_UNICODE_LEN:I = 0x77

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 77
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 78
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    .locals 2
    .param p0, "caller"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 66
    const-class v1, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    monitor-exit v1

    return-object v0

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-eqz p1, :cond_0

    .line 85
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 87
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 90
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 281
    const-string v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 284
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 286
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 288
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 289
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 293
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 294
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    .line 297
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_2

    .line 299
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 302
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_3

    .line 304
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 305
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 308
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_4

    .line 310
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 314
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->isHighPriority:Z

    .line 315
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    .line 317
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 319
    if-eqz v1, :cond_7

    .line 320
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 325
    :goto_2
    return v4

    :cond_5
    move v3, v5

    .line 314
    goto :goto_0

    :cond_6
    move v3, v5

    .line 315
    goto :goto_1

    :cond_7
    move v4, v5

    .line 325
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 654
    const-string v5, "process EventNotify"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 657
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 659
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 661
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 662
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 667
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    .line 669
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 670
    iget-boolean v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 673
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 674
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v5, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 676
    if-eqz v1, :cond_2

    .line 677
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 678
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 682
    :goto_0
    return v3

    .line 664
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    :cond_2
    move v3, v4

    .line 682
    goto :goto_0
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 384
    const-string v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 387
    .local v2, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v1, 0x0

    .line 389
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 391
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 392
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 397
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 403
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_1

    .line 405
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 408
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 409
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 411
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    .line 412
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 413
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    .line 414
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 415
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 417
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 419
    if-eqz v1, :cond_7

    .line 420
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 421
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 425
    :goto_4
    return v4

    .line 394
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    :cond_3
    move v3, v5

    .line 411
    goto :goto_0

    :cond_4
    move v3, v5

    .line 412
    goto :goto_1

    :cond_5
    move v3, v5

    .line 413
    goto :goto_2

    :cond_6
    move v3, v5

    .line 414
    goto :goto_3

    :cond_7
    move v4, v5

    .line 425
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/16 v10, 0x77

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process GetInput cmdDet.commandQualifier = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 444
    .local v3, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v2, 0x0

    .line 446
    .local v2, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 448
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_4

    .line 449
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 454
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_5

    .line 457
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 458
    .local v4, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 459
    .local v5, "valueIndex":I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 460
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->defaultText:Ljava/lang/String;

    .line 473
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1

    .line 475
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 478
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 480
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 482
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 490
    :cond_2
    :goto_0
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    if-eqz v6, :cond_3

    .line 492
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    if-le v6, v10, :cond_7

    .line 494
    iput v10, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 501
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxLen = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 503
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    .line 504
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 506
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 508
    if-eqz v2, :cond_b

    .line 509
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 510
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v8, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 514
    :goto_5
    return v7

    .line 451
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 465
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 487
    .restart local v4    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :cond_6
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    goto :goto_0

    .line 498
    :cond_7
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    goto :goto_1

    :cond_8
    move v6, v8

    .line 502
    goto :goto_2

    :cond_9
    move v6, v8

    .line 503
    goto :goto_3

    :cond_a
    move v6, v8

    .line 504
    goto :goto_4

    :cond_b
    move v7, v8

    .line 514
    goto :goto_5
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 725
    const-string v10, "process LaunchBrowser"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 728
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v3, 0x0

    .line 729
    .local v3, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v6, 0x0

    .line 731
    .local v6, "url":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 732
    .local v1, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 734
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 735
    .local v5, "rawValue":[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 736
    .local v7, "valueIndex":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 737
    .local v8, "valueLen":I
    if-lez v8, :cond_3

    .line 738
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 749
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :cond_0
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_1

    .line 751
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 754
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 755
    if-eqz v1, :cond_2

    .line 756
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v3

    .line 757
    iget-boolean v10, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v10, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 762
    :cond_2
    iget v10, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v10, :pswitch_data_0

    .line 765
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 775
    .local v4, "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    invoke-direct {v10, p1, v0, v6, v4}, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 777
    if-eqz v3, :cond_4

    .line 778
    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 779
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v11, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 783
    :goto_2
    return v9

    .line 741
    .end local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    .restart local v5    # "rawValue":[B
    .restart local v7    # "valueIndex":I
    .restart local v8    # "valueLen":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 743
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :catch_0
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v9

    .line 768
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 769
    .restart local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 771
    .end local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 783
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 762
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 980
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string v0, "process LocalInformation"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 984
    const/4 v0, 0x0

    return v0
.end method

.method private processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 970
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string v0, "process MoreTime"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 799
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    const/4 v3, 0x0

    .line 802
    .local v3, "tone":Lcom/android/internal/telephony/cdma/utk/Tone;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 803
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v4, 0x0

    .line 804
    .local v4, "duration":Lcom/android/internal/telephony/cdma/utk/Duration;
    const/4 v8, 0x0

    .line 806
    .local v8, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 807
    .local v6, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 809
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 811
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 812
    .local v9, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 813
    .local v11, "valueIndex":I
    aget-byte v10, v9, v11

    .line 814
    .local v10, "toneVal":I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/utk/Tone;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 822
    .end local v9    # "rawValue":[B
    .end local v10    # "toneVal":I
    .end local v11    # "valueIndex":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 823
    if-eqz v6, :cond_1

    .line 824
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 827
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 828
    if-eqz v6, :cond_2

    .line 829
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v4

    .line 832
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 833
    if-eqz v6, :cond_3

    .line 834
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v8

    .line 835
    iget-boolean v0, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 838
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 840
    .local v5, "vibrate":Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 841
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/Tone;Lcom/android/internal/telephony/cdma/utk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 843
    if-eqz v8, :cond_5

    .line 844
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 847
    const/4 v0, 0x1

    .line 849
    :goto_1
    return v0

    .line 815
    .end local v5    # "vibrate":Z
    :catch_0
    move-exception v7

    .line 816
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v0

    .line 838
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 849
    .restart local v5    # "vibrate":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 527
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process Refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 538
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 557
    const-string v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Menu;-><init>()V

    .line 560
    .local v3, "menu":Lcom/android/internal/telephony/cdma/utk/Menu;
    const/4 v6, 0x0

    .line 561
    .local v6, "titleIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v1, 0x0

    .line 562
    .local v1, "itemsIconId":Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 564
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 566
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 567
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    .line 571
    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_1

    .line 573
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 581
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 584
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_3

    .line 588
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->defaultItem:I

    .line 591
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_4

    .line 593
    iput v8, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 594
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v6

    .line 595
    iget-boolean v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIconSelfExplanatory:Z

    .line 598
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_5

    .line 600
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 601
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    move-result-object v1

    .line 602
    iget-boolean v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->itemsIconSelfExplanatory:Z

    .line 605
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v4, v8

    .line 606
    .local v4, "presentTypeSpecified":Z
    :goto_1
    if-eqz v4, :cond_6

    .line 607
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 608
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    .line 613
    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->softKeyPreferred:Z

    .line 614
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->helpAvailable:Z

    .line 616
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;

    if-eqz v6, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {v10, p1, v3, v7}, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Menu;Z)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 619
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    :goto_6
    move v9, v8

    .line 639
    :pswitch_0
    return v9

    .end local v4    # "presentTypeSpecified":Z
    :cond_7
    move v4, v9

    .line 605
    goto :goto_1

    .line 610
    .restart local v4    # "presentTypeSpecified":Z
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    goto :goto_2

    :cond_9
    move v7, v9

    .line 613
    goto :goto_3

    :cond_a
    move v7, v9

    .line 614
    goto :goto_4

    :cond_b
    move v7, v9

    .line 616
    goto :goto_5

    .line 623
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v9, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_6

    .line 627
    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 628
    .local v5, "recordNumbers":[I
    if-eqz v6, :cond_c

    .line 630
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 631
    iget v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    aput v7, v5, v9

    .line 632
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    invoke-static {v7, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 635
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_6

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 931
    const-string v6, "processSendSms"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 933
    .local v3, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 934
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v2, 0x0

    .line 936
    .local v2, "smsPdu":[B
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 938
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 939
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 944
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_0

    .line 946
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 947
    iget-boolean v6, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 950
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CDMA_SMS_TPDU:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_1

    .line 952
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B

    move-result-object v2

    .line 955
    :cond_1
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 956
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;

    invoke-direct {v6, p1, v3, v2}, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;[B)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 958
    if-eqz v1, :cond_3

    .line 959
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 960
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v6, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 964
    :goto_1
    return v4

    .line 941
    :cond_2
    const-string v6, "processSendSms : textMsg.text is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 964
    goto :goto_1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 697
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string v0, "process SetUpEventList"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x1

    return v0
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 341
    const-string v4, "process SetUpIdleModeText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 344
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 346
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 348
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 349
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 352
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 353
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 356
    iget-boolean v4, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 360
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 362
    if-eqz v1, :cond_2

    .line 363
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 364
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 368
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 864
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string v9, "process SetupCall"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 867
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .line 869
    .local v4, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 871
    .local v3, "confirmMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 872
    .local v1, "callMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 873
    .local v7, "setupMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v2, 0x0

    .line 874
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v0, 0x0

    .line 877
    .local v0, "callIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 878
    if-eqz v4, :cond_0

    .line 879
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v8

    .line 880
    .local v8, "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v8, :cond_5

    .line 882
    const-string v9, "search confirm message not null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 890
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "confirmMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", setupMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    .end local v8    # "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 894
    if-eqz v4, :cond_1

    .line 895
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 896
    iget-boolean v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 900
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 901
    if-eqz v4, :cond_2

    .line 902
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 905
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 906
    if-eqz v4, :cond_3

    .line 907
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v0

    .line 908
    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 911
    :cond_3
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    invoke-direct {v9, p1, v3, v1, v7}, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 913
    if-nez v2, :cond_4

    if-eqz v0, :cond_8

    .line 914
    :cond_4
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 915
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 916
    .local v6, "recordNumbers":[I
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    iget v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_1
    aput v9, v6, v10

    .line 918
    const/4 v10, 0x1

    if-eqz v0, :cond_7

    iget v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_2
    aput v9, v6, v10

    .line 921
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 923
    const/4 v9, 0x1

    .line 925
    .end local v6    # "recordNumbers":[I
    :goto_3
    return v9

    .line 887
    .restart local v8    # "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 888
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 916
    .end local v8    # "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .restart local v6    # "recordNumbers":[I
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 918
    :cond_7
    const/4 v9, -0x1

    goto :goto_2

    .line 925
    .end local v6    # "recordNumbers":[I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 3
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 258
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    .line 260
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 264
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 239
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cdma/utk/ResultCode;Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 226
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 203
    const/4 v4, 0x0

    .line 204
    .local v4, "icons":[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 206
    .local v3, "iconIndex":I
    if-nez p1, :cond_0

    .line 207
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 221
    .end local p1    # "data":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 209
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v6, :pswitch_data_0

    .line 221
    .end local p1    # "data":Ljava/lang/Object;
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto :goto_0

    .line 211
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 214
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v4, p1

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 216
    move-object v0, v4

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 217
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cdma/utk/BerTlv;)V
    .locals 7
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cdma/utk/BerTlv;

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 105
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 107
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 108
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v1, 0x0

    .line 112
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 114
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v0

    .line 115
    .local v0, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-nez v0, :cond_3

    .line 116
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 122
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    .line 124
    .local v2, "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 125
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 130
    :cond_4
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 178
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 179
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v4

    .line 183
    .local v4, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 185
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;->result()Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 132
    .end local v4    # "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 188
    :goto_1
    if-nez v1, :cond_0

    .line 189
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 135
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 136
    goto :goto_1

    .line 138
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 139
    goto :goto_1

    .line 141
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 142
    goto :goto_1

    .line 144
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 145
    goto :goto_1

    .line 147
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 148
    goto :goto_1

    .line 152
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 153
    goto :goto_1

    .line 155
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 156
    goto :goto_1

    .line 158
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 159
    goto :goto_1

    .line 161
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    .line 162
    const/4 v1, 0x0

    .line 163
    goto :goto_1

    .line 168
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 169
    goto :goto_1

    .line 171
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 172
    goto :goto_1

    .line 174
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 175
    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
