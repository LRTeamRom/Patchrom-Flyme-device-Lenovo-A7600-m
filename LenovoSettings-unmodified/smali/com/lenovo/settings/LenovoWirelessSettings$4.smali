.class Lcom/lenovo/settings/LenovoWirelessSettings$4;
.super Ljava/lang/Object;
.source "LenovoWirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/LenovoWirelessSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/LenovoWirelessSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v0}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a06d2

    iget-object v2, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v2}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0367

    const-class v4, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/settings/LenovoWirelessSettings$4;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v6}, Lcom/lenovo/settings/LenovoWirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/android/settings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x0

    return v0
.end method
