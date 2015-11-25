.class public Lcom/mediatek/telecom/TelecomManagerEx;
.super Ljava/lang/Object;
.source "TelecomManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telecom/TelecomManagerEx$VolteCallMode;
    }
.end annotation


# static fields
.field public static final EXTRA_VOLTE_CALL_MODE:Ljava/lang/String; = "com.mediatek.volte.call.mode"

.field public static final EXTRA_VOLTE_CONFERENCE_XML:Ljava/lang/String; = "com.mediatek.volte.conference.xml"

.field public static final EXTRA_VOLTE_MARKED_AS_EMERGENCY:Ljava/lang/String; = "com.mediatek.volte.isMergency"

.field public static final EXTRA_VOLTE_MARKED_AS_WAITING:Ljava/lang/String; = "com.mediatek.volte.isCallWaiting"

.field public static final EXTRA_VOLTE_PAU_FIELD:Ljava/lang/String; = "com.mediatek.volte.pau"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
