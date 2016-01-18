.class public Lcom/android/mistyrain/Carrie;
.super Landroid/widget/TextView;
.source "Carrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mistyrain/Carrie;->text:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/android/mistyrain/Carrie;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 33
    iget-object v0, p0, Lcom/android/mistyrain/Carrie;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;

    invoke-direct {v1, p0}, Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;-><init>(Lcom/android/mistyrain/Carrie;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.carrieroperator"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/android/mistyrain/Carrie;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrieroperator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mistyrain/Carrie;->text:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/mistyrain/Carrie;->text:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 37
    iget-object v0, p0, Lcom/android/mistyrain/Carrie;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mistyrain/Carrie;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_2b
    return-void
.end method
