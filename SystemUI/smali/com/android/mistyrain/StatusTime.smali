.class public Lcom/android/mistyrain/StatusTime;
.super Landroid/widget/RelativeLayout;
.source "StatusTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/android/mistyrain/StatusTime;->context:Landroid/content/Context;

    .line 48
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    .line 51
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0x64

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v4, "parmas":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Ljava/sql/Date;-><init>(J)V

    .line 58
    .local v1, "curDate":Ljava/sql/Date;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/mistyrain/StatusTime;->addView(Landroid/view/View;)V

    .line 66
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "ANDROID.STATUS_TIME_SITE_CHANGER"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v7, "ANDROID.STATUS_TIME_OPEN_CHANGER"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->context:Landroid/content/Context;

    new-instance v8, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;

    invoke-direct {v8, p0}, Lcom/android/mistyrain/StatusTime$StatusSingleClickReceive;-><init>(Lcom/android/mistyrain/StatusTime;)V

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 74
    const-string v8, "status_time_open"

    .line 73
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "a":I
    if-ne v0, v9, :cond_8e

    .line 76
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "status_time_site"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 85
    .local v5, "site":I
    packed-switch v5, :pswitch_data_a6

    .line 108
    :goto_83
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    new-instance v8, Lcom/android/mistyrain/StatusTime$1;

    invoke-direct {v8, p0}, Lcom/android/mistyrain/StatusTime$1;-><init>(Lcom/android/mistyrain/StatusTime;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    return-void

    .line 79
    .end local v5    # "site":I
    :cond_8e
    iget-object v7, p0, Lcom/android/mistyrain/StatusTime;->tv:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_76

    .line 87
    .restart local v5    # "site":I
    :pswitch_96
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/mistyrain/StatusTime;->setGravity(I)V

    goto :goto_83

    .line 94
    :pswitch_9b
    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/mistyrain/StatusTime;->setGravity(I)V

    goto :goto_83

    .line 98
    :pswitch_a1
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/mistyrain/StatusTime;->setGravity(I)V

    goto :goto_83

    .line 85
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_96
        :pswitch_9b
        :pswitch_a1
    .end packed-switch
.end method
