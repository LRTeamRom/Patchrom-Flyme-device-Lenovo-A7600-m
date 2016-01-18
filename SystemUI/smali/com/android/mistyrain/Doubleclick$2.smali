.class Lcom/android/mistyrain/Doubleclick$2;
.super Ljava/lang/Object;
.source "Doubleclick.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/android/mistyrain/Doubleclick$2;->this$0:Lcom/android/mistyrain/Doubleclick;

    iput-object p2, p0, Lcom/android/mistyrain/Doubleclick$2;->val$context:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$2;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_LongPress"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mistyrain/Doubleclick;->i:I

    .line 96
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$2;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget-object v1, p0, Lcom/android/mistyrain/Doubleclick$2;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget v1, v1, Lcom/android/mistyrain/Doubleclick;->i:I

    # invokes: Lcom/android/mistyrain/Doubleclick;->Clickaction(I)V
    invoke-static {v0, v1}, Lcom/android/mistyrain/Doubleclick;->access$0(Lcom/android/mistyrain/Doubleclick;I)V

    .line 98
    return v3
.end method
