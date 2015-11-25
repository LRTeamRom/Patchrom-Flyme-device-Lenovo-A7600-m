.class public Lcom/mediatek/xcap/client/XcapDebugParam;
.super Ljava/lang/Object;
.source "XcapDebugParam.java"


# static fields
.field private static final TAG_ENABLE_GBA_FORCE_RUN:Ljava/lang/String; = "EnableGbaForceRun"

.field private static final TAG_ENABLE_GBA_TRUST_ALL:Ljava/lang/String; = "EnableGbaTrustAll"

.field private static final TAG_GBA_BSF_SERVER_URL:Ljava/lang/String; = "BsfServerUrl"

.field private static final TAG_ROOT:Ljava/lang/String; = "DebugParam"

.field private static final TAG_XCAP_DOCUMENT_NAME:Ljava/lang/String; = "XcapDocumentName"

.field private static final TAG_XCAP_ENABLE_HTTP_LOG:Ljava/lang/String; = "EnableHttpLog"

.field private static final TAG_XCAP_ENABLE_PREDEFINED_SIMSERV_QUERY_RESULT:Ljava/lang/String; = "EnablePredefinedSimservQueryResult"

.field private static final TAG_XCAP_ENABLE_PREDEFINED_SIMSERV_SETTING:Ljava/lang/String; = "EnablePredefinedSimservSetting"

.field private static final TAG_XCAP_ENABLE_SIMSERV_QUERY_WHOLE:Ljava/lang/String; = "EnableSimservQueryWhole"

.field private static final TAG_XCAP_ENABLE_TRUST_ALL:Ljava/lang/String; = "EnableXcapTrustAll"

.field private static final TAG_XCAP_HTTP_DIGEST_PASSWORD:Ljava/lang/String; = "HttpDigestPassword"

.field private static final TAG_XCAP_HTTP_DIGEST_USERNAME:Ljava/lang/String; = "HttpDigestUsername"

.field private static final TAG_XCAP_ROOT:Ljava/lang/String; = "XcapRoot"

.field private static final TAG_XCAP_USER_AGENT:Ljava/lang/String; = "XcapUserAgent"

.field private static final TAG_XCAP_XUI:Ljava/lang/String; = "XcapXui"

.field private static sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;


# instance fields
.field private mEnableHttpLog:Z

.field private mEnablePredefinedSimservQueryResult:Z

.field private mEnablePredefinedSimservSetting:Z

.field private mEnableSimservQueryWhole:Z

.field private mEnableXcapTrustAll:Z

.field private mHttpDigestPassword:Ljava/lang/String;

.field private mHttpDigestUsername:Ljava/lang/String;

.field private mXcapDocumentName:Ljava/lang/String;

.field private mXcapRoot:Ljava/lang/String;

.field private mXcapUserAgent:Ljava/lang/String;

.field private mXcapXui:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 94
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 95
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 96
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 97
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    return-void
.end method

.method public static getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-direct {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;-><init>()V

    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 109
    :cond_0
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method private instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 7
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 184
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 186
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v4, "XcapRoot"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 187
    .local v2, "node":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    .line 188
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 191
    :cond_0
    const-string v4, "XcapUserAgent"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 193
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 196
    :cond_1
    const-string v4, "XcapXui"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 197
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    .line 198
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 201
    :cond_2
    const-string v4, "HttpDigestUsername"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 202
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    .line 203
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 206
    :cond_3
    const-string v4, "HttpDigestPassword"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 207
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4

    .line 208
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 211
    :cond_4
    const-string v4, "EnablePredefinedSimservQueryResult"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_5

    .line 213
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 215
    iput-boolean v6, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 221
    .end local v3    # "str":Ljava/lang/String;
    :cond_5
    :goto_0
    const-string v4, "EnablePredefinedSimservSetting"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 222
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_6

    .line 223
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 224
    .restart local v3    # "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 225
    iput-boolean v6, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 231
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v4, "EnableSimservQueryWhole"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 232
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_7

    .line 233
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 234
    .restart local v3    # "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 235
    iput-boolean v6, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 241
    .end local v3    # "str":Ljava/lang/String;
    :cond_7
    :goto_2
    const-string v4, "EnableHttpLog"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 242
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_8

    .line 243
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 245
    iput-boolean v6, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 251
    .end local v3    # "str":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v4, "EnableXcapTrustAll"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 252
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_9

    .line 253
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3    # "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 255
    iput-boolean v6, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 261
    .end local v3    # "str":Ljava/lang/String;
    :cond_9
    :goto_4
    const-string v4, "XcapDocumentName"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 262
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_a

    .line 263
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 266
    :cond_a
    const-string v4, "BsfServerUrl"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 267
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_b

    .line 268
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "gbaBsfServerUrl":Ljava/lang/String;
    const-string v4, "persist.gba.bsf.url"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v1    # "gbaBsfServerUrl":Ljava/lang/String;
    :cond_b
    const-string v4, "EnableGbaTrustAll"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 273
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_c

    .line 274
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 275
    .restart local v3    # "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 276
    const-string v4, "persist.gba.trustall"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v3    # "str":Ljava/lang/String;
    :cond_c
    :goto_5
    const-string v4, "EnableGbaForceRun"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 283
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_d

    .line 284
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3    # "str":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 286
    const-string v4, "gba.run"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v3    # "str":Ljava/lang/String;
    :cond_d
    :goto_6
    return-void

    .line 217
    .restart local v3    # "str":Ljava/lang/String;
    :cond_e
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    goto/16 :goto_0

    .line 227
    :cond_f
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    goto/16 :goto_1

    .line 237
    :cond_10
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    goto/16 :goto_2

    .line 247
    :cond_11
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    goto/16 :goto_3

    .line 257
    :cond_12
    iput-boolean v5, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    goto/16 :goto_4

    .line 277
    :cond_13
    const-string v4, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 278
    const-string v4, "persist.gba.trustall"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 287
    :cond_14
    const-string v4, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 288
    const-string v4, "gba.run"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 170
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 175
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 176
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 177
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 178
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 179
    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 180
    const-string v0, "simservs.xml"

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method public getEnableHttpLog()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    return v0
.end method

.method public getEnablePredefinedSimservQueryResult()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    return v0
.end method

.method public getEnablePredefinedSimservSetting()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    return v0
.end method

.method public getEnableSimservQueryWhole()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    return v0
.end method

.method public getEnableXcapTrustAll()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    return v0
.end method

.method public getHttpDigestPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpDigestUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapDocumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapXui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .locals 8

    .prologue
    .line 117
    const-string v7, "/data/misc/xcapconfig.xml"

    invoke-virtual {p0, v7}, Lcom/mediatek/xcap/client/XcapDebugParam;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "xmlContent":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 124
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 125
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5}, Lorg/xml/sax/InputSource;-><init>()V

    .line 126
    .local v5, "is":Lorg/xml/sax/InputSource;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 128
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 130
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v7, "DebugParam"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 131
    .local v1, "debugParamNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_0

    .line 132
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/xcap/client/XcapDebugParam;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 134
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "debugParamNode":Lorg/w3c/dom/NodeList;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v3

    .line 137
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 139
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0
.end method

.method public readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v5, ""

    .line 153
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 155
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 158
    .local v2, "dis":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buf":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 161
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "buf":Ljava/lang/String;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapDebugParam;->reset()V

    .line 163
    const/4 v6, 0x0

    .line 166
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "buf":Ljava/lang/String;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    move-object v6, v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mXcapRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mXcapUserAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mXcapXui: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHttpDigestUsername: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHttpDigestPassword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEnablePredefinedSimservQueryResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEnablePredefinedSimservSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEnableSimservQueryWhole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEnableHttpLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mEnableXcapTrustAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mXcapDocumentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
