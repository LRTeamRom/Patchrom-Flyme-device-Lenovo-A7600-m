.class Lcom/android/internal/telephony/dataconnection/DctController$1;
.super Ljava/lang/Object;
.source "DctController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const-string v1, "disable data service timeout and enable data service again"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZJ)V

    .line 124
    return-void
.end method
