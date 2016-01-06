.class Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;
.super Ljava/lang/Object;
.source "RecentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentSettingResult"
.end annotation


# instance fields
.field mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

.field mTitleContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Landroid/content/Context;Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mTitleContext:Landroid/content/Context;

    .line 413
    iput-object p3, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingResult;->mItem:Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;

    .line 414
    return-void
.end method
