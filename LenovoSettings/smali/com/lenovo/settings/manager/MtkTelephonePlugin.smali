.class public Lcom/lenovo/settings/manager/MtkTelephonePlugin;
.super Ljava/lang/Object;
.source "MtkTelephonePlugin.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IMtkTelephone;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/MtkTelephonePlugin;

.field private static mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    .line 15
    sput-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    .line 24
    :goto_0
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    .line 22
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getMtkTelephone(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkTelephone;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    .line 24
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mInstance:Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    goto :goto_0
.end method


# virtual methods
.method public getConstantGEMINI_SIM_1()I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantGEMINI_SIM_1()I

    move-result v0

    return v0
.end method

.method public getConstantGEMINI_SIM_2()I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantGEMINI_SIM_2()I

    move-result v0

    return v0
.end method

.method public getConstantGEMINI_SIM_3()I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantGEMINI_SIM_3()I

    move-result v0

    return v0
.end method

.method public getConstantGEMINI_SIM_4()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantGEMINI_SIM_4()I

    move-result v0

    return v0
.end method

.method public getConstantGEMINI_SIM_NUM()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantGEMINI_SIM_NUM()I

    move-result v0

    return v0
.end method

.method public getConstantStringEXTRA_PLMN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantStringEXTRA_PLMN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_SHOW_PLMN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantStringEXTRA_SHOW_PLMN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_SHOW_SPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantStringEXTRA_SHOW_SPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_SPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantStringEXTRA_SPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringSPN_STRINGS_UPDATED_ACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getConstantStringSPN_STRINGS_UPDATED_ACTION()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsertedSimInfoListSize(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkTelephone;->getInsertedSimInfoListSize(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public initialTelephonyManagerEx(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkTelephone;->initialTelephonyManagerEx(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lenovo/settings/plugin/IMtkTelephone;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public releaseMtkTelephonyManagerExt(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkTelephone;->releaseMtkTelephonyManagerExt(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->mPlugin:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkTelephone;->setContext(Landroid/content/Context;)V

    .line 128
    return-void
.end method
