.class Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->handleDataReductionProxyPreferenceChange()Z
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)Z

    move-result v0

    return v0
.end method
