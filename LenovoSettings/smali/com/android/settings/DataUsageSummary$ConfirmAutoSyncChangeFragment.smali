.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field private static final SAVE_ENABLING:Ljava/lang/String; = "enabling"


# instance fields
.field private mEnabling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2092
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$2900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    .prologue
    .line 2092
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V
    .locals 3
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    .param p1, "enabling"    # Z

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2103
    :goto_0
    return-void

    .line 2099
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 2100
    .local v0, "dialog":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 2101
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2102
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2108
    .local v1, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 2109
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 2112
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 2114
    const v2, 0x7f0a0bcc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2115
    const v2, 0x7f0a0bcd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2121
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2127
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 2117
    :cond_1
    const v2, 0x7f0a0bca

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2118
    const v2, 0x7f0a0bcb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2134
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2135
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2136
    return-void
.end method
