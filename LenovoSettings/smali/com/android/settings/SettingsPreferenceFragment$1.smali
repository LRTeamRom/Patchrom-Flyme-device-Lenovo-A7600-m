.class Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$position:I

    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 160
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method