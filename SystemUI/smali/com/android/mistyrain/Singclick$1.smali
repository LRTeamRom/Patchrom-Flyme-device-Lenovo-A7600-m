.class Lcom/android/mistyrain/Singclick$1;
.super Ljava/lang/Object;
.source "Singclick.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/Singclick;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Singclick;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Singclick;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/Singclick$1;->this$0:Lcom/android/mistyrain/Singclick;

    iput-object p2, p0, Lcom/android/mistyrain/Singclick$1;->val$context:Landroid/content/Context;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mistyrain/Singclick$1;->this$0:Lcom/android/mistyrain/Singclick;

    iget-object v1, p0, Lcom/android/mistyrain/Singclick$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_key_Longpress"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mistyrain/Singclick;->i:I

    .line 139
    iget-object v0, p0, Lcom/android/mistyrain/Singclick$1;->this$0:Lcom/android/mistyrain/Singclick;

    iget-object v1, p0, Lcom/android/mistyrain/Singclick$1;->this$0:Lcom/android/mistyrain/Singclick;

    iget v1, v1, Lcom/android/mistyrain/Singclick;->i:I

    # invokes: Lcom/android/mistyrain/Singclick;->Clickaction(I)V
    invoke-static {v0, v1}, Lcom/android/mistyrain/Singclick;->access$0(Lcom/android/mistyrain/Singclick;I)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method
