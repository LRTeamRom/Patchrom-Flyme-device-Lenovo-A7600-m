.class Lcom/flyme/deviceoriginalsettings/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DreamSettings;->mRefreshing:Z
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$100(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$200(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Lcom/flyme/deviceoriginalsettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$300(Lcom/flyme/deviceoriginalsettings/DreamSettings;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a07a4

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a079b

    const-class v4, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
