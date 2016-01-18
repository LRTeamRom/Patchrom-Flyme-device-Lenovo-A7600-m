.class Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Carrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mistyrain/Carrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierchangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mistyrain/Carrie;


# direct methods
.method constructor <init>(Lcom/android/mistyrain/Carrie;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;->this$0:Lcom/android/mistyrain/Carrie;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;->this$0:Lcom/android/mistyrain/Carrie;

    const-string v1, "text"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mistyrain/Carrie;->text:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;->this$0:Lcom/android/mistyrain/Carrie;

    iget-object v1, p0, Lcom/android/mistyrain/Carrie$CarrierchangeReceiver;->this$0:Lcom/android/mistyrain/Carrie;

    iget-object v1, v1, Lcom/android/mistyrain/Carrie;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mistyrain/Carrie;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
