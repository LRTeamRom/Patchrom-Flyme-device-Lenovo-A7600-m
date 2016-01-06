.class public Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;
.super Ljava/lang/Object;
.source "VibratePullEventListener.java"

# interfaces
.implements Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$OnPullEventListener",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVibMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibMap:Ljava/util/HashMap;

    .line 25
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibrator:Landroid/os/Vibrator;

    .line 26
    return-void
.end method

.method private viberate(J)V
    .locals 3
    .param p1, "vibTime"    # J

    .prologue
    .line 57
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<TV;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibrator:Landroid/os/Vibrator;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 62
    return-void
.end method


# virtual methods
.method public addVibEvent(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;J)V
    .locals 2
    .param p1, "event"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;
    .param p2, "vibTime"    # J

    .prologue
    .line 46
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<TV;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibMap:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public clearViberateParams()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<TV;>;"
    iget-object v0, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    return-void
.end method

.method public final onPullEvent(Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;)V
    .locals 4
    .param p2, "event"    # Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase",
            "<TV;>;",
            "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;, "Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener<TV;>;"
    .local p1, "refreshView":Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase;, "Lcom/lenovo/settings/pulltorefresh/PullToRefreshBase<TV;>;"
    iget-object v1, p0, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->mVibMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 31
    .local v0, "vibeParamObj":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/lenovo/settings/pulltorefresh/VibratePullEventListener;->viberate(J)V

    .line 34
    :cond_0
    return-void
.end method
