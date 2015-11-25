.class public abstract Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
.super Ljava/lang/Object;
.source "LightAdjustProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$1;,
        Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "AUTOADJUST"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field private static mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field private static mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field static mScreenAutoBrightnessAdjustment:F


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mLux:[I

.field protected final mResources:Landroid/content/res/Resources;

.field private mScreenBrightnessRangeMaximum:I

.field private mScreenBrightnessRangeMinimum:I

.field public mSmoothAdjustLevel:I

.field protected mSpline:Landroid/util/Spline;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    .line 24
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    .line 38
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mType:I

    .line 121
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    .line 123
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->init()V

    .line 124
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method protected static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 77
    :try_start_0
    array-length v2, p1

    .line 78
    .local v2, "n":I
    new-array v5, v2, [F

    .line 79
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 80
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 81
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 82
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 83
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 87
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 88
    const-string v7, "AUTOADJUST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 90
    const-string v7, "AUTOADJUST"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    mul-float/2addr v4, v12

    goto :goto_1

    .line 94
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "AUTOADJUST"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$1;->$SwitchMap$com$android$server$display$brightnesscontroller$Profile$LightAdjustProfile$PROFILE_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    .line 60
    :goto_1
    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    .line 52
    :cond_1
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x107003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    .line 129
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x10e004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v2

    .line 132
    .local v2, "screenBrightnessSettingMinimum":I
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x10e004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v1

    .line 135
    .local v1, "mScreenBrightnessDimConfig":I
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x10e0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v0

    .line 138
    .local v0, "mScreenBrightnessDarkConfig":I
    if-le v0, v1, :cond_0

    .line 139
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessDim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    if-le v0, v1, :cond_1

    .line 144
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessSettingMinimum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMinimum:I

    .line 154
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMaximum:I

    .line 155
    return-void
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBrightnessValue(F)I
    .locals 8
    .param p1, "mAmbientLux"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 158
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    invoke-virtual {v4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 160
    .local v3, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 162
    .local v1, "gamma":F
    sget v4, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 164
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40800000    # -1.0f

    sget v6, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    neg-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 166
    .local v0, "adjGamma":F
    mul-float/2addr v1, v0

    .line 167
    sget-boolean v4, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 168
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness: adjGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "adjGamma":F
    :cond_0
    cmpl-float v4, v1, v7

    if-eqz v4, :cond_1

    .line 173
    move v2, v3

    .line 174
    .local v2, "in":F
    invoke-static {v3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 175
    sget-boolean v4, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 176
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness: gamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", in="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v2    # "in":F
    :cond_1
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampScreenBrightness(I)I

    move-result v4

    .line 183
    .end local v1    # "gamma":F
    .end local v3    # "value":F
    :goto_0
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mType:I

    return v0
.end method

.method protected initSmoothAdjustLevel()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget v0, v1, v2

    .line 190
    .local v0, "lux":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    .line 192
    .end local v0    # "lux":I
    :cond_0
    return-void
.end method

.method public setTemporaryScreenAutoBrightnessAdjSettingOverride(F)Z
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 101
    sget v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102
    sput p1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
