.class Lcom/flyme/deviceoriginalsettings/DreamSettings$5;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
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
    .line 237
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$5;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DreamSettings;->mBackend:Lcom/flyme/deviceoriginalsettings/DreamBackend;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->access$200(Lcom/flyme/deviceoriginalsettings/DreamSettings;)Lcom/flyme/deviceoriginalsettings/DreamBackend;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
