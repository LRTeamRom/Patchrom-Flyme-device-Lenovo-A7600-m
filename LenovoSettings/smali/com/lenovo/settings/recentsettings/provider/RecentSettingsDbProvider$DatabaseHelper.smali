.class Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecentSettingsDbProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const-string v0, "RecentSettingsProvider.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 171
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 176
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 185
    const-string v0, "DROP TABLE IF EXISTS RecentSettingsItem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 180
    invoke-static {p1, p2, p3}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 181
    return-void
.end method
