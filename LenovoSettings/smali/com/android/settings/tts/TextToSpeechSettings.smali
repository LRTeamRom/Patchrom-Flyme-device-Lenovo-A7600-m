.class public Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;


# static fields
.field private static final DBG:Z = false

.field private static final GET_SAMPLE_TEXT:I = 0x7bf

.field private static final KEY_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final KEY_ENGINE_PREFERENCE_SECTION:Ljava/lang/String; = "tts_engine_preference_section"

.field private static final KEY_PLAY_EXAMPLE:Ljava/lang/String; = "tts_play_example"

.field private static final KEY_STATUS:Ljava/lang/String; = "tts_status"

.field private static final TAG:Ljava/lang/String; = "TextToSpeechSettings"

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9


# instance fields
.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mEngineStatus:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mSampleText:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/16 v0, 0x64

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 112
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 113
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 146
    new-instance v0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private checkDefaultLocale()V
    .locals 5

    .prologue
    .line 278
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 279
    .local v1, "defaultLocale":Ljava/util/Locale;
    if-nez v1, :cond_1

    .line 280
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get default language from engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 282
    const v2, 0x7f0a0ac9

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 288
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 289
    .local v0, "defaultAvailable":I
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getSampleText()V

    goto :goto_0
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayNetworkAlert()V
    .locals 4

    .prologue
    .line 530
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 532
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0ac4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 534
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 535
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 538
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 539
    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 297
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 333
    :goto_0
    return v5

    .line 300
    :cond_1
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 303
    .local v0, "defaultAvailable":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "defaultLocaleStr":Ljava/lang/String;
    const/4 v4, 0x1

    .line 305
    .local v4, "notInAvailableLangauges":Z
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_2
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_3
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    .local v3, "loc":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 314
    const/4 v4, 0x0

    .line 319
    .end local v3    # "loc":Ljava/lang/String;
    :cond_5
    const/4 v7, -0x2

    if-eq v0, v7, :cond_6

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    if-eqz v4, :cond_7

    .line 323
    :cond_6
    const v5, 0x7f0a0ac9

    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 324
    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    move v5, v6

    .line 325
    goto/16 :goto_0

    .line 327
    :cond_7
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 328
    const v6, 0x7f0a0ac8

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 332
    :goto_1
    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto/16 :goto_0

    .line 330
    :cond_8
    const v6, 0x7f0a0ac7

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    goto :goto_1
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 379
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 380
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "currentLang":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "strings":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "langs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 387
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    aget-object v4, v3, v1

    .line 392
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "langs":[Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 386
    .restart local v0    # "currentLang":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "langs":[Ljava/lang/String;
    .restart local v3    # "strings":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "currentLang":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "langs":[Ljava/lang/String;
    .end local v3    # "strings":[Ljava/lang/String;
    :cond_1
    const v4, 0x7f0a0ac5

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 511
    .local v2, "resources":Landroid/content/res/Resources;
    const v5, 0x7f070026

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "specialLocaleCodes":[Ljava/lang/String;
    const v5, 0x7f070027

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "specialLocaleNames":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 519
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 520
    aget-object v5, v4, v1

    .line 524
    :goto_1
    return-object v5

    .line 518
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getSampleText()V
    .locals 6

    .prologue
    .line 343
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "currentEngine":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "language"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v3, "country"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v3, "variant"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const/16 v3, 0x7bf

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 9

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 234
    .local v6, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v7, "tts_default_rate"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v8, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 240
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    if-eqz v7, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .end local v0    # "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 252
    .restart local v0    # "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 254
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v4

    .line 255
    .local v4, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 256
    .local v2, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7, v2, p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    .line 258
    .local v3, "enginePref":Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 235
    .end local v0    # "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .end local v2    # "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v3    # "enginePref":Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
    .end local v4    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v7, 0x64

    iput v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    .line 248
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 261
    .restart local v4    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 397
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "sample":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 408
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_0
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 418
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_1
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 633
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "engine":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 636
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    if-nez p1, :cond_2

    .line 641
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 648
    const-string v5, "availableVoices"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 650
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v5, :cond_4

    .line 651
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no available voices found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 657
    :goto_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 658
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getSampleText()V

    .line 661
    :cond_3
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 662
    .local v1, "engineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 663
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 664
    .local v4, "p":Landroid/preference/Preference;
    instance-of v5, v4, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;

    if-eqz v5, :cond_5

    move-object v2, v4

    .line 665
    check-cast v2, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;

    .line 666
    .local v2, "enginePref":Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 667
    invoke-virtual {v2, p1}, Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    goto :goto_0

    .line 655
    .end local v1    # "engineCount":I
    .end local v2    # "enginePref":Lcom/flyme/deviceoriginalsettings/tts/TtsEnginePreference;
    .end local v3    # "i":I
    .end local v4    # "p":Landroid/preference/Preference;
    :cond_4
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateDefaultLocalePref(Ljava/util/List;)V

    goto :goto_1

    .line 662
    .restart local v1    # "engineCount":I
    .restart local v3    # "i":I
    .restart local v4    # "p":Landroid/preference/Preference;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0
.end method

.method private speakSampleText()V
    .locals 5

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    .line 426
    .local v0, "networkRequired":Z
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 428
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    const-string v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 436
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v2, "TextToSpeechSettings"

    const-string v3, "Network required for sample synthesis for requested language"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 9
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const v1, 0x7f0a0aad

    .line 546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 547
    const v0, 0x7f0a0aca

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 554
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 571
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 573
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 561
    :catch_0
    move-exception v8

    .line 562
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "availableLangs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    const/4 v0, 0x0

    .line 705
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 706
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 709
    :cond_2
    const/4 v3, 0x0

    .line 710
    .local v3, "localeIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 711
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 712
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 713
    move v3, v1

    .line 710
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 717
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_4
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 718
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 719
    .restart local v2    # "locale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    .line 720
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_5

    .end local v2    # "locale":Ljava/util/Locale;
    :goto_2
    invoke-virtual {v4, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0

    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_2
.end method

.method private updateEngineStatus(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 496
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 489
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 490
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 492
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 371
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 372
    invoke-direct {p0, p2, p3}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 374
    invoke-direct {p0, p3}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v0, 0x7f050055

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 160
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 161
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 164
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 166
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 168
    const-string v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    .line 169
    const v0, 0x7f0a0aca

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    .line 171
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 172
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 174
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 175
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->initSettings()V

    .line 176
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 227
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 217
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v1, 0x7f0a0aad

    .line 440
    const-string v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 444
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 449
    :catch_0
    move-exception v8

    .line 450
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v0, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->speakSampleText()V

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 182
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 186
    .local v0, "ttsDefaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 188
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    goto :goto_0
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 607
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 609
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 611
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 687
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    .line 693
    return-void
.end method
