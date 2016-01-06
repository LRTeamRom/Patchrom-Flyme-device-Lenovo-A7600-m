.class final Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$5;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x7f0a07d6

    .line 628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 633
    .local v0, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 634
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 635
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 648
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07f1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 649
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 650
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 653
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07ef

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 654
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 655
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 658
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a0332

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 659
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 660
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 663
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07f3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 664
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 665
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 668
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a0333

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 669
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 670
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 673
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a0334

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 674
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 675
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 678
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07f7

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 679
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 680
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 683
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07f5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 684
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 685
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 688
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07f9

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 689
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 690
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 693
    .restart local v0    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const v3, 0x7f0a07f8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 694
    iput-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 695
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    return-object v1
.end method
