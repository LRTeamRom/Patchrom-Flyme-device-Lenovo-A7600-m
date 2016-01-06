.class public Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;
.super Ljava/lang/Object;
.source "RecentSettingsItem.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE RecentSettingsItem (_id INTEGER PRIMARY KEY,itemType INTEGER,titleStringId INTEGER,titleStringPackageName TEXT,screenTitleStringId INTEGER,fragmentClassName TEXT,intentAction TEXT,intentTargetPackage TEXT,intentTargetClass TEXT,pluginPrefKey TEXT,frequency LONG,timestamp LONG);"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "timestamp ASC"

.field public static final FRAGMENT_CLASS_NAME:Ljava/lang/String; = "fragmentClassName"

.field public static final FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final INTENT_ACTION:Ljava/lang/String; = "intentAction"

.field public static final INTENT_TARGET_CLASS:Ljava/lang/String; = "intentTargetClass"

.field public static final INTENT_TARGET_PACKAGE:Ljava/lang/String; = "intentTargetPackage"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final ITEM_TYPE_CLICK:I = 0x0

.field public static final ITEM_TYPE_SET:I = 0x1

.field public static final PLUGIN_PREF_KEY:Ljava/lang/String; = "pluginPrefKey"

.field public static final SCREEN_TITLE_STRING_ID:Ljava/lang/String; = "screenTitleStringId"

.field public static final TABLE_NAME:Ljava/lang/String; = "RecentSettingsItem"

.field private static final TAG:Ljava/lang/String; = "RecentSettingsItem"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TITLE_STRING_ID:Ljava/lang/String; = "titleStringId"

.field public static final TITLE_STRING_PACKAGE_NAME:Ljava/lang/String; = "titleStringPackageName"


# instance fields
.field public mFragmentClassName:Ljava/lang/String;

.field public mFrequency:J

.field public mId:J

.field public mIntentAction:Ljava/lang/String;

.field public mIntentTargetClass:Ljava/lang/String;

.field public mIntentTargetPackage:Ljava/lang/String;

.field public mItemType:I

.field public mPluginPrefKey:Ljava/lang/String;

.field public mScreenTitleStringId:I

.field public mTimestamp:J

.field public mTitleStringId:I

.field public mTitleStringPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0, p1}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->restore(Landroid/database/Cursor;)V

    .line 106
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 68
    const-string v0, "CREATE TABLE RecentSettingsItem (_id INTEGER PRIMARY KEY,itemType INTEGER,titleStringId INTEGER,titleStringPackageName TEXT,screenTitleStringId INTEGER,fragmentClassName TEXT,intentAction TEXT,intentTargetPackage TEXT,intentTargetClass TEXT,pluginPrefKey TEXT,frequency LONG,timestamp LONG);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 72
    const-string v0, "RecentSettingsItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will drop existed table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "DROP TABLE IF EXISTS RecentSettingsItem"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method private restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 125
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mId:J

    .line 126
    const-string v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mItemType:I

    .line 127
    const-string v0, "titleStringId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringId:I

    .line 128
    const-string v0, "titleStringPackageName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringPackageName:Ljava/lang/String;

    .line 129
    const-string v0, "screenTitleStringId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mScreenTitleStringId:I

    .line 130
    const-string v0, "fragmentClassName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFragmentClassName:Ljava/lang/String;

    .line 131
    const-string v0, "intentAction"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentAction:Ljava/lang/String;

    .line 132
    const-string v0, "intentTargetPackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentTargetPackage:Ljava/lang/String;

    .line 133
    const-string v0, "intentTargetClass"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentTargetClass:Ljava/lang/String;

    .line 134
    const-string v0, "pluginPrefKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mPluginPrefKey:Ljava/lang/String;

    .line 135
    const-string v0, "frequency"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFrequency:J

    .line 136
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTimestamp:J

    .line 137
    return-void
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "itemType"

    iget v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mItemType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v1, "titleStringId"

    iget v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "titleStringPackageName"

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTitleStringPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "screenTitleStringId"

    iget v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mScreenTitleStringId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "fragmentClassName"

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "intentAction"

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "intentTargetPackage"

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "intentTargetClass"

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mIntentTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "pluginPrefKey"

    iget-object v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mPluginPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "frequency"

    iget-wide v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mFrequency:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsItem;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    return-object v0
.end method
