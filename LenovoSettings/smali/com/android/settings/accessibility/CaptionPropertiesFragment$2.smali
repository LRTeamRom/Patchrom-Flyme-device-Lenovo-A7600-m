.class Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;Z)Z
    .locals 9
    .param p1, "toggleSwitch"    # Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v8, 0x0

    .line 248
    invoke-virtual {p1, p2}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 249
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_captioning_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->access$100(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;

    move-result-object v1

    if-eqz p2, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a09e8

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a09e4

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return v8

    :cond_1
    move v0, v8

    .line 249
    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
