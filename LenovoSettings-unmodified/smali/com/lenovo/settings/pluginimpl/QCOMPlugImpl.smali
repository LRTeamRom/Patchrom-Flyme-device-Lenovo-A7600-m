.class public Lcom/lenovo/settings/pluginimpl/QCOMPlugImpl;
.super Ljava/lang/Object;
.source "QCOMPlugImpl.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IQCOMPlug;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getSimCardType(I)I
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getUIM_TYPE_CTCC()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    return-void
.end method
