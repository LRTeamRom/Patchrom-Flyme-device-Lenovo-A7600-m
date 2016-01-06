.class Lcom/lenovo/settings/search/SearchResultsSummary$1;
.super Landroid/os/Handler;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mLoadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$000(Lcom/lenovo/settings/search/SearchResultsSummary;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/search/SearchResultsSummary$1;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/SearchResultsSummary;->loadSearchContent()V

    .line 85
    return-void
.end method
