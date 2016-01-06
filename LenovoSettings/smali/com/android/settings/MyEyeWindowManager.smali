.class public final Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;
.super Ljava/lang/Object;
.source "MyEyeWindowManager.java"


# static fields
.field private static eyeView:Landroid/view/View;

.field private static eyeViewParams:Landroid/view/WindowManager$LayoutParams;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    .line 17
    sput-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 18
    sput-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEyeView(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    :try_start_0
    sget-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 40
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    .line 32
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 33
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-static {p0, v1}, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->getParams(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 34
    sget-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    sget-object v3, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    sget-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/16 v4, 0x8c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    sget-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    sget-object v3, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "eyeView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getParams(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    const/4 v1, -0x1

    .line 43
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 47
    .local v2, "statusBarHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const/16 v4, 0x120

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 52
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 54
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 55
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static removeEyeView(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    :try_start_0
    sget-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 66
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 67
    .local v1, "windowManager":Landroid/view/WindowManager;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 68
    const/4 v2, 0x0

    sput-object v2, Lcom/flyme/deviceoriginalsettings/MyEyeWindowManager;->eyeView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "eyeView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
