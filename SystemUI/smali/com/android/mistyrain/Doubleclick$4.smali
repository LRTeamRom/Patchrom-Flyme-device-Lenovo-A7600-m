.class Lcom/android/mistyrain/Doubleclick$4;
.super Ljava/lang/Object;
.source "Doubleclick.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/Doubleclick;->Clickaction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Doubleclick;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Doubleclick;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/Doubleclick$4;->this$0:Lcom/android/mistyrain/Doubleclick;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$4;->this$0:Lcom/android/mistyrain/Doubleclick;

    iget v0, v0, Lcom/android/mistyrain/Doubleclick;->item:I

    packed-switch v0, :pswitch_data_20

    .line 348
    :goto_7
    return-void

    .line 328
    :pswitch_8
    const-string v0, "reboot -p"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 332
    :pswitch_e
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 337
    :pswitch_14
    const-string v0, "reboot recovery"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 342
    :pswitch_1a
    const-string v0, "reboot bootloader"

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    goto :goto_7

    .line 324
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method
