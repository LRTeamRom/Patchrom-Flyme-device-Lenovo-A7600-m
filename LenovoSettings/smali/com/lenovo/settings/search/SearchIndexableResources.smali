.class public final Lcom/lenovo/settings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ab

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020084

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ba

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200bc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ce

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200d5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a9

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200cb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const-class v3, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/lenovo/settings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/lenovo/settings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
