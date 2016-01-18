.class public Lcom/android/mistyrain/Notificationbg;
.super Landroid/widget/LinearLayout;
.source "Notificationbg.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/android/mistyrain/Notificationbg;->context:Landroid/content/Context;

    .line 39
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mistyrain/Notificationbg;->setOrientation(I)V

    .line 43
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "ANDROID.NOTIFICATIONBG_CHANGER"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v4, Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;

    invoke-direct {v4, p0}, Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;-><init>(Lcom/android/mistyrain/Notificationbg;)V

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notifinationbg"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "imagepath":Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 49
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_32

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/mistyrain/Notificationbg;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_32
    :goto_32
    return-void

    .line 57
    :cond_33
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mistyrain/Notificationbg;->setBackgroundColor(I)V

    goto :goto_32
.end method
