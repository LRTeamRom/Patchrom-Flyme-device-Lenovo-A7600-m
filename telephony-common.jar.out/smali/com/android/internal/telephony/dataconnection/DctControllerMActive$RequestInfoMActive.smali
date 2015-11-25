.class Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
.super Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
.source "DctControllerMActive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctControllerMActive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestInfoMActive"
.end annotation


# instance fields
.field mGroupId:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctControllerMActive;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctControllerMActive;Landroid/net/NetworkRequest;II)V
    .locals 0
    .param p2, "request"    # Landroid/net/NetworkRequest;
    .param p3, "priority"    # I
    .param p4, "mGroupId"    # I

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->this$0:Lcom/android/internal/telephony/dataconnection/DctControllerMActive;

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;I)V

    .line 165
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->mGroupId:I

    .line 166
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", executed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->executed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
