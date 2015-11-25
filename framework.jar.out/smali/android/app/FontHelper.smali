.class public Landroid/app/FontHelper;
.super Ljava/lang/Object;
.source "FontHelper.java"


# static fields
.field public static changefont:Z

.field public static fontpath:Ljava/lang/String;

.field public static titlefontpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FontHelper;->changefont:Z

    .line 13
    sput-object v1, Landroid/app/FontHelper;->fontpath:Ljava/lang/String;

    .line 14
    sput-object v1, Landroid/app/FontHelper;->titlefontpath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
