.class final Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool$1;
.super Ljava/lang/Object;
.source "RecentSettingsSyncPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->addToCache(Landroid/content/Context;Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->writePollToDb(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->access$000(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->sWriteDbThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsSyncPool;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 53
    return-void
.end method
