.class public Lcom/mediatek/voiceextension/VoiceCommonState;
.super Ljava/lang/Object;
.source "VoiceCommonState.java"


# static fields
.field public static final API_COMMAND_NOTIFY_ERROR:I = 0x7

.field public static final API_COMMAND_PAUSE_RECOGNITION:I = 0x4

.field public static final API_COMMAND_RECOGNIZE_RESULT:I = 0x6

.field public static final API_COMMAND_RESUME_RECOGNITION:I = 0x5

.field public static final API_COMMAND_SET_COMMANDS:I = 0x8

.field public static final API_COMMAND_START_RECOGNITION:I = 0x2

.field public static final API_COMMAND_STOP_RECOGNITION:I = 0x3

.field public static final COMMANDS_DATA_INVALID:I = 0x12d

.field public static final COMMANDS_FILE_ILLEGAL:I = 0x12e

.field public static final COMMANDS_NUM_EXCEED_LIMIT:I = 0x12f

.field public static final FAILURE:I = -0x1

.field public static final LISTENER_ALREADY_SET:I = 0x7

.field public static final LISTENER_ILLEGAL:I = 0x5

.field public static final LISTENER_NEVER_SET:I = 0x6

.field public static final MIC_INIT_FAIL:I = 0x3

.field public static final MIC_OCCUPIED:I = 0x4

.field public static final PROCESS_ILLEGAL:I = 0xe

.field public static final RECOGNITION_ALREADY_PAUSED:I = 0xb

.field public static final RECOGNITION_ALREADY_STARTED:I = 0xa

.field public static final RECOGNITION_NEVER_PAUSE:I = 0x9

.field public static final RECOGNITION_NEVER_START:I = 0x8

.field public static final SERVICE_DISCONNECTTED:I = 0xd

.field public static final SERVICE_NOT_EXIST:I = 0xc

.field public static final SET_ALREADY_EXIST:I = 0xc9

.field public static final SET_EXCEED_LIMIT:I = 0xcc

.field public static final SET_ILLEGAL:I = 0xcb

.field public static final SET_NOT_EXIST:I = 0xca

.field public static final SET_NOT_SELECTED:I = 0xce

.field public static final SET_OCCUPIED:I = 0xcf

.field public static final SET_SELECTED:I = 0xcd

.field public static final SUCCESS:I = 0x1

.field public static final VIE_API_COMMAND_IDLE:I = 0x1

.field private static final VIE_COMMAND_INDEX:I = 0x12c

.field private static final VIE_COMMON_INDEX:I = 0x0

.field public static final VIE_FEATURE_COMMAND:I = 0x1

.field public static final VIE_FEATURE_COMMAND_NAME:Ljava/lang/String; = "Command"

.field public static final VIE_FEATURE_PASSPHRASE:I = 0x3

.field public static final VIE_FEATURE_PASSPHRASE_NAME:Ljava/lang/String; = "Passphrase"

.field public static final VIE_FEATURE_SEARCH:I = 0x2

.field public static final VIE_FEATURE_SEARCH_NAME:Ljava/lang/String; = "Search"

.field private static final VIE_SET_INDEX:I = 0xc8

.field public static final WRITE_STORAGE_FAIL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
