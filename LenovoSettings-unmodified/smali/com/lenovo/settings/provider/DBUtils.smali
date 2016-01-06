.class public Lcom/lenovo/settings/provider/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# static fields
.field private static final DEFAULT_APP_VERSION_CODE:I = 0x0

.field private static final SP_CURRENT_VERSION_CODE:Ljava/lang/String; = "current_version_code"

.field private static final SP_DEFAULT_HEAD_MAPPING_LOADED:Ljava/lang/String; = "default_header_mapping_loaded"

.field private static final SP_DEFAULT_PLUGIN_LOADED:Ljava/lang/String; = "plugin_item_loaded"

.field private static final TAG:Ljava/lang/String; = "DBUtils"

.field private static final TAG_HEAD_MAPPING:Ljava/lang/String; = "headers-mapping"

.field private static final sSharedPrefLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/settings/provider/DBUtils;->sSharedPrefLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPluginFromPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p0, p1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->loadSettingItemsFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 292
    .local v0, "pluginList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-static {p0, v0}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->bulkInsert(Landroid/content/Context;Ljava/util/Map;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 195
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 199
    :cond_1
    if-eq v1, v3, :cond_2

    .line 200
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "nodeName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_3
    return-void
.end method

.method public static convertBundleToUri(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v3, "uri":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_b

    .line 213
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 215
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    const/16 v0, 0x53

    .line 227
    .local v0, "entryType":C
    :goto_1
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    .end local v0    # "entryType":C
    :cond_1
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    const/16 v0, 0x42

    goto :goto_1

    :cond_2
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_3

    const/16 v0, 0x62

    goto :goto_1

    :cond_3
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_4

    const/16 v0, 0x63

    goto :goto_1

    :cond_4
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_5

    const/16 v0, 0x64

    goto :goto_1

    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    const/16 v0, 0x66

    goto :goto_1

    :cond_6
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    const/16 v0, 0x69

    goto :goto_1

    :cond_7
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_8

    const/16 v0, 0x6c

    goto :goto_1

    :cond_8
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_9

    const/16 v0, 0x73

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 236
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a
    const-string v5, "end"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static convertUriToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    const/4 v0, 0x0

    .line 287
    :cond_0
    return-object v0

    .line 246
    :cond_1
    const/4 v2, 0x0

    .line 248
    .local v2, "i":I
    const/4 v0, 0x0

    .line 249
    .local v0, "b":Landroid/os/Bundle;
    :goto_0
    const-string v6, "end"

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 250
    const/16 v6, 0x3d

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 251
    .local v1, "eq":I
    if-gez v1, :cond_2

    .line 252
    add-int/lit8 v1, v2, -0x1

    .line 254
    :cond_2
    const/16 v6, 0x3b

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 255
    .local v4, "semi":I
    if-ge v1, v4, :cond_4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 259
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .restart local v0    # "b":Landroid/os/Bundle;
    :cond_3
    const-string v6, "S."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 263
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_2
    add-int/lit8 v2, v4, 0x1

    .line 286
    goto :goto_0

    .line 255
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_1

    .line 264
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    const-string v6, "B."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 265
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 266
    :cond_6
    const-string v6, "b."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 267
    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_2

    .line 268
    :cond_7
    const-string v6, "c."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 269
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_2

    .line 270
    :cond_8
    const-string v6, "d."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 271
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 272
    :cond_9
    const-string v6, "f."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 273
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 274
    :cond_a
    const-string v6, "i."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 275
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 276
    :cond_b
    const-string v6, "l."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 277
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 278
    :cond_c
    const-string v6, "s."

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 279
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_2

    .line 281
    :cond_d
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "unknown EXTRA type"

    invoke-direct {v6, p0, v7, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6
.end method

.method public static initAllItems(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/lenovo/settings/provider/DBUtils;->resetDBFlagsIfVersionUpdated(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/settings/provider/DBUtils;->loadDefaultHeaderMappingsIfNecessary(Landroid/content/Context;I)V

    .line 50
    invoke-static {p0}, Lcom/lenovo/settings/provider/DBUtils;->loadPluginItemsIfNecessary(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->loadAllPluginItems(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method protected static loadDefaultHeaderMappings(Landroid/content/Context;I)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origResourceId"    # I

    .prologue
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, "headerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move v9, p1

    .line 110
    .local v9, "resId":I
    if-nez v9, :cond_0

    .line 111
    const v9, 0x7f050014

    .line 114
    :cond_0
    const/4 v6, 0x0

    .line 116
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 117
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 118
    .local v1, "attrs":Landroid/util/AttributeSet;
    const-string v12, "headers-mapping"

    invoke-static {v6, v12}, Lcom/lenovo/settings/provider/DBUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 121
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 122
    .local v5, "outerDepth":I
    const/4 v7, 0x1

    .line 124
    .local v7, "pos":I
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v12, 0x1

    if-eq v10, v12, :cond_3

    const/4 v12, 0x3

    if-ne v10, v12, :cond_2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v5, :cond_3

    .line 126
    :cond_2
    const/4 v12, 0x2

    if-ne v10, v12, :cond_1

    .line 130
    sget-object v12, Lcom/android/settings/R$styleable;->HeaderMapping:[I

    invoke-virtual {p0, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 132
    .local v4, "id":I
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "prefKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 138
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "_headerId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v12, "_prefKey"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v12, "_pos"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    add-int/lit8 v7, v7, 0x1

    .line 147
    goto :goto_0

    .line 155
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "id":I
    .end local v8    # "prefKey":Ljava/lang/String;
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    if-eqz v6, :cond_4

    .line 156
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 160
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "outerDepth":I
    .end local v7    # "pos":I
    .end local v10    # "type":I
    :cond_4
    :goto_1
    invoke-static {p0, v3}, Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;->bulkInsert(Landroid/content/Context;Ljava/util/List;)I

    move-result v12

    return v12

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v12, "DBUtils"

    const-string v13, "Got exception parsing headermapping."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-eqz v6, :cond_4

    .line 156
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v12, "DBUtils"

    const-string v13, "Got exception parsing headermapping."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v6, :cond_4

    .line 156
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v12, "DBUtils"

    const-string v13, "Got exception parsing headermapping."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v6, :cond_4

    .line 156
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 155
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_5

    .line 156
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v12
.end method

.method public static final loadDefaultHeaderMappingsIfNecessary(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origResourceId"    # I

    .prologue
    .line 87
    sget-object v2, Lcom/lenovo/settings/provider/DBUtils;->sSharedPrefLock:Ljava/lang/Object;

    monitor-enter v2

    .line 88
    :try_start_0
    const-string v1, "default_header_mapping_loaded"

    invoke-static {p0, v1}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->getConfiguration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "headerMappingLoaded":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 92
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :try_start_2
    monitor-exit v2

    .line 104
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 100
    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/settings/provider/DBUtils;->loadDefaultHeaderMappings(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    const-string v1, "default_header_mapping_loaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->saveConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "headerMappingLoaded":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static loadPluginItems(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->loadAllSettingItems(Landroid/content/Context;)Ljava/util/Hashtable;

    move-result-object v0

    .line 188
    .local v0, "pluginList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-static {p0, v0}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->bulkInsert(Landroid/content/Context;Ljava/util/Map;)I

    move-result v1

    return v1
.end method

.method public static final loadPluginItemsIfNecessary(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v2, Lcom/lenovo/settings/provider/DBUtils;->sSharedPrefLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    const-string v1, "plugin_item_loaded"

    invoke-static {p0, v1}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->getConfiguration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "pluginLoaded":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :try_start_2
    monitor-exit v2

    .line 182
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/lenovo/settings/provider/DBUtils;->loadPluginItems(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_1

    .line 178
    invoke-static {}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->releaseHeaderPluginItems()V

    .line 179
    const-string v1, "plugin_item_loaded"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->saveConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 181
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "pluginLoaded":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static removePluginByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p0, p1}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->removeByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resetDBFlagsIfVersionUpdated(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "currentVersion":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const-string v4, "current_version_code"

    invoke-static {p0, v4}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->getConfiguration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "savedVersion":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "savedVersionCode":I
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 72
    :goto_1
    if-ne v0, v3, :cond_0

    .line 83
    .end local v3    # "savedVersionCode":I
    :goto_2
    return-void

    .line 60
    .end local v2    # "savedVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "savedVersion":Ljava/lang/String;
    .restart local v3    # "savedVersionCode":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lenovo/settings/recentsettings/provider/RecentSettingsDbProvider;->CONTENT_URI_RECENT_SETTING:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    .end local v3    # "savedVersionCode":I
    :cond_1
    const-string v4, "DBUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found app is updated from version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v4, "current_version_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/lenovo/settings/provider/SettingsDB$Configuration;->saveConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_2

    .line 70
    .restart local v3    # "savedVersionCode":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static updatePluginByPackage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 300
    invoke-static {p0, p1, p2}, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->setItemsVisibleByPackage(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
