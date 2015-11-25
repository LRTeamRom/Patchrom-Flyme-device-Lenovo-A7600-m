.class Lcom/mediatek/rns/RnsService$2;
.super Landroid/telephony/PhoneStateListener;
.source "RnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsService;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsService;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mediatek/rns/RnsService$2;->this$0:Lcom/mediatek/rns/RnsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mediatek/rns/RnsService$2;->this$0:Lcom/mediatek/rns/RnsService;

    # setter for: Lcom/mediatek/rns/RnsService;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/mediatek/rns/RnsService;->access$302(Lcom/mediatek/rns/RnsService;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 206
    const-string v0, "RnsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsService$2;->this$0:Lcom/mediatek/rns/RnsService;

    # getter for: Lcom/mediatek/rns/RnsService;->mLtePhoneState:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/mediatek/rns/RnsService;->access$300(Lcom/mediatek/rns/RnsService;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method
