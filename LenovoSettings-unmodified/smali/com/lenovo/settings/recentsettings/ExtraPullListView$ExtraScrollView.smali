.class Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;
.super Landroid/widget/ScrollView;
.source "ExtraPullListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/ExtraPullListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtraScrollView"
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_T0_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_TO_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExtraScrollView"


# instance fields
.field private canReturn:Z

.field private isRefreshable:Z

.field private mCanInterceptTouch:Z

.field private mDownMotionEvent:Landroid/view/MotionEvent;

.field private mIfOverTouchSlop:Z

.field private mIsRecored:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOnRefreshListener:Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

.field private mStartY:I

.field private mState:I

.field private mTouchSlop:I

.field final synthetic this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/settings/recentsettings/ExtraPullListView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    .line 168
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mCanInterceptTouch:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mOnRefreshListener:Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIfOverTouchSlop:Z

    .line 169
    invoke-direct {p0, p2}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->init(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 4

    .prologue
    .line 374
    iget v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    return-void

    .line 376
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$500(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadViewHeight:I
    invoke-static {v1}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$300(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v1

    # invokes: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->setHeaderViewHeight(I)V
    invoke-static {v0, v1}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$400(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)V

    goto :goto_0

    .line 385
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    const/4 v1, 0x0

    # invokes: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->setHeaderViewHeight(I)V
    invoke-static {v0, v1}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$400(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->isRefreshable:Z

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->canReturn:Z

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mTouchSlop:I

    .line 186
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mOnRefreshListener:Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mOnRefreshListener:Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;->onRefresh()V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->onRefreshComplete()V

    .line 404
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 335
    const-string v5, "ExtraScrollView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExtraScrollView onInterceptTouchEvent ev.getAction() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 342
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 343
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 345
    :pswitch_1
    iput v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mLastMotionX:F

    .line 346
    iput v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mLastMotionY:F

    .line 348
    iget-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getScrollY()I

    move-result v5

    if-nez v5, :cond_0

    .line 349
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    .line 350
    float-to-int v4, v2

    iput v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    goto :goto_0

    .line 354
    :pswitch_2
    iget v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mLastMotionX:F

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 355
    .local v1, "xDiff":I
    iget v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mLastMotionY:F

    sub-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v3, v5

    .line 356
    .local v3, "yDiff":I
    const-string v5, "ExtraScrollView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExtraScrollView onInterceptTouchEvent xDiff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v5, "ExtraScrollView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExtraScrollView onInterceptTouchEvent yDiff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v5, "ExtraScrollView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExtraScrollView onInterceptTouchEvent mTouchSlop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mCanInterceptTouch:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_0

    if-le v3, v1, :cond_0

    .line 360
    const-string v5, "ExtraScrollView"

    const-string v6, "ExtraScrollView onInterceptTouchEvent return true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 394
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 395
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->invalidate()V

    .line 396
    invoke-virtual {p0, v1, v1}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->scrollTo(II)V

    .line 397
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 190
    const-string v6, "ExtraScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent event.getAction()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mCanInterceptTouch:Z

    if-nez v6, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 194
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mCanInterceptTouch:Z

    :cond_0
    move v4, v5

    .line 329
    :goto_0
    return v4

    .line 198
    :cond_1
    iget-boolean v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->isRefreshable:Z

    if-eqz v6, :cond_2

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 326
    :cond_2
    :goto_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 201
    :pswitch_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 202
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    if-nez v6, :cond_2

    .line 203
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    goto :goto_1

    .line 209
    :pswitch_1
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-eq v6, v10, :cond_5

    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-eq v6, v11, :cond_5

    .line 210
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-ne v6, v9, :cond_3

    .line 213
    :cond_3
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-ne v6, v4, :cond_4

    .line 214
    iput v9, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 215
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 217
    :cond_4
    iget v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-nez v4, :cond_5

    .line 218
    iput v10, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 219
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 220
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->onRefresh()V

    .line 223
    :cond_5
    iget-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIfOverTouchSlop:Z

    if-nez v4, :cond_6

    .line 224
    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$100(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 225
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 226
    .local v3, "transformedEvent":Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$100(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_6
    iput-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    .line 229
    iput-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIfOverTouchSlop:Z

    goto :goto_1

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v2, v6

    .line 233
    .local v2, "tempY":I
    iget-boolean v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getScrollY()I

    move-result v6

    if-nez v6, :cond_7

    .line 234
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    .line 235
    iput v2, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    .line 237
    :cond_7
    const-string v6, "ExtraScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mListViewFirstVisiableItem = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I
    invoke-static {v8}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$000(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v6, "ExtraScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHeadView.getPaddingTop() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;
    invoke-static {v8}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$200(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v6, "ExtraScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHeadViewHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadViewHeight:I
    invoke-static {v8}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$300(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v6, "ExtraScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tempY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v6, "ExtraScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStartY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I
    invoke-static {v6}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$000(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mListViewFirstVisiableItem:I
    invoke-static {v6}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$000(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadView:Landroid/view/View;
    invoke-static {v6}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$200(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_9

    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    if-gez v6, :cond_9

    .line 245
    :cond_8
    const-string v6, "ExtraScrollView"

    const-string v7, "return false"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0, v5}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->setCanInterceptTouch(Z)V

    .line 248
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 249
    .local v0, "cancleEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 250
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 252
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 253
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 254
    .restart local v3    # "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 255
    iput v9, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 256
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 257
    iput-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    .line 258
    iput-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIfOverTouchSlop:Z

    move v4, v5

    .line 259
    goto/16 :goto_0

    .line 261
    .end local v0    # "cancleEvent":Landroid/view/MotionEvent;
    .end local v3    # "transformedEvent":Landroid/view/MotionEvent;
    :cond_9
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-eq v6, v10, :cond_2

    iget-boolean v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIsRecored:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-eq v6, v11, :cond_2

    .line 262
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mTouchSlop:I

    if-le v6, v7, :cond_a

    .line 263
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mIfOverTouchSlop:Z

    .line 266
    :cond_a
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-nez v6, :cond_b

    .line 267
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->canReturn:Z

    .line 269
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadViewHeight:I
    invoke-static {v7}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$300(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v7

    if-ge v6, v7, :cond_10

    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    if-lez v6, :cond_10

    .line 271
    iput v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 272
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 283
    :cond_b
    :goto_2
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-ne v6, v4, :cond_c

    .line 284
    iput-boolean v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->canReturn:Z

    .line 287
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    # getter for: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->mHeadViewHeight:I
    invoke-static {v7}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$300(Lcom/lenovo/settings/recentsettings/ExtraPullListView;)I

    move-result v7

    if-lt v6, v7, :cond_11

    .line 288
    iput v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 289
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 299
    :cond_c
    :goto_3
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-ne v6, v9, :cond_d

    .line 300
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    if-lez v6, :cond_d

    .line 301
    iput v4, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 302
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    .line 307
    :cond_d
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-ne v6, v4, :cond_e

    .line 308
    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    iget v7, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x3

    # invokes: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->setHeaderViewHeight(I)V
    invoke-static {v6, v7}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$400(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)V

    .line 312
    :cond_e
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    if-nez v6, :cond_f

    .line 313
    iget-object v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->this$0:Lcom/lenovo/settings/recentsettings/ExtraPullListView;

    iget v7, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x3

    # invokes: Lcom/lenovo/settings/recentsettings/ExtraPullListView;->setHeaderViewHeight(I)V
    invoke-static {v6, v7}, Lcom/lenovo/settings/recentsettings/ExtraPullListView;->access$400(Lcom/lenovo/settings/recentsettings/ExtraPullListView;I)V

    .line 315
    :cond_f
    iget-boolean v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->canReturn:Z

    if-eqz v6, :cond_2

    .line 316
    iput-boolean v5, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->canReturn:Z

    goto/16 :goto_0

    .line 275
    :cond_10
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    if-gtz v6, :cond_b

    .line 276
    iput v9, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 277
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    goto :goto_2

    .line 292
    :cond_11
    iget v6, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mStartY:I

    sub-int v6, v2, v6

    if-gtz v6, :cond_c

    .line 293
    iput v9, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mState:I

    .line 294
    invoke-direct {p0}, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->changeHeaderViewByState()V

    goto :goto_3

    .line 327
    .end local v2    # "tempY":I
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v4, v5

    .line 329
    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCanInterceptTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mCanInterceptTouch:Z

    .line 179
    return-void
.end method

.method public setOnRefreshListener(Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/ExtraPullListView$ExtraScrollView;->mOnRefreshListener:Lcom/lenovo/settings/recentsettings/ExtraPullListView$OnRefreshListener;

    .line 408
    return-void
.end method
