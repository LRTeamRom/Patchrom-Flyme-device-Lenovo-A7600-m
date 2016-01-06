.class public Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;


# static fields
.field private static final LINE_HEIGHT_RATIO:F = 0.0533f

.field private static final PREF_BACKGROUND_COLOR:Ljava/lang/String; = "captioning_background_color"

.field private static final PREF_BACKGROUND_OPACITY:Ljava/lang/String; = "captioning_background_opacity"

.field private static final PREF_CUSTOM:Ljava/lang/String; = "custom"

.field private static final PREF_EDGE_COLOR:Ljava/lang/String; = "captioning_edge_color"

.field private static final PREF_EDGE_TYPE:Ljava/lang/String; = "captioning_edge_type"

.field private static final PREF_FONT_SIZE:Ljava/lang/String; = "captioning_font_size"

.field private static final PREF_FOREGROUND_COLOR:Ljava/lang/String; = "captioning_foreground_color"

.field private static final PREF_FOREGROUND_OPACITY:Ljava/lang/String; = "captioning_foreground_opacity"

.field private static final PREF_LOCALE:Ljava/lang/String; = "captioning_locale"

.field private static final PREF_PRESET:Ljava/lang/String; = "captioning_preset"

.field private static final PREF_TYPEFACE:Ljava/lang/String; = "captioning_typeface"

.field private static final PREF_WINDOW_COLOR:Ljava/lang/String; = "captioning_window_color"

.field private static final PREF_WINDOW_OPACITY:Ljava/lang/String; = "captioning_window_opacity"


# instance fields
.field private mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/preference/ListPreference;

.field private mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

.field private mLocale:Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;

.field private mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mTypeface:Landroid/preference/ListPreference;

.field private mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 10
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "previewWindow"    # Landroid/view/View;
    .param p3, "styleId"    # I

    .prologue
    const v9, 0x7f0a0a14

    .line 197
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 202
    .local v2, "fontScale":F
    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    div-float v6, v7, v8

    .line 206
    .local v6, "virtualHeight":F
    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 213
    .end local v6    # "virtualHeight":F
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 214
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    .line 215
    invoke-static {v0, v3, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 217
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 208
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 210
    .local v5, "textSize":F
    mul-float v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 219
    .end local v5    # "textSize":F
    .restart local v3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method private initializeAllPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 287
    const-string v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;

    .line 288
    const-string v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    .line 290
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 291
    .local v8, "res":Landroid/content/res/Resources;
    const v9, 0x7f070042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 292
    .local v7, "presetValues":[I
    const v9, 0x7f070041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "presetTitles":[Ljava/lang/String;
    const-string v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    .line 294
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;->setValues([I)V

    .line 295
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 297
    const-string v9, "custom"

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    .line 298
    iput-boolean v12, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 300
    const v9, 0x7f07003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 301
    .local v3, "colorValues":[I
    const v9, 0x7f07003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "colorTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 303
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 304
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 306
    const v9, 0x7f070040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 307
    .local v5, "opacityValues":[I
    const v9, 0x7f07003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "opacityTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 310
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 311
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 313
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 314
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 315
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 318
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 319
    .local v1, "bgColorValues":[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 320
    .local v0, "bgColorTitles":[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 321
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    aput v11, v1, v11

    .line 323
    const v9, 0x7f0a0a17

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 324
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 325
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 326
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 328
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 329
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 330
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 332
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 333
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 334
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 336
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .line 337
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 338
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValues([I)V

    .line 340
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;

    .line 341
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    .line 342
    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v6, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 225
    .local v1, "activity":Landroid/app/Activity;
    new-instance v5, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    invoke-direct {v5, v1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 227
    .local v5, "toggleSwitch":Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 229
    .local v3, "padding":I
    invoke-virtual {v5, v6, v6, v3, v6}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setPaddingRelative(IIII)V

    .line 231
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 232
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 234
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v4, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 237
    .local v4, "params":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v5, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 239
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    .line 240
    .local v2, "enabled":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 241
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v7, :cond_0

    .line 242
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 244
    :cond_0
    invoke-virtual {v5, v2}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 245
    new-instance v6, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v5, v6}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 270
    return-void

    .line 242
    :cond_1
    const/4 v6, 0x4

    goto :goto_0
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 346
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 347
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 348
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 349
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 350
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 351
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 352
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 353
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 355
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    return-void
.end method

.method private mergeColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;)I
    .locals 5
    .param p1, "color"    # Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 399
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 401
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 402
    const v3, 0xffff00

    and-int/2addr v3, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    or-int v2, v3, v4

    .line 406
    .local v2, "value":I
    :goto_0
    return v2

    .line 404
    .end local v2    # "value":I
    :cond_0
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private parseColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;I)V
    .locals 4
    .param p1, "color"    # Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;
    .param p3, "value"    # I

    .prologue
    const/high16 v3, -0x1000000

    .line 386
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 393
    .local v1, "opacityValue":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValue(I)V

    .line 394
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValue(I)V

    .line 395
    return-void

    .line 390
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_0
    or-int v0, p3, v3

    .line 391
    .restart local v0    # "colorValue":I
    and-int v1, p3, v3

    .restart local v1    # "opacityValue":I
    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 10

    .prologue
    const v9, 0x7f0a0a13

    .line 165
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 172
    .local v4, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_0

    .line 173
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 174
    .local v6, "styleId":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 176
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 177
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_2

    .line 178
    invoke-static {v0, v2, v9}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 180
    .local v3, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v3    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    .line 186
    .local v5, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 182
    .end local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_2
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1

    .line 189
    .restart local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_3
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 190
    .local v1, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 411
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 418
    :cond_0
    :goto_1
    return-void

    .end local v0    # "customPreset":Z
    :cond_1
    move v0, v2

    .line 410
    goto :goto_0

    .line 414
    .restart local v0    # "customPreset":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 416
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 9

    .prologue
    .line 361
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v3

    .line 362
    .local v3, "preset":I
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    invoke-virtual {v6, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;->setValue(I)V

    .line 364
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 365
    .local v2, "fontSize":F
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 368
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 369
    .local v0, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;

    iget v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 370
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;->setValue(I)V

    .line 372
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;I)V

    .line 373
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;I)V

    .line 374
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;I)V

    .line 376
    iget-object v5, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 377
    .local v5, "rawTypeface":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-nez v5, :cond_0

    const-string v5, ""

    .end local v5    # "rawTypeface":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 379
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "rawLocale":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;

    if-nez v4, :cond_1

    const-string v4, ""

    .end local v4    # "rawLocale":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v4}, Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 381
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 156
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->installActionBarToggleSwitch()V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 106
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 107
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 108
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 109
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 110
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 116
    const v2, 0x7f040018

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 162
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 450
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 451
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 462
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 463
    const/4 v1, 0x1

    return v1

    .line 453
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 454
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 457
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/flyme/deviceoriginalsettings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 458
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/flyme/deviceoriginalsettings/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;)I

    move-result v1

    .line 425
    .local v1, "merged":I
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    .end local v1    # "merged":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 445
    return-void

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;)I

    move-result v1

    .line 429
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 431
    .end local v1    # "merged":I
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_5

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_6

    .line 432
    :cond_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;)I

    move-result v1

    .line 433
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 435
    .end local v1    # "merged":I
    :cond_6
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/flyme/deviceoriginalsettings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_7

    .line 436
    const-string v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 437
    :cond_7
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/flyme/deviceoriginalsettings/accessibility/PresetPreference;

    if-ne v2, p1, :cond_8

    .line 438
    const-string v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 440
    :cond_8
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/flyme/deviceoriginalsettings/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    .line 441
    const-string v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 136
    .local v0, "enabled":Z
    const v1, 0x7f0e0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 137
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 139
    const v1, 0x7f0e0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 140
    const v1, 0x7f0e0036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 148
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
