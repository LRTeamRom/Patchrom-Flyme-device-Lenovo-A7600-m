.class Lcom/android/mistyrain/Doubleclick$3;
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
    iput-object p1, p0, Lcom/android/mistyrain/Doubleclick$3;->this$0:Lcom/android/mistyrain/Doubleclick;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/mistyrain/Doubleclick$3;->this$0:Lcom/android/mistyrain/Doubleclick;

    iput p2, v0, Lcom/android/mistyrain/Doubleclick;->item:I

    .line 317
    return-void
.end method
