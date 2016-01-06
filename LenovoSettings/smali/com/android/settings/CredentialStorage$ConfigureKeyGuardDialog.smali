.class Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 3

    .prologue
    .line 461
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    # getter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$600()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 465
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0339

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 472
    .local v0, "dialog":Landroid/app/AlertDialog;
    const-string v1, "CredentialStorage"

    const-string v2, "create sConfigureKeyGuardDialog"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 474
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 475
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 478
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 481
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 482
    return-void

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 486
    const-string v1, "CredentialStorage"

    const-string v2, "on dimiss, set sConfigureKeyGuardDialog as null"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 488
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 501
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;->isBack:Z

    .line 500
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method
