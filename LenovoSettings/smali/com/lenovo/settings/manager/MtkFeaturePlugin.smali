.class public Lcom/lenovo/settings/manager/MtkFeaturePlugin;
.super Ljava/lang/Object;
.source "MtkFeaturePlugin.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IMtkFeature;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/MtkFeaturePlugin;

.field private static mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    .line 14
    sput-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    .line 22
    :goto_0
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    .line 21
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getMtkFeature(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkFeature;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    .line 22
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    goto :goto_0
.end method


# virtual methods
.method public isSupportEVDO_DT_SUPPORT()Z
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkFeature;->isSupportEVDO_DT_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportMTK_GEMINI_3SIM_SUPPORT()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkFeature;->isSupportMTK_GEMINI_3SIM_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportMTK_GEMINI_4SIM_SUPPORT()Z
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkFeature;->isSupportMTK_GEMINI_4SIM_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportMtkGemini()Z
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkFeature;->isSupportMtkGemini()Z

    move-result v0

    return v0
.end method

.method public isSupportPURE_AP_USE_EXTERNAL_MODEM()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkFeature;->isSupportPURE_AP_USE_EXTERNAL_MODEM()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkFeature;->setContext(Landroid/content/Context;)V

    .line 58
    return-void
.end method
