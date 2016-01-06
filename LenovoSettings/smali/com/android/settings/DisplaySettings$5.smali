.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->nightMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$400(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sys.night_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "i":I
    if-ne v0, v4, :cond_1

    .line 249
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->nightMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$400(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 254
    .end local v0    # "i":I
    :cond_0
    :goto_0
    return-void

    .line 251
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->nightMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$400(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
