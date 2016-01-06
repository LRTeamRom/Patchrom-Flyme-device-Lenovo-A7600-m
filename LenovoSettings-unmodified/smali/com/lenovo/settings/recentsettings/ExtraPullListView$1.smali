.class Lcom/lenovo/settings/recentsettings/ExtraPullListView$1;
.super Ljava/lang/Object;
.source "ExtraPullListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/ExtraPullListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$1;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisiableItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$1;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # setter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I
    invoke-static {v0, p2}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$002(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)I

    .line 40
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 44
    return-void
.end method
