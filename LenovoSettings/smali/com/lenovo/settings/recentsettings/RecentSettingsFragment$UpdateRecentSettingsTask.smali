.class Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;
.super Landroid/os/AsyncTask;
.source "RecentSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRecentSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;
    .param p2, "x1"    # Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$1;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;-><init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 209
    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-virtual {v2}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 210
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->syncPollToDb(Landroid/content/Context;)V

    .line 212
    sget-object v1, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    .line 213
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const-string v3, "itemType=? OR (itemType=? AND frequency>?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    const-string v8, "2"

    aput-object v8, v4, v5

    const-string v5, "timestamp DESC limit 20"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    .local v7, "cursor":Landroid/database/Cursor;
    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-virtual {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 231
    .local v0, "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onRefreshComplete()V

    .line 235
    :cond_0
    if-eqz p1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
    invoke-static {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$200(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    new-instance v2, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    iget-object v3, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    iget-object v4, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    invoke-virtual {v4}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;-><init>(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    # setter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
    invoke-static {v1, v2}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$202(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;)Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    .line 239
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$300(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
    invoke-static {v2}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$200(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->this$0:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;

    # getter for: Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->mRecentSettingsAdapter:Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;
    invoke-static {v1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;->access$200(Lcom/lenovo/settings/recentsettings/RecentSettingsFragment;)Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$RecentSettingsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/recentsettings/RecentSettingsFragment$UpdateRecentSettingsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
