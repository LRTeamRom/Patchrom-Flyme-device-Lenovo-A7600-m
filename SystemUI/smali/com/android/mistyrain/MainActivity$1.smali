.class Lcom/android/mistyrain/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mistyrain/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/MainActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mistyrain/MainActivity$1;->this$0:Lcom/android/mistyrain/MainActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 36
    new-instance v0, Lcom/android/mistyrain/screenshot;

    iget-object v1, p0, Lcom/android/mistyrain/MainActivity$1;->this$0:Lcom/android/mistyrain/MainActivity;

    invoke-direct {v0, v1}, Lcom/android/mistyrain/screenshot;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "s":Lcom/android/mistyrain/screenshot;
    invoke-virtual {v0}, Lcom/android/mistyrain/screenshot;->InitNotification()V

    .line 38
    invoke-virtual {v0}, Lcom/android/mistyrain/screenshot;->ScreenShot()V

    .line 40
    return-void
.end method
