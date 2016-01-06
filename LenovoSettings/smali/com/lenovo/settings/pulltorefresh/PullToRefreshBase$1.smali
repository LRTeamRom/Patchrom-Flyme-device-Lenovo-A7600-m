.class Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 477
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase.1;"
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 1

    .prologue
    .line 481
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase.1;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;

    # invokes: Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->callRefreshListener()V
    invoke-static {v0}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;->access$000(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;)V

    .line 482
    return-void
.end method
