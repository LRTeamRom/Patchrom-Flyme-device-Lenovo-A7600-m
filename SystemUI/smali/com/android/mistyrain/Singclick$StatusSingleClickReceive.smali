.class Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;
.super Landroid/content/BroadcastReceiver;
.source "Singclick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/Singclick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusSingleClickReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Singclick;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Singclick;)V
    .registers 2

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 465
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANDROID.STATUS_SINGLECLICK_SITE_CHANGER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 466
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    iget-object v3, v3, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_singleclick_site"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 470
    .local v2, "site":I
    packed-switch v2, :pswitch_data_8a

    .line 529
    .end local v2    # "site":I
    :cond_1f
    :goto_1f
    return-void

    .line 472
    .restart local v2    # "site":I
    :pswitch_20
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/mistyrain/Singclick;->setGravity(I)V

    goto :goto_1f

    .line 475
    :pswitch_27
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/mistyrain/Singclick;->setGravity(I)V

    goto :goto_1f

    .line 480
    :pswitch_2f
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/mistyrain/Singclick;->setGravity(I)V

    goto :goto_1f

    .line 494
    .end local v2    # "site":I
    :cond_36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANDROID.INTENT.KEYLONGPRESS_EXTRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 497
    const-string v3, "ANDROID.INTENT.KEYLONGPRESS_EXTRE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "i":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 506
    :try_start_4a
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/mistyrain/Singclick;->Clickaction(I)V
    invoke-static {v3, v4}, Lcom/android/mistyrain/Singclick;->access$0(Lcom/android/mistyrain/Singclick;I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_58

    goto :goto_1f

    .line 507
    :catch_58
    move-exception v3

    goto :goto_1f

    .line 515
    .end local v1    # "i":Ljava/lang/String;
    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANDROID.STATUS_SINGLECLICK_OPEN_CHANGER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 517
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    iget-object v3, v3, Lcom/android/mistyrain/Singclick;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 518
    const-string v4, "status_key_open"

    .line 517
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 520
    .local v0, "a":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7f

    .line 521
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    iget-object v3, v3, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 524
    :cond_7f
    iget-object v3, p0, Lcom/android/mistyrain/Singclick$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/Singclick;

    iget-object v3, v3, Lcom/android/mistyrain/Singclick;->imageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 470
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method
