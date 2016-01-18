.class Lcom/android/mistyrain/shakeFramelayout$1$2;
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
    iput-object p1, p0, Lcom/android/mistyrain/shakeFramelayout$1$2;->this$1:Lcom/android/mistyrain/shakeFramelayout$1;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mistyrain/shakeFramelayout$1$2;->this$1:Lcom/android/mistyrain/shakeFramelayout$1;

    # getter for: Lcom/android/mistyrain/shakeFramelayout$1;->this$0:Lcom/android/mistyrain/shakeFramelayout;
    invoke-static {v0}, Lcom/android/mistyrain/shakeFramelayout$1;->access$0(Lcom/android/mistyrain/shakeFramelayout$1;)Lcom/android/mistyrain/shakeFramelayout;

    move-result-object v0

    iget v0, v0, Lcom/android/mistyrain/shakeFramelayout;->item:I

    packed-switch v0, :pswitch_data_24

    .line 292
    :goto_b
    return-void

    .line 272
    :pswitch_c
    const-string v0, "reboot -p"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_b

    .line 276
    :pswitch_12
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_b

    .line 281
    :pswitch_18
    const-string v0, "reboot recovery"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_b

    .line 286
    :pswitch_1e
    const-string v0, "reboot bootloader"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_b

    .line 268
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method
