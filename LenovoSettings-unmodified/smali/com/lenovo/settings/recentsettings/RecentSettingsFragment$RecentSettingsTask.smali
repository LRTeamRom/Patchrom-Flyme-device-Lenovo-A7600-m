.class Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;
.super Landroid/os/AsyncTask;
.source "RecentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
    .param p2, "x1"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;-><init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-virtual {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 252
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->startToRefresh()V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-virtual {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->syncPollToDb(Landroid/content/Context;)V

    .line 257
    const-string v1, "OK"

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mPullToRefreshListView:Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;
    invoke-static {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$400(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 264
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-virtual {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 265
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragmentFromRecent()V

    .line 267
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->onRefreshComplete()V

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 271
    return-void
.end method
