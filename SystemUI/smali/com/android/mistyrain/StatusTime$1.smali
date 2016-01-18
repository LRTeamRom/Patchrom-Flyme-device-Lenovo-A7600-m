.class Lcom/android/mistyrain/StatusTime$1;
.super Ljava/lang/Object;
.source "StatusTime.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/StatusTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/StatusTime;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/StatusTime;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/StatusTime$1;->this$0:Lcom/android/mistyrain/StatusTime;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_a

    .line 127
    const/4 v0, 0x0

    :pswitch_9
    return v0

    .line 112
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
