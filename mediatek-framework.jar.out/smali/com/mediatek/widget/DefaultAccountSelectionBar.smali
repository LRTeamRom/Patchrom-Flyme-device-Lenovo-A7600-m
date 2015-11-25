.class public Lcom/mediatek/widget/DefaultAccountSelectionBar;
.super Ljava/lang/Object;
.source "DefaultAccountSelectionBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAccountSelectionBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p3}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->configureView(Ljava/util/List;)V

    .line 36
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    .line 38
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x8020000

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    .line 43
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 44
    return-void
.end method

.method private configureView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    .line 78
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureView()V

    .line 79
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x8100036

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 73
    const-string v0, "DefaultAccountSelectionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In what package hide accountBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getNormalRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 61
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getBigRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 63
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x8100036

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 64
    const-string v0, "DefaultAccountSelectionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In what package show accountBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->configureView(Ljava/util/List;)V

    .line 53
    return-void
.end method
