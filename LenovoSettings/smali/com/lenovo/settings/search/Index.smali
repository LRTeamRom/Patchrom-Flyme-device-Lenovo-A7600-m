.class public Lcom/lenovo/settings/search/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/search/Index$1;,
        Lcom/lenovo/settings/search/Index$SaveSearchQueryTask;,
        Lcom/lenovo/settings/search/Index$UpdateIndexTask;,
        Lcom/lenovo/settings/search/Index$QueryIndexTask;,
        Lcom/lenovo/settings/search/Index$UpdateData;
    }
.end annotation


# static fields
.field private static final BASE_AUTHORITY:Ljava/lang/String; = "com.flyme.deviceoriginalsettings.search"

.field public static final COLUMN_INDEX_CLASS_NAME:I = 0x6

.field public static final COLUMN_INDEX_ENABLED:I = 0xc

.field public static final COLUMN_INDEX_ENTRIES:I = 0x4

.field public static final COLUMN_INDEX_ICON:I = 0x8

.field public static final COLUMN_INDEX_INTENT_ACTION:I = 0x9

.field public static final COLUMN_INDEX_INTENT_ACTION_TARGET_CLASS:I = 0xb

.field public static final COLUMN_INDEX_INTENT_ACTION_TARGET_PACKAGE:I = 0xa

.field public static final COLUMN_INDEX_KEY:I = 0xd

.field public static final COLUMN_INDEX_KEYWORDS:I = 0x5

.field public static final COLUMN_INDEX_RANK:I = 0x0

.field public static final COLUMN_INDEX_SCREEN_TITLE:I = 0x7

.field public static final COLUMN_INDEX_SUMMARY_OFF:I = 0x3

.field public static final COLUMN_INDEX_SUMMARY_ON:I = 0x2

.field public static final COLUMN_INDEX_TITLE:I = 0x1

.field public static final COLUMN_INDEX_USER_ID:I = 0xe

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTRIES_SEPARATOR:Ljava/lang/String; = "|"

.field private static final FIELD_NAME_SEARCH_INDEX_DATA_PROVIDER:Ljava/lang/String; = "SEARCH_INDEX_DATA_PROVIDER"

.field private static final HYPHEN:Ljava/lang/String; = "-"

.field private static final LOG_TAG:Ljava/lang/String; = "Index"

.field private static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field private static final MAX_PROPOSED_SUGGESTIONS:I = 0x5

.field private static MAX_SAVED_SEARCH_QUERY:J = 0x0L

.field private static final NODE_NAME_CHECK_BOX_PREFERENCE:Ljava/lang/String; = "CheckBoxPreference"

.field private static final NODE_NAME_LIST_PREFERENCE:Ljava/lang/String; = "ListPreference"

.field private static final NODE_NAME_PREFERENCE_CATEGORY:Ljava/lang/String; = "PreferenceCategory"

.field private static final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String; = "PreferenceScreen"

.field private static final NON_BREAKING_HYPHEN:Ljava/lang/String; = "\u2011"

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static final TOGGLE_INDEX_CATEGORY:Z = false

.field private static final UPDATE_ENABLE_RANK:I = -0x111

.field private static sInstance:Lcom/lenovo/settings/search/Index;


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

.field private final mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mKillWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_rank"

    aput-object v1, v0, v3

    const-string v1, "data_title"

    aput-object v1, v0, v4

    const-string v1, "data_summary_on"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_keywords"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "class_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intent_target_package"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intent_target_class"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data_key_reference"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    .line 124
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data_title"

    aput-object v1, v0, v3

    const-string v1, "data_title_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_keywords"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/settings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    .line 130
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data_summary_on"

    aput-object v1, v0, v3

    const-string v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_summary_off"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lenovo/settings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    .line 140
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/lenovo/settings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 162
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    new-instance v0, Lcom/lenovo/settings/search/Index$UpdateData;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/search/Index$UpdateData;-><init>(Lcom/lenovo/settings/search/Index;)V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    .line 219
    iput-object p1, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/lenovo/settings/search/Index;->mBaseAuthority:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/search/Index;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->updateInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/search/Index;->isLocaleAlreadyIndexed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/lenovo/settings/search/provider/SearchIndexableData;
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/settings/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableData;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1400()J
    .locals 2

    .prologue
    .line 81
    sget-wide v0, Lcom/lenovo/settings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/settings/search/Index;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p1, "x1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/settings/search/Index;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mBaseAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/search/Index;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/search/Index;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/settings/search/Index;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 25
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 653
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 655
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 709
    :goto_0
    return-void

    .line 660
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 661
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 662
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 663
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 664
    .local v16, "providerRank":I
    if-lez v16, :cond_1

    add-int v17, p5, v16

    .line 666
    .local v17, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 667
    .local v23, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 668
    .local v20, "summaryOn":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 669
    .local v19, "summaryOff":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 670
    .local v12, "entries":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 672
    .local v15, "keywords":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 674
    .local v18, "screenTitle":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 675
    .local v8, "className":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 677
    .local v13, "iconResId":I
    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 678
    .local v7, "action":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 680
    .local v22, "targetPackage":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 683
    .local v21, "targetClass":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 684
    .local v14, "key":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 686
    .local v24, "userId":I
    new-instance v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 687
    .local v11, "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move/from16 v0, v17

    iput v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->rank:I

    .line 688
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 689
    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 690
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 691
    iput-object v12, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 692
    iput-object v15, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 693
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 694
    iput-object v8, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 695
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 696
    iput v13, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->iconResId:I

    .line 697
    iput-object v7, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 698
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 699
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 700
    iput-object v14, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 701
    move/from16 v0, v24

    iput v0, v11, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->userId:I

    .line 703
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/settings/search/Index;->addIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 707
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    .end local v12    # "entries":Ljava/lang/String;
    .end local v13    # "iconResId":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keywords":Ljava/lang/String;
    .end local v16    # "providerRank":I
    .end local v17    # "rank":I
    .end local v18    # "screenTitle":Ljava/lang/String;
    .end local v19    # "summaryOff":Ljava/lang/String;
    .end local v20    # "summaryOn":Ljava/lang/String;
    .end local v21    # "targetClass":Ljava/lang/String;
    .end local v22    # "targetPackage":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v24    # "userId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v16    # "providerRank":I
    :cond_1
    move/from16 v17, p5

    .line 664
    goto/16 :goto_2

    .line 707
    .end local v16    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 18
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 607
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 609
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 647
    :goto_0
    return-void

    .line 614
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 615
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 616
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 618
    .local v12, "providerRank":I
    if-lez v12, :cond_1

    add-int v13, p5, v12

    .line 620
    .local v13, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 622
    .local v17, "xmlResId":I
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 623
    .local v8, "className":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 625
    .local v11, "iconResId":I
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 628
    .local v16, "targetPackage":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 631
    .local v15, "targetClass":Ljava/lang/String;
    new-instance v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 632
    .local v14, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    iput v13, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    .line 633
    move/from16 v0, v17

    iput v0, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 634
    iput-object v8, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 635
    move-object/from16 v0, p2

    iput-object v0, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 636
    iput v11, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    .line 637
    iput-object v7, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 638
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 639
    iput-object v15, v14, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 641
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lenovo/settings/search/Index;->addIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 645
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "iconResId":I
    .end local v12    # "providerRank":I
    .end local v13    # "rank":I
    .end local v14    # "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    .end local v15    # "targetClass":Ljava/lang/String;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "xmlResId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v12    # "providerRank":I
    :cond_1
    move/from16 v13, p5

    .line 618
    goto :goto_2

    .line 645
    .end local v12    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 315
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/lenovo/settings/search/Ranking;->getBaseRankForAuthority(Ljava/lang/String;)I

    move-result v5

    .line 320
    .local v5, "baseRank":I
    invoke-static/range {p3 .. p3}, Lcom/lenovo/settings/search/Index;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 321
    .local v3, "uriForResources":Landroid/net/Uri;
    sget-object v4, Lcom/lenovo/settings/search/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/settings/search/Index;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 324
    invoke-static/range {p3 .. p3}, Lcom/lenovo/settings/search/Index;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 325
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Lcom/lenovo/settings/search/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/lenovo/settings/search/Index;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v0, 0x1

    .line 331
    .end local v3    # "uriForResources":Landroid/net/Uri;
    .end local v5    # "baseRank":I
    .end local v9    # "uriForRawData":Landroid/net/Uri;
    :goto_0
    return v0

    .line 328
    :catch_0
    move-exception v12

    .line 329
    .local v12, "e":Ljava/lang/Exception;
    const-string v0, "Index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/search/Index;->getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2, v0}, Lcom/lenovo/settings/search/Index;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    return-void
.end method

.method private buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    array-length v0, p2

    .line 772
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 773
    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v4, " LIKE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_0

    .line 777
    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;
    .param p3, "withOrderBy"    # Z

    .prologue
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/search/Index;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    if-eqz p3, :cond_0

    .line 715
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v1, "data_rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/lenovo/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 725
    sget-object v2, Lcom/lenovo/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    sget-object v2, Lcom/lenovo/settings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 727
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/search/Index;->buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/search/Index;->buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 749
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_0
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 269
    :cond_0
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1197
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1198
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1200
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 1201
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1202
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 1203
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1208
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1205
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1208
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1187
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1213
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1214
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 1216
    .local v5, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 1217
    .local v1, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1218
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_0

    .line 1219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1222
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1223
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_2

    .line 1224
    const/4 v6, 0x0

    .line 1231
    :goto_1
    return-object v6

    .line 1222
    .end local v0    # "count":I
    :cond_1
    array-length v0, v1

    goto :goto_0

    .line 1226
    .restart local v0    # "count":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1228
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1231
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1157
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1193
    sget-object v0, Lcom/flyme/deviceoriginalsettings/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1169
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1181
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1175
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1163
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 822
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 827
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 823
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 825
    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v0, v2

    .line 827
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    sget-object v0, Lcom/lenovo/settings/search/Index;->sInstance:Lcom/lenovo/settings/search/Index;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/lenovo/settings/search/Index;

    const-string v1, "com.flyme.deviceoriginalsettings.search"

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/search/Index;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/settings/search/Index;->sInstance:Lcom/lenovo/settings/search/Index;

    .line 215
    :goto_0
    sget-object v0, Lcom/lenovo/settings/search/Index;->sInstance:Lcom/lenovo/settings/search/Index;

    return-object v0

    .line 213
    :cond_0
    sget-object v0, Lcom/lenovo/settings/search/Index;->sInstance:Lcom/lenovo/settings/search/Index;

    invoke-virtual {v0, p0}, Lcom/lenovo/settings/search/Index;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 361
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 363
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 364
    sget-object v9, Lcom/lenovo/settings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 378
    :goto_0
    return-object v9

    .line 367
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 370
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 371
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 378
    .end local v6    # "count":I
    .end local v8    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-static {p3}, Lcom/lenovo/settings/search/Index;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v2, Lcom/lenovo/settings/search/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/settings/search/Index;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 353
    .end local v1    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v2, Lcom/lenovo/settings/search/Index;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/lenovo/settings/search/IndexDatabaseHelper;->getInstance()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getResId(Landroid/content/Context;Landroid/util/AttributeSet;[II)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1235
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1236
    .local v0, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 1238
    .local v1, "tv":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1239
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1241
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSearchIndexProvider(Ljava/lang/Class;)Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 884
    :try_start_0
    const-string v3, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 885
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 899
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Index"

    const-string v5, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    move-object v3, v4

    .line 899
    goto :goto_0

    .line 888
    :catch_1
    move-exception v2

    .line 889
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "Index"

    const-string v5, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 891
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Index"

    const-string v5, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 894
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Index"

    const-string v5, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Lcom/lenovo/settings/search/IndexDatabaseHelper;->getInstance()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "provider"    # Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p9, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_1

    .line 1013
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    return-void

    .line 1017
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v24

    .line 1019
    .local v24, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    if-eqz v24, :cond_4

    .line 1020
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 1021
    .local v25, "rawSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 1022
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .line 1025
    .local v23, "raw":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1021
    :cond_2
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1029
    :cond_3
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1033
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->enabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v3 .. v20}, Lcom/lenovo/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 1052
    .end local v21    # "i":I
    .end local v23    # "raw":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    .end local v25    # "rawSize":I
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v26

    .line 1054
    .local v26, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    if-eqz v26, :cond_0

    .line 1055
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 1056
    .local v27, "resSize":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 1057
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    .line 1060
    .local v22, "item":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1056
    :cond_5
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 1063
    :cond_6
    move-object/from16 v0, v22

    iget v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    if-lez v3, :cond_5

    .line 1067
    move-object/from16 v0, v22

    iget v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    if-nez v3, :cond_7

    move/from16 v9, p6

    .line 1068
    .local v9, "itemIconResId":I
    :goto_4
    move-object/from16 v0, v22

    iget v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    if-nez v3, :cond_8

    move/from16 v10, p7

    .line 1069
    .local v10, "itemRank":I
    :goto_5
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v8, p5

    .line 1071
    .local v8, "itemClassName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v22

    iget v7, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/lenovo/settings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 1067
    .end local v8    # "itemClassName":Ljava/lang/String;
    .end local v9    # "itemIconResId":I
    .end local v10    # "itemRank":I
    :cond_7
    move-object/from16 v0, v22

    iget v9, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    goto :goto_4

    .line 1068
    .restart local v9    # "itemIconResId":I
    :cond_8
    move-object/from16 v0, v22

    iget v10, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    goto :goto_5

    .line 1069
    .restart local v10    # "itemRank":I
    :cond_9
    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_6
.end method

.method private indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "xmlResId"    # I
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "intentAction"    # Ljava/lang/String;
    .param p9, "intentTargetPackage"    # Ljava/lang/String;
    .param p10, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p11, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v42, 0x0

    .line 909
    .local v42, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v42

    .line 913
    :cond_0
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    .local v43, "type":I
    const/4 v3, 0x1

    move/from16 v0, v43

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v43

    if-ne v0, v3, :cond_0

    .line 917
    :cond_1
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 918
    .local v40, "nodeName":Ljava/lang/String;
    const-string v3, "PreferenceScreen"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 919
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    .end local v40    # "nodeName":Ljava/lang/String;
    .end local v43    # "type":I
    :catch_0
    move-exception v39

    .line 998
    .local v39, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    .end local v39    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v42, :cond_2

    .line 1003
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 924
    .restart local v40    # "nodeName":Ljava/lang/String;
    .restart local v43    # "type":I
    :cond_3
    :try_start_2
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v41

    .line 925
    .local v41, "outerDepth":I
    invoke-static/range {v42 .. v42}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v38

    .line 927
    .local v38, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 929
    .local v11, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 936
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 937
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 938
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 939
    .local v7, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 941
    .local v14, "keywords":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/lenovo/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 948
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    const/4 v3, 0x1

    move/from16 v0, v43

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    move/from16 v0, v43

    if-ne v0, v3, :cond_5

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v41

    if-le v3, v0, :cond_9

    .line 949
    :cond_5
    const/4 v3, 0x3

    move/from16 v0, v43

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    move/from16 v0, v43

    if-eq v0, v3, :cond_4

    .line 953
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 956
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 961
    .restart local v6    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 963
    .restart local v14    # "keywords":Ljava/lang/String;
    const-string v3, "PreferenceCategory"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 968
    const-string v3, "CheckBoxPreference"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 971
    .restart local v7    # "summary":Ljava/lang/String;
    const/4 v9, 0x0

    .line 973
    .local v9, "entries":Ljava/lang/String;
    const-string v3, "ListPreference"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    .line 978
    :cond_6
    const/4 v8, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/lenovo/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 999
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v9    # "entries":Ljava/lang/String;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v38    # "attrs":Landroid/util/AttributeSet;
    .end local v40    # "nodeName":Ljava/lang/String;
    .end local v41    # "outerDepth":I
    .end local v43    # "type":I
    :catch_1
    move-exception v39

    .line 1000
    .local v39, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 983
    .end local v39    # "e":Ljava/io/IOException;
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v14    # "keywords":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v38    # "attrs":Landroid/util/AttributeSet;
    .restart local v40    # "nodeName":Ljava/lang/String;
    .restart local v41    # "outerDepth":I
    .restart local v43    # "type":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 984
    .local v24, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    .line 986
    .local v25, "summaryOff":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 987
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 990
    :cond_8
    const/16 v26, 0x0

    const/16 v35, 0x1

    const/16 v37, -0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v6

    move-object/from16 v27, p5

    move-object/from16 v28, v11

    move/from16 v29, p6

    move/from16 v30, p7

    move-object/from16 v31, v14

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v36, v19

    invoke-direct/range {v20 .. v37}, Lcom/lenovo/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1002
    .end local v6    # "title":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v24    # "summaryOn":Ljava/lang/String;
    .end local v25    # "summaryOff":Ljava/lang/String;
    :cond_9
    if-eqz v42, :cond_a

    .line 1003
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1006
    :cond_a
    return-void
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableRaw;)V
    .locals 19
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "raw"    # Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .prologue
    .line 797
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    :goto_0
    return-void

    .line 801
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v10, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->iconResId:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->rank:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->enabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->userId:I

    move/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lcom/lenovo/settings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "sir"    # Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p4, "nonIndexableKeysFromResource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_1

    .line 838
    const-string v1, "Index"

    const-string v2, "Cannot index a null resource!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    iget v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    sget v2, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    if-le v1, v2, :cond_3

    .line 845
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 846
    .local v15, "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 847
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 850
    :cond_2
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v12}, Lcom/lenovo/settings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 855
    .end local v15    # "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 856
    const-string v1, "Index"

    const-string v2, "Cannot index an empty Search Provider name!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 860
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/settings/search/Index;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 861
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_5

    .line 862
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchIndexableResource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should implement the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/lenovo/settings/search/Indexable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interface!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 869
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/settings/search/Index;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    move-result-object v7

    .line 870
    .local v7, "provider":Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;
    if-eqz v7, :cond_0

    .line 871
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 872
    .local v14, "providerNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 873
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 876
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->enabled:Z

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/lenovo/settings/search/Index;->indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/lenovo/settings/search/provider/SearchIndexableData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/search/provider/SearchIndexableData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    instance-of v0, p3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    .line 788
    check-cast p3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    .end local p3    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/settings/search/Index;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableResource;Ljava/util/Map;)V

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 789
    .restart local p3    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    :cond_1
    instance-of v0, p3, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    if-eqz v0, :cond_0

    .line 790
    check-cast p3, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local p3    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/search/Index;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableRaw;)V

    goto :goto_0
.end method

.method private static isIndexableClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/lenovo/settings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocaleAlreadyIndexed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 13
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 1246
    const/4 v10, 0x0

    .line 1247
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1248
    .local v11, "result":Z
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v0, "locale"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v0, " = "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-static {v12, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1253
    :try_start_0
    const-string v1, "prefs_index"

    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1255
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1256
    .local v9, "count":I
    const/4 v0, 0x1

    if-lt v9, v0, :cond_1

    const/4 v11, 0x1

    .line 1258
    :goto_0
    if-eqz v10, :cond_0

    .line 1259
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1262
    :cond_0
    return v11

    .line 1256
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1258
    .end local v9    # "count":I
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 1259
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 416
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 417
    .local v0, "authority":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 419
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v4

    .line 423
    :cond_1
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 424
    .local v2, "readPermission":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 426
    .local v3, "writePermission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 430
    const-string v5, "com.lenovo.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.lenovo.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 435
    const-string v4, "Index"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isWellKnownProvider."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1103
    if-eqz p0, :cond_0

    const-string v0, "\u2011"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1107
    if-eqz p0, :cond_0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "normalized":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/settings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1107
    .end local v0    # "nohyphen":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateInternal()V
    .locals 5

    .prologue
    .line 595
    iget-object v3, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    monitor-enter v3

    .line 596
    :try_start_0
    new-instance v1, Lcom/lenovo/settings/search/Index$UpdateIndexTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;-><init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$1;)V

    .line 597
    .local v1, "task":Lcom/lenovo/settings/search/Index$UpdateIndexTask;
    iget-object v2, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/lenovo/settings/search/Index$UpdateData;->copy()Lcom/lenovo/settings/search/Index$UpdateData;

    move-result-object v0

    .line 598
    .local v0, "copy":Lcom/lenovo/settings/search/Index$UpdateData;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/lenovo/settings/search/Index$UpdateData;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 599
    iget-object v2, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    invoke-virtual {v2}, Lcom/lenovo/settings/search/Index$UpdateData;->clear()V

    .line 600
    monitor-exit v3

    .line 601
    return-void

    .line 600
    .end local v0    # "copy":Lcom/lenovo/settings/search/Index$UpdateData;
    .end local v1    # "task":Lcom/lenovo/settings/search/Index$UpdateIndexTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "updatedTitle"    # Ljava/lang/String;
    .param p4, "normalizedTitle"    # Ljava/lang/String;
    .param p5, "updatedSummaryOn"    # Ljava/lang/String;
    .param p6, "normalizedSummaryOn"    # Ljava/lang/String;
    .param p7, "updatedSummaryOff"    # Ljava/lang/String;
    .param p8, "normalizedSummaryOff"    # Ljava/lang/String;
    .param p9, "entries"    # Ljava/lang/String;
    .param p10, "className"    # Ljava/lang/String;
    .param p11, "screenTitle"    # Ljava/lang/String;
    .param p12, "iconResId"    # I
    .param p13, "rank"    # I
    .param p14, "keywords"    # Ljava/lang/String;
    .param p15, "intentAction"    # Ljava/lang/String;
    .param p16, "intentTargetPackage"    # Ljava/lang/String;
    .param p17, "intentTargetClass"    # Ljava/lang/String;
    .param p18, "enabled"    # Z
    .param p19, "key"    # Ljava/lang/String;
    .param p20, "userId"    # I

    .prologue
    .line 1121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1127
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1131
    .local v1, "docId":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1132
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "docid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1133
    const-string v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v4, "data_rank"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    const-string v4, "data_title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v4, "data_title_normalized"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v4, "data_summary_on"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v4, "data_summary_on_normalized"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v4, "data_summary_off"

    invoke-virtual {v3, v4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v4, "data_summary_off_normalized"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v4, "data_entries"

    invoke-virtual {v3, v4, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v4, "data_keywords"

    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v4, "class_name"

    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v4, "screen_title"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v4, "intent_action"

    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v4, "intent_target_package"

    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v4, "intent_target_class"

    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v4, "icon"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1149
    const-string v4, "enabled"

    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1150
    const-string v4, "data_key_reference"

    move-object/from16 v0, p19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v4, "user_id"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    const-string v4, "prefs_index"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 21
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summaryOn"    # Ljava/lang/String;
    .param p5, "summaryOff"    # Ljava/lang/String;
    .param p6, "entries"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "screenTitle"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "rank"    # I
    .param p11, "keywords"    # Ljava/lang/String;
    .param p12, "intentAction"    # Ljava/lang/String;
    .param p13, "intentTargetPackage"    # Ljava/lang/String;
    .param p14, "intentTargetClass"    # Ljava/lang/String;
    .param p15, "enabled"    # Z
    .param p16, "key"    # Ljava/lang/String;
    .param p17, "userId"    # I

    .prologue
    .line 1086
    invoke-static/range {p3 .. p3}, Lcom/lenovo/settings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, "updatedTitle":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/lenovo/settings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1088
    .local v5, "updatedSummaryOn":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/lenovo/settings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1090
    .local v7, "updatedSummaryOff":Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1091
    .local v4, "normalizedTitle":Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1092
    .local v6, "normalizedSummaryOn":Ljava/lang/String;
    invoke-static {v7}, Lcom/lenovo/settings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "normalizedSummaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    .line 1094
    invoke-direct/range {v0 .. v20}, Lcom/lenovo/settings/search/Index;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1100
    return-void
.end method


# virtual methods
.method public addFromRemoteProvider(Ljava/lang/String;)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 459
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.lenovo.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v7, v14}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 463
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 464
    .local v1, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, "selfPkgName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    .line 466
    .local v12, "size":I
    const/4 v5, 0x0

    .line 467
    .local v5, "hasSearchIndexableProvider":Z
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_0
    if-ge v9, v12, :cond_4

    .line 468
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 469
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v10, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 470
    .local v10, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 467
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 474
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/lenovo/settings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 478
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v13, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 480
    .local v2, "authority":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    .line 482
    .local v3, "context":Landroid/content/Context;
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v2}, Lcom/lenovo/settings/search/Index;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10, v2}, Lcom/lenovo/settings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v3    # "context":Landroid/content/Context;
    :goto_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 493
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Index from provider: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " completed. Force stop process: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    :cond_2
    :goto_4
    const/4 v5, 0x1

    goto :goto_1

    .line 480
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_2

    .line 486
    :catch_0
    move-exception v4

    .line 487
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 497
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 498
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 504
    .end local v2    # "authority":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/search/Index;->updateInternal()V

    .line 507
    :cond_5
    return-void
.end method

.method public addIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/settings/search/provider/SearchIndexableData;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addIndexableData([Lcom/lenovo/settings/search/provider/SearchIndexableResource;)V
    .locals 5
    .param p1, "array"    # [Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    .prologue
    .line 389
    iget-object v3, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    monitor-enter v3

    .line 390
    :try_start_0
    array-length v0, p1

    .line 391
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 392
    iget-object v2, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    iget-object v2, v2, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_0
    monitor-exit v3

    .line 395
    return-void

    .line 394
    .end local v0    # "count":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/lenovo/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSavedQuery(Ljava/lang/String;)J
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 285
    new-instance v1, Lcom/lenovo/settings/search/Index$SaveSearchQueryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/settings/search/Index$SaveSearchQueryTask;-><init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$1;)V

    .line 286
    .local v1, "task":Lcom/lenovo/settings/search/Index$SaveSearchQueryTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/search/Index$SaveSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    :try_start_0
    invoke-virtual {v1}, Lcom/lenovo/settings/search/Index$SaveSearchQueryTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 294
    :goto_0
    return-wide v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 291
    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 294
    goto :goto_0
.end method

.method public addToNotKillWhiteList(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method public deleteFromRemoteProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 529
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, "res":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    iput-object p1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 531
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/search/Index;->deleteIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V

    .line 532
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 533
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->updateInternal()V

    .line 534
    return-void
.end method

.method public deleteIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/settings/search/provider/SearchIndexableData;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    monitor-exit v1

    .line 401
    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/Index;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 234
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 235
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/database/Cursor;

    .line 237
    .local v0, "cursors":[Landroid/database/Cursor;
    sget-object v5, Lcom/lenovo/settings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v9}, Lcom/lenovo/settings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "primarySql":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search primary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v8

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lenovo/settings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v8}, Lcom/lenovo/settings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string v5, " EXCEPT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "secondarySql":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search secondary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v9

    .line 251
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v5
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    .line 227
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 300
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "localeStr":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/search/Index;->isLocaleAlreadyIndexed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is already indexed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v2, Lcom/lenovo/settings/search/Index$QueryIndexTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/settings/search/Index$QueryIndexTask;-><init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/search/Index$QueryIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateFromClassNameResource(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .param p3, "includeInSearchResults"    # Z

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class name cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_0
    invoke-static {p1}, Lcom/lenovo/settings/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    move-result-object v0

    .line 550
    .local v0, "res":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    if-nez v0, :cond_1

    .line 551
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 555
    iput-boolean p3, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->enabled:Z

    .line 556
    if-eqz p2, :cond_2

    .line 557
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/search/Index;->deleteIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V

    .line 559
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/search/Index;->addIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V

    .line 560
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 561
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->updateInternal()V

    .line 562
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->enabled:Z

    goto :goto_0
.end method

.method public updateFromRemoteProvider(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 515
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 516
    .local v0, "res":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    const/16 v1, -0x111

    iput v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableData;->rank:I

    .line 517
    iput-boolean p2, v0, Lcom/lenovo/settings/search/provider/SearchIndexableData;->enabled:Z

    .line 518
    iput-object p1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 519
    invoke-virtual {p0, v0}, Lcom/lenovo/settings/search/Index;->addIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V

    .line 520
    iget-object v1, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 521
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->updateInternal()V

    .line 522
    return-void
.end method

.method public updateFromSearchIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/settings/search/provider/SearchIndexableData;

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index;->addIndexableData(Lcom/lenovo/settings/search/provider/SearchIndexableData;)V

    .line 567
    iget-object v0, p0, Lcom/lenovo/settings/search/Index;->mDataToProcess:Lcom/lenovo/settings/search/Index$UpdateData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 568
    invoke-direct {p0}, Lcom/lenovo/settings/search/Index;->updateInternal()V

    .line 569
    return-void
.end method
