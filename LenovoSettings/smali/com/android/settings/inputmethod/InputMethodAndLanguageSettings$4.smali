.class final Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v10, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    const v24, 0x7f0a0959

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 727
    .local v16, "screenTitle":Ljava/lang/String;
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 728
    .local v9, "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 729
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 730
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 731
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 732
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 733
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 737
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 738
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "phone_language"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 739
    const v24, 0x7f0a095d

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 740
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 741
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 742
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 743
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 748
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "spellcheckers_settings"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 749
    const v24, 0x7f0a0c0a

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 750
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 751
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 755
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 756
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "key_user_dictionary_settings"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 757
    const v24, 0x7f0a0974

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 758
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 759
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v8

    .line 764
    .local v8, "immValues":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 767
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 768
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 769
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "current_input_method"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 770
    const v24, 0x7f0a0998

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 771
    iput-object v6, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 772
    iput-object v6, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 773
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 774
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    const-string v24, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    .line 780
    .local v13, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v14

    .line 781
    .local v14, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v14, :cond_3

    const/4 v12, 0x0

    .line 782
    .local v12, "inputMethodCount":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v12, :cond_5

    .line 783
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 785
    .local v11, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v11, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v21

    .line 788
    .local v21, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v19

    .line 789
    .local v19, "subtypeCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 790
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    .line 791
    .local v18, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 792
    const/16 v24, 0x2c

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    :cond_2
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 796
    .local v20, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 789
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 781
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    .end local v11    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v12    # "inputMethodCount":I
    .end local v15    # "j":I
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v19    # "subtypeCount":I
    .end local v20    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v21    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_0

    .line 798
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "i":I
    .restart local v11    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v12    # "inputMethodCount":I
    .restart local v15    # "j":I
    .restart local v19    # "subtypeCount":I
    .restart local v21    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 800
    .local v22, "summary":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v17

    .line 801
    .local v17, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 805
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 807
    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 808
    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 809
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 810
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 814
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v15    # "j":I
    .end local v17    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v19    # "subtypeCount":I
    .end local v21    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v22    # "summary":Ljava/lang/String;
    :cond_5
    new-instance v23, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 815
    .local v23, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v23 .. v23}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_6

    .line 816
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 817
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "tts_settings"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 818
    const v24, 0x7f0a0aad

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 819
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 820
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_6
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 825
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "pointer_speed"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 826
    const v24, 0x7f0a096d

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 827
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 828
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    # invokes: Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 832
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 833
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "vibrate_input_devices"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 834
    const v24, 0x7f0a03f5

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 835
    const v24, 0x7f0a03f6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 836
    const v24, 0x7f0a03f6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 837
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 838
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_7
    return-object v10
.end method
