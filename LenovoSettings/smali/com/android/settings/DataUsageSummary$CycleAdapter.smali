.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1404
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1398
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1399
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1405
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1406
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;

    .line 1407
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1421
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1424
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .prologue
    .line 1431
    if-eqz p1, :cond_2

    .line 1432
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1433
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1434
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;

    .line 1435
    .local v2, "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1433
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1437
    :cond_1
    invoke-virtual {v2, p1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;->compareTo(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1442
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 1410
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1411
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1412
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1415
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1416
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1417
    return-void
.end method
