.class public Lcom/mediatek/widget/CustomAccountRemoteViews;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;,
        Lcom/mediatek/widget/CustomAccountRemoteViews$IdIndex;
    }
.end annotation


# static fields
.field private static final MOSTACCOUNTNUMBER:I = 0x8

.field private static final ROWACCOUNTNUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CustomAccountRemoteViews"


# instance fields
.field private final RESOURCE_ID:[[I

.field private mBigRemoteViews:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalRemoteViews:Landroid/widget/RemoteViews;

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    .line 79
    new-instance v0, Landroid/widget/RemoteViews;

    const v1, 0x8070018

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    .line 80
    new-instance v0, Landroid/widget/RemoteViews;

    const v1, 0x807000e

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    .line 82
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    .line 84
    iput v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    .line 85
    return-void

    .line 30
    :array_0
    .array-data 4
        0x8100073
        0x8100024
        0x8100027
        0x8100028
        0x8100025
        0x8100026
    .end array-data

    :array_1
    .array-data 4
        0x8100074
        0x810000b
        0x810000e
        0x810000f
        0x810000c
        0x810000d
    .end array-data

    :array_2
    .array-data 4
        0x8100075
        0x810001f
        0x8100022
        0x8100023
        0x8100020
        0x8100021
    .end array-data

    :array_3
    .array-data 4
        0x8100076
        0x810001a
        0x810001d
        0x810001e
        0x810001b
        0x810001c
    .end array-data

    :array_4
    .array-data 4
        0x8100005
        0x8100006
        0x8100009
        0x810000a
        0x8100007
        0x8100008
    .end array-data

    :array_5
    .array-data 4
        0x8100078
        0x8100000
        0x8100003
        0x8100004
        0x8100001
        0x8100002
    .end array-data

    :array_6
    .array-data 4
        0x8100079
        0x8100015
        0x8100018
        0x8100019
        0x8100016
        0x8100017
    .end array-data

    :array_7
    .array-data 4
        0x810007a
        0x8100010
        0x8100013
        0x8100014
        0x8100011
        0x8100012
    .end array-data
.end method

.method private configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V
    .locals 8
    .param p1, "resourceId"    # [I
    .param p2, "accountInfo"    # Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 139
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v3

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 149
    :goto_0
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 155
    :goto_1
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 161
    :goto_2
    const-string v1, "CustomAccountRemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x4

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x5

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 173
    :goto_3
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 175
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 177
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v3

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 146
    :cond_2
    const-string v1, "CustomAccountRemoteViews"

    const-string v2, "--- The icon of account is null ---"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v6

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v7

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x4

    aget v2, p1, v2

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 170
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x5

    aget v2, p1, v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method


# virtual methods
.method public configureView()V
    .locals 6

    .prologue
    .line 117
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 119
    const-string v3, "CustomAccountRemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---configureView---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 121
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    const v4, 0x8100077

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 124
    const-string v3, "CustomAccountRemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- configure account id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 128
    .local v0, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v2, v3, v1

    .line 129
    .local v2, "resourceId":[I
    invoke-direct {p0, v2, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v1    # "i":I
    .end local v2    # "resourceId":[I
    :cond_1
    const-string v3, "CustomAccountRemoteViews"

    const-string v4, "Data can not be null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-void
.end method

.method public getBigRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNormalRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
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
    .line 110
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 111
    return-void
.end method
