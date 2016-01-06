.class public Lcom/lenovo/settings/pluginimpl/MtkTelephoneImpl;
.super Ljava/lang/Object;
.source "MtkTelephoneImpl.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IMtkTelephone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstantGEMINI_SIM_1()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantGEMINI_SIM_2()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantGEMINI_SIM_3()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantGEMINI_SIM_4()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantGEMINI_SIM_NUM()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantStringEXTRA_PLMN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringEXTRA_SHOW_PLMN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringEXTRA_SHOW_SPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringEXTRA_SPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantStringSPN_STRINGS_UPDATED_ACTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInsertedSimInfoListSize(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public initialTelephonyManagerEx(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method

.method public releaseMtkTelephonyManagerExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    return-void
.end method
