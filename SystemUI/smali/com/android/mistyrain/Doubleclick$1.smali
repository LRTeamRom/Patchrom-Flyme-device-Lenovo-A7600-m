.class Lcom/android/mistyrain/Doubleclick$1;
.super Ljava/lang/Object;
.source "Doubleclick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/Doubleclick;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Doubleclick;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Doubleclick;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iput-object p2, p0, Lcom/android/mistyrain/Doubleclick$1;->val$context:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/mistyrain/Doubleclick;->time:J

    .line 77
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-wide v0, v0, Lcom/android/mistyrain/Doubleclick;->time:J

    iget-object v2, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-wide v2, v2, Lcom/android/mistyrain/Doubleclick;->lasttime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_31

    .line 78
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_doubleclick"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mistyrain/Doubleclick;->i:I

    .line 79
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget v1, v1, Lcom/android/mistyrain/Doubleclick;->i:I

    # invokes: Lcom/android/mistyrain/Doubleclick;->Clickaction(I)V
    invoke-static {v0, v1}, Lcom/android/mistyrain/Doubleclick;->access$0(Lcom/android/mistyrain/Doubleclick;I)V

    .line 82
    :cond_31
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick$1;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-wide v1, v1, Lcom/android/mistyrain/Doubleclick;->time:J

    iput-wide v1, v0, Lcom/android/mistyrain/Doubleclick;->lasttime:J

    .line 83
    return-void
.end method
