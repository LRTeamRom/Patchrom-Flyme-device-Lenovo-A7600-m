.class public abstract Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;
.super Landroid/app/Fragment;
.source "PullToRefreshListFragment.java"

# interfaces
.implements Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field protected mListView:Landroid/widget/ListView;

.field protected mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private ensureList()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_1

    .line 91
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Content view not yet created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 95
    check-cast v1, Landroid/widget/ListView;

    .end local v1    # "root":Landroid/view/View;
    iput-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mListView:Landroid/widget/ListView;

    goto :goto_0

    .line 97
    .restart local v1    # "root":Landroid/view/View;
    :cond_2
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "rawListView":Landroid/view/View;
    if-nez v0, :cond_3

    .line 99
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_3
    instance-of v2, v0, Landroid/widget/ListView;

    if-nez v2, :cond_4

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_4
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "rawListView":Landroid/view/View;
    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mListView:Landroid/widget/ListView;

    goto :goto_0
.end method


# virtual methods
.method protected abstract createRefreshableView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->createRefreshableView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "root":Landroid/view/View;
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    if-nez v1, :cond_1

    .line 25
    if-nez v0, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not yet created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_0
    instance-of v1, v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    if-eqz v1, :cond_2

    .line 30
    check-cast v0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    .end local v0    # "root":Landroid/view/View;
    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    .line 37
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->setVibrateWhenOnPull(Z)V

    .line 39
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    return-object v1

    .line 32
    .restart local v0    # "root":Landroid/view/View;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Content view is not a PullToRefreshListView class"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract onRefresh()V
.end method

.method public onRefresh(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "refreshView":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-virtual {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->onRefresh()V

    .line 55
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->ensureList()V

    .line 49
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 50
    return-void
.end method

.method public setVibrateWhenOnPull(Z)V
    .locals 4
    .param p1, "vibrate"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;

    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "vibrateListener":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<Landroid/widget/ListView;>;"
    sget-object v1, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->addVibEvent(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;J)V

    .line 78
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setOnPullEventListener(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V

    .line 82
    .end local v0    # "vibrateListener":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<Landroid/widget/ListView;>;"
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->setOnPullEventListener(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V

    goto :goto_0
.end method
