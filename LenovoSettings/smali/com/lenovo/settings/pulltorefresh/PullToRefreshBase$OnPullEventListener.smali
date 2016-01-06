.class public interface abstract Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPullEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onPullEvent(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase",
            "<TV;>;",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;",
            ")V"
        }
    .end annotation
.end method
