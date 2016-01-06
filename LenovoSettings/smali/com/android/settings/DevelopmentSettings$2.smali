.class Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

.field final synthetic val$actionBarSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;Landroid/widget/Switch;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->val$actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 426
    const-string v1, "DevelopmentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->val$actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->val$actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 428
    .local v0, "isChecked":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 429
    if-eqz v0, :cond_2

    .line 430
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # setter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z
    invoke-static {v1, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$202(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;Z)Z

    .line 431
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$300(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$400(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a09c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a09c8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$302(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 439
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$300(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetDangerousOptions()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$500(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V

    .line 442
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # setter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$102(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;Z)Z

    .line 445
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)Z

    move-result v2

    # invokes: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$600(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;Z)V

    goto :goto_0
.end method
