.class public Lcom/android/internal/telephony/dataconnection/DctControllerMActive;
.super Lcom/android/internal/telephony/dataconnection/DctController;
.source "DctControllerMActive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DctControllerMActive"


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 35
    return-void
.end method

.method private getGroupId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 140
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v1, -0x1

    .line 143
    .local v1, "groupId":I
    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v2, :cond_2

    .line 144
    :cond_0
    const/4 v1, 0x0

    .line 149
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupId phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->logd(Ljava/lang/String;)V

    .line 150
    return v1

    .line 145
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v2, :cond_1

    .line 146
    move v1, p1

    goto :goto_0
.end method

.method private getTopPriorityRequestPhoneId(I)I
    .locals 8
    .param p1, "group"    # I

    .prologue
    .line 108
    const/4 v5, 0x0

    .line 109
    .local v5, "retRequestInfo":Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    const/4 v2, 0x0

    .line 110
    .local v2, "phoneId":I
    const/4 v3, -0x1

    .line 112
    .local v3, "priority":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mPhoneNum:I

    if-ge v0, v6, :cond_2

    .line 113
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;

    .line 117
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectExecPhone requestInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->logd(Ljava/lang/String;)V

    .line 118
    iget-object v6, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v6

    if-ne v6, v0, :cond_0

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->priority:I

    if-ge v3, v6, :cond_0

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->mGroupId:I

    if-ne v6, p1, :cond_0

    .line 121
    iget v3, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->priority:I

    .line 122
    move-object v5, v4

    goto :goto_1

    .line 112
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v5, :cond_3

    .line 128
    iget-object v6, v5, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    .line 131
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTopPriorityRequestPhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", priority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", gruop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->logd(Ljava/lang/String;)V

    .line 134
    return v2
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onProcessGroup(I)V
    .locals 7
    .param p1, "group"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getTopPriorityRequestPhoneId(I)I

    move-result v3

    .line 79
    .local v3, "phoneId":I
    const/4 v0, -0x1

    .line 81
    .local v0, "activePhoneId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getGroupId(I)I

    move-result v5

    if-ne v5, p1, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleSync()Z

    move-result v5

    if-nez v5, :cond_3

    .line 83
    move v0, v1

    .line 88
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProcessGroup phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", groupId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activePhoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->logd(Ljava/lang/String;)V

    .line 91
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_4

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 94
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;

    .line 96
    .local v4, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    iget-object v5, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v5

    if-ne v5, v3, :cond_2

    iget-boolean v5, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->executed:Z

    if-nez v5, :cond_2

    iget v5, v4, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;->mGroupId:I

    if-ne v5, p1, :cond_2

    .line 99
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)I

    goto :goto_1

    .line 81
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAllSync()I

    .line 105
    :cond_5
    return-void
.end method


# virtual methods
.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "DctControllerMActive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DctController] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method protected onProcessRequest()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 65
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->onProcessGroup(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method protected requestNetwork(Landroid/net/NetworkRequest;I)I
    .locals 5
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "priority"    # I

    .prologue
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestNetwork request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->logd(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v1

    .line 52
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->getGroupId(I)I

    move-result v0

    .line 54
    .local v0, "groupId":I
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;-><init>(Lcom/android/internal/telephony/dataconnection/DctControllerMActive;Landroid/net/NetworkRequest;II)V

    .line 55
    .local v2, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctControllerMActive$RequestInfoMActive;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->mRequestInfos:Ljava/util/HashMap;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctControllerMActive;->processRequests()V

    .line 58
    const/4 v3, 0x1

    return v3
.end method
