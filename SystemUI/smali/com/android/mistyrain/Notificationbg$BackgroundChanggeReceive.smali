.class Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;
.super Landroid/content/BroadcastReceiver;
.source "Notificationbg.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/Notificationbg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundChanggeReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Notificationbg;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Notificationbg;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;->this$0:Lcom/android/mistyrain/Notificationbg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string v3, "notifybgpath"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;->this$0:Lcom/android/mistyrain/Notificationbg;

    invoke-virtual {v3, v1}, Lcom/android/mistyrain/Notificationbg;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v3, p0, Lcom/android/mistyrain/Notificationbg$BackgroundChanggeReceive;->this$0:Lcom/android/mistyrain/Notificationbg;

    iget-object v3, v3, Lcom/android/mistyrain/Notificationbg;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notifinationbg"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    return-void
.end method
