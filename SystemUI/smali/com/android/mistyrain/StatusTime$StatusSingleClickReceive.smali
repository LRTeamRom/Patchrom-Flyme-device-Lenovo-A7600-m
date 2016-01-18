.class Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;
.super Landroid/content/BroadcastReceiver;
.source "StatusTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/StatusTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusSingleClickReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/StatusTime;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/StatusTime;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 177
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Ljava/sql/Date;-><init>(J)V

    .line 179
    .local v1, "curDate":Ljava/sql/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    iget-object v5, v5, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v1    # "curDate":Ljava/sql/Date;
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "str":Ljava/lang/String;
    :cond_28
    :goto_28
    return-void

    .line 185
    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ANDROID.STATUS_TIME_SITE_CHANGER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 186
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    iget-object v5, v5, Lcom/android/mistyrain/StatusTime;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "status_time_site"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, "site":I
    packed-switch v3, :pswitch_data_8c

    goto :goto_28

    .line 192
    :pswitch_47
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/mistyrain/StatusTime;->setGravity(I)V

    goto :goto_28

    .line 195
    :pswitch_4e
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/mistyrain/StatusTime;->setGravity(I)V

    goto :goto_28

    .line 200
    :pswitch_56
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/mistyrain/StatusTime;->setGravity(I)V

    goto :goto_28

    .line 216
    .end local v3    # "site":I
    :cond_5d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ANDROID.STATUS_TIME_OPEN_CHANGER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 218
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    iget-object v5, v5, Lcom/android/mistyrain/StatusTime;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 219
    const-string v6, "status_time_open"

    .line 218
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "a":I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_82

    .line 222
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    iget-object v5, v5, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 225
    :cond_82
    iget-object v5, p0, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;->this$0:Lcom/android/mistyrain/StatusTime;

    iget-object v5, v5, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 190
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_4e
        :pswitch_56
    .end packed-switch
.end method
