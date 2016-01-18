.class Lcom/android/mistyrain/shakeFramelayout$1$1;
.super Ljava/lang/Object;
.source "shakeFramelayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/shakeFramelayout$1;->onShake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mistyrain/shakeFramelayout$1;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/shakeFramelayout$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/shakeFramelayout$1$1;->this$1:Lcom/android/mistyrain/shakeFramelayout$1;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout$1$1;->this$1:Lcom/android/mistyrain/shakeFramelayout$1;

    # getter for: Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;
    invoke-static {v0}, Lcom/android/mistyrain/shakeFramelayout$1;->access$0(Lcom/android/mistyrain/shakeFramelayout$1;)Lcom/android/mistyrain/shakeFramelayout;

    move-result-object v0

    iput p2, v0, Lcom/android/mistyrain/shakeFramelayout;->item:I

    .line 261
    return-void
.end method
