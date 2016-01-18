.class Lcom/android/mistyrain/Singclick$4;
.super Ljava/lang/Object;
.source "Singclick.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/Singclick;->Clickaction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Singclick;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Singclick;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/Singclick$4;->this$0:Lcom/android/mistyrain/Singclick;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/mistyrain/Singclick$4;->this$0:Lcom/android/mistyrain/Singclick;

    iget v0, v0, Lcom/android/mistyrain/Singclick;->item:I

    packed-switch v0, :pswitch_data_20

    .line 427
    :goto_7
    return-void

    .line 407
    :pswitch_8
    const-string v0, "reboot -p"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 411
    :pswitch_e
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 416
    :pswitch_14
    const-string v0, "reboot recovery"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 421
    :pswitch_1a
    const-string v0, "reboot bootloader"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 403
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
