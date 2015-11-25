.class Lcom/mediatek/rns/RnsService$WifiRssiMonitor;
.super Landroid/os/AsyncTask;
.source "RnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiRssiMonitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsService;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsService;)V
    .locals 4

    .prologue
    .line 627
    iput-object p1, p0, Lcom/mediatek/rns/RnsService$WifiRssiMonitor;->this$0:Lcom/mediatek/rns/RnsService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 629
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private checkWifi()V
    .locals 2

    .prologue
    .line 642
    const-string v0, "RnsService"

    const-string v1, "checkWifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 625
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/rns/RnsService$WifiRssiMonitor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/mediatek/rns/RnsService$WifiRssiMonitor;->checkWifi()V

    .line 638
    const/4 v0, 0x0

    return-object v0
.end method
