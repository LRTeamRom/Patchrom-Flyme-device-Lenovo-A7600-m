.class public Lcom/lenovo/settings/LenovoApplication;
.super Landroid/app/Application;
.source "LenovoApplication.java"


# static fields
.field private static sSharedPreferencesKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "com.lenovo.settings.prefs"

    sput-object v0, Lcom/lenovo/settings/LenovoApplication;->sSharedPreferencesKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/settings/LenovoApplication;->sSharedPreferencesKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/lenovo/settings/provider/DBUtils;->initAllItems(Landroid/content/Context;)V

    .line 16
    return-void
.end method
