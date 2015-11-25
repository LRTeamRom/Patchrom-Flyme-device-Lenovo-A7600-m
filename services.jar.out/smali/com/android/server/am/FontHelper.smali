.class public Lcom/android/server/am/FontHelper;
.super Ljava/lang/Object;
.source "FontHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FontHelper"

.field public static changefont:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/FontHelper;->changefont:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateChangeFont(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "values1"    # Landroid/content/res/Configuration;
    .param p1, "values2"    # Landroid/content/res/Configuration;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/content/res/Configuration;->fontPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 23
    :cond_2
    const-string v0, "FontHelper"

    const-string v1, "updateChangeFont() changefont is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/FontHelper;->changefont:Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/FontHelper;->changefont:Z

    goto :goto_0
.end method

.method public static updateIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/server/am/FontHelper;->changefont:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "android.intent.extra.configuration.font_changed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v0, "android.intent.extra.configuration.font_changed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
