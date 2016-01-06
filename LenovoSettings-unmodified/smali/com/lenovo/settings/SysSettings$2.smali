.class Lcom/lenovo/settings/SysSettings$2;
.super Ljava/lang/Object;
.source "SysSettings.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/SysSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/SysSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/SysSettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/settings/SysSettings$2;->this$0:Lcom/lenovo/settings/SysSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$2;->this$0:Lcom/lenovo/settings/SysSettings;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/settings/SysSettings;->m_can_show:Z
    invoke-static {v0, v1}, Lcom/lenovo/settings/SysSettings;->access$002(Lcom/lenovo/settings/SysSettings;Z)Z

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/SysSettings$2;->this$0:Lcom/lenovo/settings/SysSettings;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/settings/SysSettings;->m_can_show:Z
    invoke-static {v0, v1}, Lcom/lenovo/settings/SysSettings;->access$002(Lcom/lenovo/settings/SysSettings;Z)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 118
    return-void
.end method
