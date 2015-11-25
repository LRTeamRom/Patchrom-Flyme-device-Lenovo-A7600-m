.class Lcom/mediatek/hdmi/MtkHdmiManagerService$6;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->getCapabilities()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1900(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 531
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$2100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->sHdmi:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$2002(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$6;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$2100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->sMhl:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    return-void
.end method
