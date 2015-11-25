.class public Lcom/mediatek/telecom/TelecomManagerEx$VolteCallMode;
.super Ljava/lang/Object;
.source "TelecomManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/TelecomManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolteCallMode"
.end annotation


# static fields
.field public static final CS_VIDEO_CALL:I = 0xa

.field public static final CS_VOICE_CALL:I = 0x0

.field public static final IMS_VIDEO_CALL:I = 0x15

.field public static final IMS_VOICE_CALL:I = 0x14

.field public static final IMS_VOICE_CONF:I = 0x16

.field public static final VALUE_NOT_SET:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
